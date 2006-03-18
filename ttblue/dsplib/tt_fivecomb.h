/*
 *******************************************************
 *		BANK OF 5 COMB FILTERS
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2000-2004 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_FIVECOMB_H
#define TT_FIVECOMB_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_comb.h"
#include "tt_crossfade.h"
#include "tt_mixer_mono.h"
#include "tt_gain.h"
#include "tt_audio_signal.h"

/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_fivecomb:public tt_audio_base{

	private:
		enum constants{
			k_num_temp_signals = 7,
		};

		tt_comb				*comb_filter[5];			// main filters
		tt_crossfade		*wetdry_xfader;				// does the wet-dry mix
		tt_mixer_mono		*mixer;						// sums the 5 combs
		tt_gain				*input_gainer;				// scales the input signal	
		tt_audio_signal		*temp[k_num_temp_signals];	// Temp Signals
			
		tt_attribute_value	attr_frequency[5];
		tt_attribute_value	attr_frequency_scale;
		tt_attribute_value	attr_resonance[5];
		tt_attribute_value	attr_resonance_scale;
		tt_attribute_value	attr_lowpass_cf[5];
		tt_attribute_value	attr_lowpass_cf_scale;
			
	public:
		enum selectors{					// Attribute Selectors
			k_frequency,
			k_resonance,
			k_lowpass_cf,
			k_frequency_scale,
			k_resonance_scale,
			k_lowpass_cf_scale,
			k_mix,
			k_input_gain,
		};
		

		// OBJECT LIFE ************************************************************
		tt_fivecomb()										// Constructor		
		{
			short i;

			for(i=0; i<5; i++){
				comb_filter[i] = new tt_comb(200);
			}
			wetdry_xfader = new tt_crossfade;
			mixer = new tt_mixer_mono;
			input_gainer = new tt_gain;
			
			for(i=0; i < k_num_temp_signals; i++)			// allocate temp signals
				temp[i] = new tt_audio_signal(vectorsize);

			// Default Settings
			// set_attr(k_ratio, 1.0);
			// set_attr(k_windowsize, 87.0);
		}

		~tt_fivecomb()									// Destructor
		{
			short i;
			for(i=0; i<5; i++)
				delete comb_filter[i];
			delete wetdry_xfader;
			delete mixer;
			delete input_gainer;
	
			// FREE THE TEMP SIGNALS
			for(i=0; i<k_num_temp_signals; i++)
				delete temp[i];
		}


		// ATTRIBUTES ************************************************************
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			switch(sel){
				case k_mix:
					wetdry_xfader->set_attr(tt_crossfade::k_position, val * 0.01);
					break;
				case k_input_gain:
					input_gainer->set_attr(tt_gain::k_gain, val);
					break;
				case k_frequency_scale:
					break;
				case k_resonance_scale:
					break;
				case k_lowpass_cf_scale:
					break;
			}
		}
		
		void set_attr(tt_selector sel, short index, tt_attribute_value val)
		{
			switch(sel){
				case k_frequency:
					break;
				case k_resonance:
					break;
				case k_lowpass_cf:
					break;
			}
			//index;
			//val;
		}


		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
		{
			switch(sel){
				case k_mix:
					return(wetdry_xfader->get_attr(tt_crossfade::k_position) * 100.0);
				case k_input_gain:
					return input_gainer->get_attr(tt_gain::k_gain);
				default:
					return -1;
			}
		}
		
		tt_attribute_value get_attr(tt_selector sel, short index)
		{
			switch(sel){
				case k_frequency:
					break;
				case k_resonance:
					break;
				case k_lowpass_cf:
					break;
				default:
					return -1;
			}
			return -1;
			//index;
		}
		
		
		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		// Because this is a meta-object, it is the user of this object who is responsible for making sure that
		//	the vectorsize of the signals are the same as that of this object.

		// Publically exposed interface for this object's dsp routine
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out)
		{
			input_gainer->dsp_vector_calc(in, temp[0]);				// Scale input	
			comb_filter[0]->dsp_vector_calc(temp[0], temp[1]);		// 5 parallel comb filters...
			comb_filter[1]->dsp_vector_calc(temp[0], temp[2]);
			comb_filter[2]->dsp_vector_calc(temp[0], temp[3]);
			comb_filter[3]->dsp_vector_calc(temp[0], temp[4]);
			comb_filter[4]->dsp_vector_calc(temp[0], temp[5]);
			mixer->dsp_vector_calc(temp[1], temp[2], temp[3], temp[4], temp[5], temp[6]);	// Mixer
			wetdry_xfader->dsp_vector_calc(in, temp[6], out);		// Wet/Dry Mix
		}



	public:
		// ADDITIONAL METHODS ************************************************************

		// clear the filters
		void clear()
		{
			short i;
			for(i=0; i<5; i++)
				comb_filter[i]->clear();
		}

		// set sample-rate (override the inherited method)
		void set_sr(int	value)
		{
			if(value != sr){
				short i;
				
				sr = value;
				r_sr = 1.0 / value;
				m_sr = sr * 0.001;
				
				input_gainer->set_sr(sr);
				for(i=0; i<5; i++)
					comb_filter[i]->set_sr(sr);
				mixer->set_sr(sr);
				wetdry_xfader->set_sr(sr);
			}
		}

		// set the vector size (override the inherited method)
		void set_vectorsize(int value)
		{
			short i;
			if(value != vectorsize){
				vectorsize = value;

				input_gainer->set_vectorsize(vectorsize);
				for(i=0; i<5; i++)
					comb_filter[i]->set_vectorsize(vectorsize);
				mixer->set_vectorsize(vectorsize);
				wetdry_xfader->set_vectorsize(vectorsize);
		
				// RESIZE THE TEMP SIGNALS
				for(i=0; i<k_num_temp_signals; i++)
					temp[i]->alloc(vectorsize);
			}
		}
};


#endif	// TT_FIVECOMB_H