#include "tt_procrastinate.h"


// OBJECT LIFE ************************************************************
tt_procrastinate::tt_procrastinate()										// Constructor		
{
	short i;
	for(i=0; i < k_num_temp_signals; i++)
		temp[i] = new tt_audio_signal(vectorsize);		// allocate temp signals
	
	buffersize_in_ms = 10000.0;
	
	window = new tt_buffer(512);
	wave1 = new tt_buffer_window(window);
	wave2 = new tt_buffer_window(window);
	offset = new tt_offset;
	modulo = new tt_onewrap;	
	finalmix = new tt_mixer_mono;
	
	for(i=0; i<4; i++){
		panner[i] = new tt_pan;
		gain[i] = new tt_gain;
		phasor[i] = new tt_phasor;
		scale[i] = new tt_gain;
		delay1[i] = new tt_delay(buffersize_in_ms);
		delay2[i] = new tt_delay(buffersize_in_ms);
		mixer[i] = new tt_mixer_mono;
	}
		
	// Set initial state
	for(i=0; i<4; i++){
		mixer[i]->set_attr(tt_mixer_mono::k_master_gain, 0.0);
		mixer[i]->set_attr(tt_mixer_mono::k_channel_gain, 0, -0.0);
		mixer[i]->set_attr(tt_mixer_mono::k_channel_gain, 1, -0.0);
	}
	offset->set_attr(tt_offset::k_offset_value, 0.5);
	window->fill(tt_buffer::k_padded_welch_512);

	// Set initial ranges (0 sets all 4)
	set_attr(k_gain_range, 0, -6.0, 0.0);
	set_attr(k_pan_range, 0, 0.25, 0.75);
	set_attr(k_shift_range,	0, 0.8, 1.2);
	set_attr(k_delay_range, 0, 500.0, 2000.0);
		
	finalmix->set_attr(tt_mixer_mono::k_master_gain, 0.0);
	for(i=0; i<4; i++)
		finalmix->set_attr(tt_mixer_mono::k_channel_gain, i, 0.0);
		
	// Default Settings
	for(i=0; i<4; i++){
		window_size_value[i] = 10000;
		shift_ratio_value[i] = 1.0;
		//set_attr(k_ratio, i, 1.0);
		//set_attr(k_windowsize, i, 1000.0f);
	}
	
	randomize_parameters();
}

tt_procrastinate::~tt_procrastinate()									// Destructor
{
	short i;
	
	delete wave1;
	delete wave2;
	delete offset;
	delete modulo;
	delete window;
	delete finalmix;

	for(i=0; i<4; i++){
		delete panner[i];
		delete gain[i];
		delete phasor[i];
		delete scale[i];
		delete delay1[i];
		delete delay2[i];
		delete mixer[i];
	}

	// FREE THE TEMP SIGNALS
	for(i=0; i<k_num_temp_signals; i++)
		delete temp[i];
}


// ATTRIBUTES ************************************************************
inline void tt_procrastinate::set_attr(tt_selector sel, short index, tt_attribute_value val)	// Set Attributes
{
	switch(sel){
		case k_ratio:
			shift_ratio_value[index] = val;
			phasor[index]->set_attr(tt_phasor::k_frequency, (-(shift_ratio_value[index] - 1.0)) * (1.0 / (window_size_value[index] * 0.001)));
			break;
		case k_windowsize:
			window_size_value[index] = clip(val, 1.0f, buffersize_in_ms - 1);
			scale[index]->set_attr(tt_gain::k_gain_direct, window_size_value[index]);
			set_attr(k_ratio, index, shift_ratio_value[index]);				// update the phasor freq based on the new window size
			break;

	}
}

inline void tt_procrastinate::set_attr(tt_selector sel, short index, tt_attribute_value low, tt_attribute_value high)	// Set Attributes
{
	switch(sel){
		case k_gain_range:
			if(index != 0){
				gain_low[index-1] = low;
				gain_high[index-1] = high;
			}
			else{
				short i;
				for(i=0; i<4; i++){
					gain_low[i] = low;
					gain_high[i] = high;
				}
			}				
			break;
		case k_shift_range:
			if(index != 0){
				shift_low[index-1] = low;
				shift_high[index-1] = high;
			}
			else{
				short i;
				for(i=0; i<4; i++){
					shift_low[i] = low;
					shift_high[i] = high;
				}
			}				
			break;
		case k_pan_range:
			if(index != 0){
				pan_low[index-1] = low;
				pan_high[index-1] = high;
			}
			else{
				short i;
				for(i=0; i<4; i++){
					pan_low[i] = low;
					pan_high[i] = high;
				}
			}				
			break;
		case k_delay_range:
			if(index != 0){
				delay_low[index-1] = low;
				delay_high[index-1] = high;
			}
			else{
				short i;
				for(i=0; i<4; i++){
					delay_low[i] = low;
					delay_high[i] = high;
				}
			}			
			break;
	}
}

inline tt_attribute_value tt_procrastinate::get_attr(tt_selector sel, short index)				// Get Attributes
{
	switch(sel){
		case k_ratio:
			return shift_ratio_value[index-1];
		case k_windowsize:
			return window_size_value[index-1];
		default:
			return -1;
	}
}

inline void tt_procrastinate::randomize_parameters()
{
	short	i;
	float	tempval[4];
	
	for(i=0; i<4; i++){
		tempval[i] = gain_high[i] - gain_low[i];
		tempval[i] = gain_low[i] + (tempval[i] * (rand() / float(RAND_MAX)));
		mixer[i]->set_attr(tt_mixer_mono::k_master_gain, tempval[i]);
//log_post("gain[%i]: %f", i, tempval[i]);				
		tempval[i] = pan_high[i] - pan_low[i];
		tempval[i] = pan_low[i] + (tempval[i] * (rand() / float(RAND_MAX)));
		panner[i]->set_attr(tt_pan::k_position, tempval[i]);
//log_post("pan[%i]: %f", i, tempval[i]);				

		tempval[i] = shift_high[i] - shift_low[i];
		tempval[i] = shift_low[i] + (tempval[i] * (rand() / float(RAND_MAX)));
		set_attr(k_ratio, i, tempval[i]);
//log_post("shift[%i]: %f", i, tempval[i]);				

		tempval[i] = delay_high[i] - delay_low[i];
		tempval[i] = delay_low[i] + (tempval[i] * (rand() / float(RAND_MAX)));
		set_attr(k_windowsize, i, tempval[i]);
//log_post("delay[%i]: %f", i, tempval[i]);				
	}		
}


/*****************************************************
 * DSP LOOPS
 *****************************************************/
// Because this is a meta-object, it is the user of this object who is responsible for making sure that
//	the vectorsize of the signals are the same as that of this object.

// Publically exposed interface for this object's dsp routine
inline void tt_procrastinate::dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out1, tt_audio_signal *out2)
{
	// VOICE 1 *****************
	phasor[0]->dsp_vector_calc(temp[0]);						// phasor~
	scale[0]->dsp_vector_calc(temp[0], temp[1]);				// *~ 87.0
	delay1[0]->dsp_vector_calc(in, temp[1], temp[8]);			// blue.delai~
//log_post("VOICE 1a: phasor=%f, scale=%f", *temp[0], *temp[1]);

	offset->dsp_vector_calc(temp[0], temp[1]);					// +~ 0.5
	modulo->dsp_vector_calc(temp[1], temp[2]);					// %~ 1.0
	scale[0]->dsp_vector_calc(temp[2], temp[3]);				// *~ 87.0
	delay2[0]->dsp_vector_calc(in, temp[3], temp[9]);			// blue.delay~ (the second one)
//log_post("VOICE 1b: phasor=%f, mod=%f, scale=%f", *temp[1], *temp[2], *temp[3]);
	
	wave1->dsp_vector_calc(temp[0], temp[8], temp[6]);			// apply the window
	wave2->dsp_vector_calc(temp[2], temp[9], temp[7]);			// apply the window
	
	mixer[0]->dsp_vector_calc(temp[6], temp[7], temp[9]);		// combine the windowed delays and apply the gain control
	panner[0]->dsp_vector_calc(temp[9], temp[10], temp[11]);	


	// VOICE 2 *****************
	phasor[1]->dsp_vector_calc(temp[0]);							// phasor~
	scale[1]->dsp_vector_calc(temp[0], temp[1]);				// *~ 87.0
	delay1[1]->dsp_vector_calc(temp[9], temp[1], temp[8]);	// blue.delai~

	offset->dsp_vector_calc(temp[0], temp[1]);					// +~ 0.5
	modulo->dsp_vector_calc(temp[1], temp[2]);					// %~ 1.0
	scale[1]->dsp_vector_calc(temp[2], temp[3]);				// *~ 87.0
	delay2[1]->dsp_vector_calc(temp[9], temp[3], temp[18]);			// blue.delay~ (the second one)
	
	wave1->dsp_vector_calc(temp[0], temp[8], temp[6]);		// apply the window
	wave2->dsp_vector_calc(temp[2], temp[18], temp[7]);		// apply the window
	
	mixer[1]->dsp_vector_calc(temp[6], temp[7], temp[9]);	// combine the windowed delays and apply the gain control
	panner[1]->dsp_vector_calc(temp[9], temp[12], temp[13]);	


	// VOICE 3 *****************
	phasor[2]->dsp_vector_calc(temp[0]);						// phasor~
	scale[2]->dsp_vector_calc(temp[0], temp[1]);				// *~ 87.0
	delay1[2]->dsp_vector_calc(temp[9], temp[1], temp[8]);		// blue.delai~

	offset->dsp_vector_calc(temp[0], temp[1]);					// +~ 0.5
	modulo->dsp_vector_calc(temp[1], temp[2]);					// %~ 1.0
	scale[2]->dsp_vector_calc(temp[2], temp[3]);				// *~ 87.0
	delay2[2]->dsp_vector_calc(temp[9], temp[3], temp[18]);		// blue.delay~ (the second one)
	
	wave1->dsp_vector_calc(temp[0], temp[8], temp[6]);			// apply the window
	wave2->dsp_vector_calc(temp[2], temp[18], temp[7]);			// apply the window
	
	mixer[2]->dsp_vector_calc(temp[6], temp[7], temp[9]);		// combine the windowed delays and apply the gain control
	panner[2]->dsp_vector_calc(temp[9], temp[14], temp[15]);	


	// VOICE 4 *****************
	phasor[3]->dsp_vector_calc(temp[0]);						// phasor~
	scale[3]->dsp_vector_calc(temp[0], temp[1]);				// *~ 87.0
	delay1[3]->dsp_vector_calc(temp[9], temp[1], temp[8]);		// blue.delai~

	offset->dsp_vector_calc(temp[0], temp[1]);					// +~ 0.5
	modulo->dsp_vector_calc(temp[1], temp[2]);					// %~ 1.0
	scale[3]->dsp_vector_calc(temp[2], temp[3]);				// *~ 87.0
	delay2[3]->dsp_vector_calc(temp[9], temp[3], temp[18]);		// blue.delay~ (the second one)
	
	wave1->dsp_vector_calc(temp[0], temp[8], temp[6]);			// apply the window
	wave2->dsp_vector_calc(temp[2], temp[18], temp[7]);			// apply the window
	
	mixer[3]->dsp_vector_calc(temp[6], temp[7], temp[9]);		// combine the windowed delays and apply the gain control
	panner[3]->dsp_vector_calc(temp[9], temp[16], temp[17]);	
	
	finalmix->dsp_vector_calc(temp[10], temp[12], temp[14], temp[16], out1);
	finalmix->dsp_vector_calc(temp[11], temp[13], temp[15], temp[17], out2);
}


// clear
inline void tt_procrastinate::clear()
{
	short i;
	for(i=0; i<4; i++){
		delay1[i]->clear();
		delay2[i]->clear();
	}
}

// set sample-rate (override the inherited method)
inline void tt_procrastinate::set_sr(int	value)
{
	short i;
	
	if(value != sr){
		sr = value;
		r_sr = 1.0 / value;
		m_sr = sr * 0.001;

		wave1->set_sr(sr);
		wave2->set_sr(sr);
		offset->set_sr(sr);
		modulo->set_sr(sr);
		window->set_sr(sr);
		finalmix->set_sr(sr);

		for(i=0; i<4; i++){
			panner[i]->set_sr(sr);
			gain[i]->set_sr(sr);
			phasor[i]->set_sr(sr);
			scale[i]->set_sr(sr);
			delay1[i]->set_sr(sr);
			delay2[i]->set_sr(sr);
			mixer[i]->set_sr(sr);
		}
	}
}

// set the vector size (override the inherited method)
inline void tt_procrastinate::set_vectorsize(int value)
{
	short i;
	if(value != vectorsize){
		vectorsize = value;

		wave1->set_vectorsize(vectorsize);
		wave2->set_vectorsize(vectorsize);
		offset->set_vectorsize(vectorsize);
		modulo->set_vectorsize(vectorsize);
		window->set_vectorsize(vectorsize);
		finalmix->set_vectorsize(vectorsize);

		for(i=0; i<4; i++){
			panner[i]->set_vectorsize(vectorsize);
			gain[i]->set_vectorsize(vectorsize);
			phasor[i]->set_vectorsize(vectorsize);
			scale[i]->set_vectorsize(vectorsize);
			delay1[i]->set_vectorsize(vectorsize);
			delay2[i]->set_vectorsize(vectorsize);
			mixer[i]->set_vectorsize(vectorsize);
		}
	
		// RESIZE THE TEMP SIGNALS
		for(i=0; i<k_num_temp_signals; i++)
			temp[i]->alloc(vectorsize);
	}
}
