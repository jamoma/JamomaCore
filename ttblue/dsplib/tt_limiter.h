/*
 *******************************************************
 *		LOOKAHEAD LIMITER
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_LIMITER_H
#define TT_LIMITER_H

// Include appropriate headers
#include "tt_audio_base.h"
//#include"tt_buffer.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_limiter:public tt_audio_base{

	private:
		// Function pointer for the DSP Loop (use this instead of branching for speed)
		typedef void (tt_limiter::*function_ptr_1in_1out)(tt_audio_signal *, tt_audio_signal *);
		typedef void (tt_limiter::*function_ptr_2in_2out)(tt_audio_signal *, tt_audio_signal *, tt_audio_signal *, tt_audio_signal *);
		function_ptr_1in_1out dsp_executor_mono;
		function_ptr_2in_2out dsp_executor_stereo;

		// Attributes Values & Variables 
		tt_attribute_value_bool		defeat_dcblocker;
		double	 					last_input1;
		double						last_output1;
		double	 					last_input2;
		double						last_output2;
		double	recover;
		double	recip;
		float 	*buf1, *buf2, *gain;
//		tt_buffer	*buffer1, *buffer2, *buffer_gain;
		long 	bp, samps;
		float 	last;

		tt_attribute_value 				threshold;			
		tt_attribute_value_discrete 	mode;
		tt_attribute_value				release;
		tt_attribute_value_discrete		lookahead;
		tt_attribute_value 				preamp;				
		tt_attribute_value				postamp;
		
		// set recover
		void set_recover()
		{
			recover = 1000. / (release * sr);
			if (recover == 0.) 
				recover = 1000. / (100000. * sr);
				
			if (mode == k_mode_linear) 
				recover = recover * 0.5;
			else 
				recover = recover * 0.707;
		}
	
	
	public:
		enum selectors{									// Attribute Selectors
			k_defeat_dcblocker,
			k_threshold,
			k_release,
			k_lookahead,
			k_preamp,
			k_postamp,
			k_mode,				
			k_mode_linear,
			k_mode_exponential,
			
			MAX_SAMPLES	= 256							// Size of the lookahead buffers
		};
		

		// OBJECT LIFE					
		tt_limiter()									// Constructor		
		{
			buf1 = buf2 = gain = 0;
		
			// allocate lookahead buffers
			buf1 = (float *)mem_alloc(MAX_SAMPLES * sizeof(float));
			buf2 = (float *)mem_alloc(MAX_SAMPLES * sizeof(float));
			gain = (float *)mem_alloc(MAX_SAMPLES * sizeof(float));
//			buffer1 = new tt_buffer;
//			buffer2 = new tt_buffer;
//			buffer_gain = new tt_buffer;
	
//			buffer1->set_attr(tt_buffer::k_length_samples, MAX_SAMPLES);
//			buffer2->set_attr(tt_buffer::k_length_samples, MAX_SAMPLES);
//			buffer_gain->set_attr(tt_buffer::k_length_samples, MAX_SAMPLES);

			// set defaults
			set_attr(k_threshold, 0.0);
		    set_attr(k_lookahead, 100);
		    set_attr(k_mode, k_mode_exponential);
		    set_attr(k_preamp, 0.0);
		    set_attr(k_postamp, 0.0);
		    set_attr(k_release, 1000.0);
		    set_attr(k_defeat_dcblocker, 0);
		    clear();
		}

		~tt_limiter()									// Destructor
		{
//			delete buffer1;
//			delete buffer2;
//			delete buffer_gain;
			mem_free(buf1);
			mem_free(buf2);
			mem_free(gain);
		}


		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			switch (sel){

				case k_threshold:
					threshold = decibels_to_amplitude(val);
					break;
				case k_release:
					release = val;
					set_recover();
					break;
				case k_lookahead:
					lookahead = clip(tt_attribute_value_discrete(val), (tt_attribute_value_discrete)1, tt_attribute_value_discrete(MAX_SAMPLES - 1));
				    recip = 1.0 / (double)lookahead;
					break;
				case k_preamp:
					preamp = decibels_to_amplitude(val);
					break;
				case k_postamp:
					postamp = decibels_to_amplitude(val);
					break;
				case k_mode:
					mode = val;
					set_recover();
					break;
				case k_defeat_dcblocker:
					defeat_dcblocker = val;
					if(defeat_dcblocker){
						dsp_executor_mono = &tt_limiter::dsp_vector_calc_mono_nodcblock;
						dsp_executor_stereo = &tt_limiter::dsp_vector_calc_stereo_nodcblock;
					}
					else{
						dsp_executor_mono = &tt_limiter::dsp_vector_calc_mono;
						dsp_executor_stereo = &tt_limiter::dsp_vector_calc_stereo;
					}
					break;
			}
		}

		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
		{
			switch (sel){
				case k_threshold:
					return amplitude_to_decibels(threshold);
				case k_release:
					return release;
				case k_lookahead:
					return lookahead;
				case k_preamp:
					return amplitude_to_decibels(preamp);
				case k_postamp:
					return amplitude_to_decibels(postamp);
				case k_mode:
					return mode;
				case k_defeat_dcblocker:
					return defeat_dcblocker;
				default:
					return 0.0;
			}
		}
				
		
		// clear
		void clear(void)
		{
			short i;
			for (i=0; i<MAX_SAMPLES; i++){
		    	buf1[i]=0.; 
		    	buf2[i]=0.; 
		    	gain[i]=1.;
		    }

			bp = 0;
			last = 1.;
			set_recover();

			last_input1 = 0.0;
			last_output1 = 0.0;	
			last_input2 = 0.0;
			last_output2 = 0.0;	
		}

		
		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		
		// Publically exposed interface for MONO dsp routine
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
		{
			(*this.*dsp_executor_mono)(in, out);	// Run the function pointed to by our function pointer
		}
	
		// Publically exposed interface for STEREO dsp routine
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2)
		{
			(*this.*dsp_executor_stereo)(in1, in2, out1, out2);	// Run the function pointed to by our function pointer
		}
	
	
	private:
		
		// DSP LOOP - STEREO
		void dsp_vector_calc_stereo(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2)
		{
			double left_sample, right_sample, curgain, newgain, inc;
			double acc, maybe;
			long ind, flag, bbp, i;
			char lin = (mode == k_mode_linear);			// done at the vector to save a few cycles
			temp_vs = in1->vectorsize;		
					
		    while(temp_vs--){
		    	right_sample = *in1->vector++ * preamp;
		    	left_sample = *in2->vector++ * preamp;

				// Integrated DC Blocker:
				last_output1 = left_sample - last_input1 + (last_output1 * 0.9997);
				last_input1 = left_sample;
				last_output2 = right_sample - last_input2 + (last_output2 * 0.9997);
				last_input2 = right_sample;

				// Limiter...		    	
		    	buf1[bp] = right_sample * postamp;
		    	buf2[bp] = left_sample * postamp;
		    	
		    	right_sample = fabs(right_sample);
		    	left_sample = fabs(left_sample);
		    	left_sample = ((right_sample > left_sample) ? right_sample : left_sample);

		    	if (lin) 
		    		right_sample = last + recover;
		    	else 
		    		right_sample = last + recover * ((last > 0.01) ? last : 1.);
		    	
		    	maybe = ((right_sample > threshold) ? threshold : right_sample);
		    	gain[bp] = maybe;
		    	
		    	if (left_sample * maybe > threshold){
		    		curgain = threshold / left_sample;
		    		inc = (threshold - curgain);
		    		acc = 0;
			    	flag = 0;
			    	for (i=0; flag == 0 && i < lookahead; i++){
			    		ind = bp - i;
			    		if (ind < 0) 
			    			ind += MAX_SAMPLES;
			    		if (lin) 
			    			newgain = curgain + inc * acc;
			    		else newgain = curgain + inc * (acc * acc);
			    		if (newgain < gain[ind]) 
			    			gain[ind] = newgain;
			    		else flag = 1;
			    		acc = acc + recip;
			    	}
		    	}
		    	bbp = bp - lookahead;
		    	if (bbp < 0) 
		    		bbp += MAX_SAMPLES;
		    		
		    	*out1->vector++ = buf1[bbp] * gain[bbp];
		    	*out2->vector++ = buf2[bbp] * gain[bbp];
		    	
		    	last = gain[bp];
		    	
		    	bp++; 
		    	if (bp >= MAX_SAMPLES) 
		    		bp = 0;
		    }
		    in1->reset(); in2->reset(); out1->reset(); out2->reset();
		}

		// DSP LOOP - MONO
		// NOTE: This is no more efficient than the stereo version - need to optimize sometime
		void dsp_vector_calc_mono(tt_audio_signal *in, tt_audio_signal *out)
		{
			double left_sample, right_sample, curgain, newgain, inc;
			double acc, maybe;
			long ind, flag, bbp, i;
			char lin = (mode == k_mode_linear);			// done at the vector to save a few cycles
			temp_vs = in->vectorsize;		
						
		    while (temp_vs--){
		    	left_sample = right_sample = *in->vector++ * preamp;

				// Integrated DC Blocker:
				last_output1 = left_sample - last_input1 + (last_output1 * 0.9997);
				last_input1 = left_sample;

		    	// Limiter...
		    	buf1[bp] = right_sample * postamp;
		    	buf2[bp] = left_sample * postamp;
		    	
		    	right_sample = fabs(right_sample);
		    	left_sample = fabs(left_sample);
		    	left_sample = ((right_sample > left_sample) ? right_sample : left_sample);

		    	if (lin) 
		    		right_sample = last + recover;
		    	else 
		    		right_sample = last + recover * ((last > 0.01) ? last : 1.);
		    	
		    	maybe = ((right_sample > threshold) ? threshold : right_sample);
		    	gain[bp] = maybe;
		    	
		    	if (left_sample * maybe > threshold){
		    		curgain = threshold / left_sample;
		    		inc = (threshold - curgain);
		    		acc = 0;
			    	flag = 0;
			    	for (i=0; flag == 0 && i < lookahead; i++){
			    		ind = bp - i;
			    		if (ind < 0) 
			    			ind += MAX_SAMPLES;
			    		if (lin) 
			    			newgain = curgain + inc * acc;
			    		else newgain = curgain + inc * (acc * acc);
			    		if (newgain < gain[ind]) 
			    			gain[ind] = newgain;
			    		else flag = 1;
			    		acc = acc + recip;
			    	}
		    	}
		    	bbp = bp - lookahead;
		    	if (bbp < 0) 
		    		bbp += MAX_SAMPLES;
		    		
		    	*out->vector++ = buf1[bbp] * gain[bbp];
		    	
		    	last = gain[bp];
		    	
		    	bp++; 
		    	if (bp >= MAX_SAMPLES) 
		    		bp = 0;
		    }
		    in->reset(); out->reset();
		}

		
		// DSP LOOP - STEREO
		void dsp_vector_calc_stereo_nodcblock(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out1, tt_audio_signal *out2)
		{
			double left_sample, right_sample, curgain, newgain, inc;
			double acc, maybe;
			long ind, flag, bbp, i;
			char lin = (mode == k_mode_linear);			// done at the vector to save a few cycles
			temp_vs = in1->vectorsize;		
					
		    while(temp_vs--){
		    	right_sample = *in1->vector++ * preamp;
		    	left_sample = *in2->vector++ * preamp;
		    	
		    	buf1[bp] = right_sample * postamp;
		    	buf2[bp] = left_sample * postamp;
		    	
		    	right_sample = fabs(right_sample);
		    	left_sample = fabs(left_sample);
		    	left_sample = ((right_sample > left_sample) ? right_sample : left_sample);

		    	if (lin) 
		    		right_sample = last + recover;
		    	else 
		    		right_sample = last + recover * ((last > 0.01) ? last : 1.);
		    	
		    	maybe = ((right_sample > threshold) ? threshold : right_sample);
		    	gain[bp] = maybe;
		    	
		    	if (left_sample * maybe > threshold){
		    		curgain = threshold / left_sample;
		    		inc = (threshold - curgain);
		    		acc = 0;
			    	flag = 0;
			    	for (i=0; flag == 0 && i < lookahead; i++){
			    		ind = bp - i;
			    		if (ind < 0) 
			    			ind += MAX_SAMPLES;
			    		if (lin) 
			    			newgain = curgain + inc * acc;
			    		else newgain = curgain + inc * (acc * acc);
			    		if (newgain < gain[ind]) 
			    			gain[ind] = newgain;
			    		else flag = 1;
			    		acc = acc + recip;
			    	}
		    	}
		    	bbp = bp - lookahead;
		    	if (bbp < 0) 
		    		bbp += MAX_SAMPLES;
		    		
		    	*out1->vector++ = buf1[bbp] * gain[bbp];
		    	*out2->vector++ = buf2[bbp] * gain[bbp];
		    	
		    	last = gain[bp];
		    	
		    	bp++; 
		    	if (bp >= MAX_SAMPLES) 
		    		bp = 0;
		    }
		    in1->reset(); in2->reset(); out1->reset(); out2->reset();
		}

		// DSP LOOP - MONO
		// NOTE: This is no more efficient than the stereo version - need to optimize sometime
		void dsp_vector_calc_mono_nodcblock(tt_audio_signal *in, tt_audio_signal *out)
		{
			double left_sample, right_sample, curgain, newgain, inc;
			double acc, maybe;
			long ind, flag, bbp, i;
			char lin = (mode == k_mode_linear);			// done at the vector to save a few cycles
			temp_vs = in->vectorsize;		
						
		    while (temp_vs--){
		    	left_sample = right_sample = *in->vector++ * preamp;
		    	
		    	buf1[bp] = right_sample * postamp;
		    	buf2[bp] = left_sample * postamp;
		    	
		    	right_sample = fabs(right_sample);
		    	left_sample = fabs(left_sample);
		    	left_sample = ((right_sample > left_sample) ? right_sample : left_sample);

		    	if (lin) 
		    		right_sample = last + recover;
		    	else 
		    		right_sample = last + recover * ((last > 0.01) ? last : 1.);
		    	
		    	maybe = ((right_sample > threshold) ? threshold : right_sample);
		    	gain[bp] = maybe;
		    	
		    	if (left_sample * maybe > threshold){
		    		curgain = threshold / left_sample;
		    		inc = (threshold - curgain);
		    		acc = 0;
			    	flag = 0;
			    	for (i=0; flag == 0 && i < lookahead; i++){
			    		ind = bp - i;
			    		if (ind < 0) 
			    			ind += MAX_SAMPLES;
			    		if (lin) 
			    			newgain = curgain + inc * acc;
			    		else newgain = curgain + inc * (acc * acc);
			    		if (newgain < gain[ind]) 
			    			gain[ind] = newgain;
			    		else flag = 1;
			    		acc = acc + recip;
			    	}
		    	}
		    	bbp = bp - lookahead;
		    	if (bbp < 0) 
		    		bbp += MAX_SAMPLES;
		    		
		    	*out->vector++ = buf1[bbp] * gain[bbp];
		    	
		    	last = gain[bp];
		    	
		    	bp++; 
		    	if (bp >= MAX_SAMPLES) 
		    		bp = 0;
		    }
		    in->reset(); out->reset();
		}

};


#endif		// tt_LIMITER_H