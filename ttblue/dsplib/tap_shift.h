/*
 *******************************************************
 *		PITCH SHIFTER
 *******************************************************
 *		taptools_audio object
 *		copyright © 2000-2004 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TAP_SHIFT_H
#define TAP_SHIFT_H

// Include appropriate headers
#include "taptools_base.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tap_shift:public taptools_audio{

	private:
		enum constants{
			k_num_temp_signals = 10,
		};
		tt_attribute_value		window_size;				// size of the delay window
		tt_attribute_value		shift_ratio;				// amount of pitch shift
		
		tap_delay				*delay1, *delay2;			// member tap.tools objects
		tap_phasor				*phasor;
		tap_buffer				*window;
		tap_buffer_window		*wave1, *wave2;
		tap_gain				*scale;
		tap_offset				*offset;
		tap_onewrap				*modulo;	
		tap_add					*add;
	
		tt_audio_signal			*temp[k_num_temp_signals];	// Temp Signals
		float					buffersize_in_ms;
			
	public:
		enum selectors{			// Attribute Selectors
			k_ratio,
			k_windowsize,
		};
		

		// OBJECT LIFE ************************************************************
		tap_shift()										// Constructor		
		{
			short i;
			buffersize_in_ms = 200.0;
			
			for(i=0; i < k_num_temp_signals; i++)
				temp[i] = new tt_audio_signal(vectorsize);		// allocate temp signals
			
			delay1 = new tap_delay(buffersize_in_ms);
			delay2 = new tap_delay(buffersize_in_ms);
			phasor = new tap_phasor;
			
			window = new tap_buffer(512);
			window->fill(tap_buffer::k_padded_welch_512);

			wave1 = new tap_buffer_window(window);
			wave2 = new tap_buffer_window(window);
			wave1->set_attr(tap_buffer_window::k_mode, tap_buffer_window::k_mode_normalized_fast);
			wave2->set_attr(tap_buffer_window::k_mode, tap_buffer_window::k_mode_normalized_fast);

			scale = new tap_gain;

			offset = new tap_offset;
			offset->set_attr(tap_offset::k_offset_value, 0.5);

			modulo = new tap_onewrap;	
			add = new tap_add;
				
			// Default Settings
			window_size = 87.0;				// must define before setting the ratio!
			set_attr(k_ratio, 1.0);
			set_attr(k_windowsize, 87.0);
		}

		~tap_shift()									// Destructor
		{
			short i;
	
			delete delay1;
			delete delay2;
			delete phasor;
			delete wave1;
			delete wave2;
			delete scale;
			delete offset;
			delete modulo;
			delete add;
			delete window;
	
			// FREE THE TEMP SIGNALS
			for(i=0; i<k_num_temp_signals; i++)
				delete temp[i];
		}


		// ATTRIBUTES ************************************************************
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			switch(sel){
				case k_ratio:
					shift_ratio = val;
					phasor->set_attr(tap_phasor::k_frequency, (-(shift_ratio - 1.0)) * (1.0 / (window_size * 0.001)));
					break;
				case k_windowsize:
					window_size = clip(val, 1.0f, buffersize_in_ms - 1);
					scale->set_attr(tap_gain::k_gain_direct, window_size);
					set_attr(k_ratio, shift_ratio);				// update the phasor freq based on the new window size
					break;
			}
		}

		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
		{
			switch(sel){
				case k_ratio:
					return shift_ratio;
				case k_windowsize:
					return window_size;
				default:
					return -1;
			}
		}
		
		
		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		// Because this is a meta-object, it is the user of this object who is responsible for making sure that
		//	the vectorsize of the signals are the same as that of this object.

		// Publically exposed interface for this object's dsp routine
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
		{
			phasor->dsp_vector_calc(temp[0]);					// phasor~
			scale->dsp_vector_calc(temp[0], temp[1]);			// *~ 87.0
			delay1->dsp_vector_calc(in, temp[1], temp[8]);		// blue.delai~

			offset->dsp_vector_calc(temp[0], temp[1]);			// +~ 0.5
			modulo->dsp_vector_calc(temp[1], temp[2]);			// %~ 1.0
			scale->dsp_vector_calc(temp[2], temp[3]);			// *~ 87.0
			delay2->dsp_vector_calc(in, temp[3], temp[9]);		// blue.delay~ (the second one)

			wave1->dsp_vector_calc(temp[0], temp[8], temp[6]);	// wave~ -> *~ (lookup the window and apply it)
			wave2->dsp_vector_calc(temp[2], temp[9], temp[7]);	// wave~ -> *~ (lookup the window and apply it)
			
			add->dsp_vector_calc(temp[6], temp[7], out);		// combine the windowed delays and write it to output
		}



	public:
		// ADDITIONAL METHODS ************************************************************
		
		// clear
		void clear()
		{
			delay1->clear();
			delay2->clear();
		}
		
		// set sample-rate (override the inherited method)
		void set_sr(int	value)
		{
			if(value != sr){
				sr = value;
				r_sr = 1.0 / value;
				m_sr = sr * 0.001;
				
				delay1->set_sr(sr);
				delay2->set_sr(sr);
				phasor->set_sr(sr);
				window->set_sr(sr);
				wave1->set_sr(sr);
				wave2->set_sr(sr);
				scale->set_sr(sr);
				offset->set_sr(sr);
				modulo->set_sr(sr);
				add->set_sr(sr);
			}
		}

		// set the vector size (override the inherited method)
		void set_vectorsize(int value)
		{
			short i;
			if(value != vectorsize){
				vectorsize = value;

				delay1->set_vectorsize(vectorsize);
				delay2->set_vectorsize(vectorsize);
				phasor->set_vectorsize(vectorsize);
				window->set_vectorsize(vectorsize);
				wave1->set_vectorsize(vectorsize);
				wave2->set_vectorsize(vectorsize);
				scale->set_vectorsize(vectorsize);
				offset->set_vectorsize(vectorsize);
				modulo->set_vectorsize(vectorsize);	
				add->set_vectorsize(vectorsize);
		
				// RESIZE THE TEMP SIGNALS
				for(i=0; i<k_num_temp_signals; i++)
					temp[i]->alloc(vectorsize);
			}
		}
};


#endif	// TAP_SHIFT_H