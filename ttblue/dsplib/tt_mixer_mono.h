/*
 *******************************************************
 *		MIXER (N INPUTS / 1 OUTPUT)
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_MIXER_MONO_H
#define TT_MIXER_MONO_H

// Include appropriate headers
#include "tt_audio_base.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_mixer_mono:public tt_audio_base{

	private:
		enum constants{
			MAX_NUM_CHANNELS = 16,
		};
		tt_attribute_value		channel_gain[MAX_NUM_CHANNELS];
		tt_attribute_value		master_gain;
			
		
	public:
		enum selectors{										// Attribute Selectors
			k_channel_gain,
			k_master_gain
		};
		
		// OBJECT LIFE					
		tt_mixer_mono(void)								// Constructor		
		{
			int i;
			for(i=0; i<MAX_NUM_CHANNELS; i++)
				channel_gain[i] = 0.2;
			master_gain = 1.0;
		}

		~tt_mixer_mono(void)								// Destructor
		{
			;
		}


		// ATTRIBUTES - TWO ARGUMENTS
		void set_attr(tt_selector sel, tt_attribute_value_discrete chan, tt_attribute_value val)	// Set Attributes
		{
			switch (sel){
				case k_channel_gain:
					channel_gain[chan] = decibels_to_amplitude(val);
					break;
			}
		}
		
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			switch (sel){
				case k_master_gain:
					master_gain = decibels_to_amplitude(val);
					break;
			}
		}

		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
		{
			switch (sel){
				case k_master_gain:
					return amplitude_to_decibels(master_gain);
					break;	
			}
			return 0.0;
		}
		
		tt_attribute_value get_attr(tt_selector sel, tt_attribute_value_discrete chan)	// Get Attributes
		{
			switch (sel){
				case k_master_gain:
					return amplitude_to_decibels(channel_gain[chan]);
					break;	
			}
			return 0.0;
		}
		
		
		// DSP LOOP - 2 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out)
		{
			temp_vs = in1->vectorsize;
			while(temp_vs--)
				*out->vector++ = master_gain * ((*in1->vector++ * channel_gain[0]) + (*in2->vector++ * channel_gain[1]));
			in1->reset(); in2->reset(); out->reset();
		}
		
		// DSP LOOP - 3 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *out)
		{
			temp_vs = in1->vectorsize;
			while(temp_vs--)
				*out->vector++ = master_gain * ((*in1->vector++ * channel_gain[0]) + (*in2->vector++ * channel_gain[1]) + 
					(*in3->vector++ * channel_gain[2]));
			in1->reset(); in2->reset(); in3->reset(); out->reset();
		}
		
		// DSP LOOP - 4 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *in4, 
			tt_audio_signal *out)
		{
			temp_vs = in1->vectorsize;
			while(temp_vs--)
				*out->vector++ = master_gain * ((*in1->vector++ * channel_gain[0]) + (*in2->vector++ * channel_gain[1]) + 
					(*in3->vector++ * channel_gain[2]) + (*in4->vector++ * channel_gain[3]));
			in1->reset(); in2->reset(); in3->reset(); in4->reset(); out->reset();
		}
		
		// DSP LOOP - 5 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *in4, 
			tt_audio_signal *in5, tt_audio_signal *out)
		{
			temp_vs = in1->vectorsize;
			while(temp_vs--)
				*out->vector++ = master_gain * ((*in1->vector++ * channel_gain[0]) + (*in2->vector++ * channel_gain[1]) + 
					(*in3->vector++ * channel_gain[2]) + (*in4->vector++ * channel_gain[3]) + (*in5->vector++ * channel_gain[4]));
			in1->reset(); in2->reset(); in3->reset(); in4->reset(); in5->reset(); out->reset();
		}
		
		// DSP LOOP - 6 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *in4, 
			tt_audio_signal *in5, tt_audio_signal *in6, tt_audio_signal *out)
		{
			temp_vs = in1->vectorsize;
			while(temp_vs--)
				*out->vector++ = master_gain * ((*in1->vector++ * channel_gain[0]) + (*in2->vector++ * channel_gain[1]) + 
					(*in3->vector++ * channel_gain[2]) + (*in4->vector++ * channel_gain[3]) + (*in5->vector++ * channel_gain[4]) + 
					(*in6->vector++ * channel_gain[5]));
			in1->reset(); in2->reset(); in3->reset(); in4->reset(); in5->reset(); in6->reset(); out->reset();
		}
		
		// DSP LOOP - 7 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *in4, 
			tt_audio_signal *in5, tt_audio_signal *in6, tt_audio_signal *in7, tt_audio_signal *out)
		{
			temp_vs = in1->vectorsize;
			while(temp_vs--)
				*out->vector++ = master_gain * ((*in1->vector++ * channel_gain[0]) + (*in2->vector++ * channel_gain[1]) + 
					(*in3->vector++ * channel_gain[2]) + (*in4->vector++ * channel_gain[3]) + (*in5->vector++ * channel_gain[4]) + 
					(*in6->vector++ * channel_gain[5]) + (*in7->vector++ * channel_gain[6]));
			in1->reset(); in2->reset(); in3->reset(); in4->reset(); in5->reset(); in6->reset(); in7->reset(); out->reset();
		}

		// DSP LOOP - 8 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *in4, 
			tt_audio_signal *in5, tt_audio_signal *in6, tt_audio_signal *in7, tt_audio_signal *in8, 
			tt_audio_signal *out)
		{
			temp_vs = in1->vectorsize;
			while(temp_vs--)
				*out->vector++ = master_gain * ((*in1->vector++ * channel_gain[0]) + (*in2->vector++ * channel_gain[1]) + 
					(*in3->vector++ * channel_gain[2]) + (*in4->vector++ * channel_gain[3]) + (*in5->vector++ * channel_gain[4]) + 
					(*in6->vector++ * channel_gain[5]) + (*in7->vector++ * channel_gain[6]) + (*in8->vector++ * channel_gain[7]));
			in1->reset(); in2->reset(); in3->reset(); in4->reset(); in5->reset(); in6->reset(); in7->reset(); in8->reset();
			out->reset();
		}
		
		// DSP LOOP - 9 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *in4, 
			tt_audio_signal *in5, tt_audio_signal *in6, tt_audio_signal *in7, tt_audio_signal *in8, tt_audio_signal *in9, 
			tt_audio_signal *out)
		{
			temp_vs = in1->vectorsize;
			while(temp_vs--)
				*out->vector++ = master_gain * ((*in1->vector++ * channel_gain[0]) + (*in2->vector++ * channel_gain[1]) + 
					(*in3->vector++ * channel_gain[2]) + (*in4->vector++ * channel_gain[3]) + (*in5->vector++ * channel_gain[4]) + 
					(*in6->vector++ * channel_gain[5]) + (*in7->vector++ * channel_gain[6]) + (*in8->vector++ * channel_gain[7]) + 
					(*in9->vector++ * channel_gain[8]));
			in1->reset(); in2->reset(); in3->reset(); in4->reset(); in5->reset(); in6->reset(); in7->reset(); in8->reset();
			in9->reset(); out->reset();
		}

		// DSP LOOP - 10 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *in4, 
			tt_audio_signal *in5, tt_audio_signal *in6, tt_audio_signal *in7, tt_audio_signal *in8, tt_audio_signal *in9, 
			tt_audio_signal *in10, tt_audio_signal *out)
		{
			temp_vs = in1->vectorsize;
			while(temp_vs--)
				*out->vector++ = master_gain * ((*in1->vector++ * channel_gain[0]) + (*in2->vector++ * channel_gain[1]) + 
					(*in3->vector++ * channel_gain[2]) + (*in4->vector++ * channel_gain[3]) + (*in5->vector++ * channel_gain[4]) + 
					(*in6->vector++ * channel_gain[5]) + (*in7->vector++ * channel_gain[6]) + (*in8->vector++ * channel_gain[7]) + 
					(*in9->vector++ * channel_gain[8]) + (*in10->vector++ * channel_gain[9]));
			in1->reset(); in2->reset(); in3->reset(); in4->reset(); in5->reset(); in6->reset(); in7->reset(); in8->reset();
			in9->reset(); in10->reset(); out->reset();
		}		

		// DSP LOOP - 11 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *in4, 
			tt_audio_signal *in5, tt_audio_signal *in6, tt_audio_signal *in7, tt_audio_signal *in8, tt_audio_signal *in9, 
			tt_audio_signal *in10, tt_audio_signal *in11, tt_audio_signal *out)
		{
			temp_vs = in1->vectorsize;
			while(temp_vs--)
				*out->vector++ = master_gain * ((*in1->vector++ * channel_gain[0]) + (*in2->vector++ * channel_gain[1]) + 
					(*in3->vector++ * channel_gain[2]) + (*in4->vector++ * channel_gain[3]) + (*in5->vector++ * channel_gain[4]) + 
					(*in6->vector++ * channel_gain[5]) + (*in7->vector++ * channel_gain[6]) + (*in8->vector++ * channel_gain[7]) + 
					(*in9->vector++ * channel_gain[8]) + (*in10->vector++ * channel_gain[9]) + (*in11->vector++ * channel_gain[10]));
			in1->reset(); in2->reset(); in3->reset(); in4->reset(); in5->reset(); in6->reset(); in7->reset(); in8->reset();
			in9->reset(); in10->reset(); in11->reset(); out->reset();
		}		

		// DSP LOOP - 12 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *in4, 
			tt_audio_signal *in5, tt_audio_signal *in6, tt_audio_signal *in7, tt_audio_signal *in8, tt_audio_signal *in9, 
			tt_audio_signal *in10, tt_audio_signal *in11, tt_audio_signal *in12, tt_audio_signal *out)
		{
			temp_vs = in1->vectorsize;
			while(temp_vs--)
				*out->vector++ = master_gain * ((*in1->vector++ * channel_gain[0]) + (*in2->vector++ * channel_gain[1]) + 
					(*in3->vector++ * channel_gain[2]) + (*in4->vector++ * channel_gain[3]) + (*in5->vector++ * channel_gain[4]) + 
					(*in6->vector++ * channel_gain[5]) + (*in7->vector++ * channel_gain[6]) + (*in8->vector++ * channel_gain[7]) + 
					(*in9->vector++ * channel_gain[8]) + (*in10->vector++ * channel_gain[9]) + (*in11->vector++ * channel_gain[10])
					 + (*in12->vector++ * channel_gain[11]));
			in1->reset(); in2->reset(); in3->reset(); in4->reset(); in5->reset(); in6->reset(); in7->reset(); in8->reset();
			in9->reset(); in10->reset(); in11->reset(); in12->reset(); out->reset();
		}		

		// DSP LOOP - 13 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *in4, 
			tt_audio_signal *in5, tt_audio_signal *in6, tt_audio_signal *in7, tt_audio_signal *in8, tt_audio_signal *in9, 
			tt_audio_signal *in10, tt_audio_signal *in11, tt_audio_signal *in12, tt_audio_signal *in13, 
			tt_audio_signal *out)
		{
			temp_vs = in1->vectorsize;
			while(temp_vs--)
				*out->vector++ = master_gain * ((*in1->vector++ * channel_gain[0]) + (*in2->vector++ * channel_gain[1]) + 
					(*in3->vector++ * channel_gain[2]) + (*in4->vector++ * channel_gain[3]) + (*in5->vector++ * channel_gain[4]) + 
					(*in6->vector++ * channel_gain[5]) + (*in7->vector++ * channel_gain[6]) + (*in8->vector++ * channel_gain[7]) + 
					(*in9->vector++ * channel_gain[8]) + (*in10->vector++ * channel_gain[9]) + (*in11->vector++ * channel_gain[10])
					 + (*in12->vector++ * channel_gain[11]) + (*in13->vector++ * channel_gain[12]));
			in1->reset(); in2->reset(); in3->reset(); in4->reset(); in5->reset(); in6->reset(); in7->reset(); in8->reset();
			in9->reset(); in10->reset(); in11->reset(); in12->reset(); in13->reset(); out->reset();
		}		

		// DSP LOOP - 14 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *in4, 
			tt_audio_signal *in5, tt_audio_signal *in6, tt_audio_signal *in7, tt_audio_signal *in8, tt_audio_signal *in9, 
			tt_audio_signal *in10, tt_audio_signal *in11, tt_audio_signal *in12, tt_audio_signal *in13, tt_audio_signal *in14, 
			tt_audio_signal *out)
		{
			temp_vs = in1->vectorsize;
			while(temp_vs--)
				*out->vector++ = master_gain * ((*in1->vector++ * channel_gain[0]) + (*in2->vector++ * channel_gain[1]) + 
					(*in3->vector++ * channel_gain[2]) + (*in4->vector++ * channel_gain[3]) + (*in5->vector++ * channel_gain[4]) + 
					(*in6->vector++ * channel_gain[5]) + (*in7->vector++ * channel_gain[6]) + (*in8->vector++ * channel_gain[7]) + 
					(*in9->vector++ * channel_gain[8]) + (*in10->vector++ * channel_gain[9]) + (*in11->vector++ * channel_gain[10])
					 + (*in12->vector++ * channel_gain[11]) + (*in13->vector++ * channel_gain[12]) + (*in14->vector++ * channel_gain[13]));
			in1->reset(); in2->reset(); in3->reset(); in4->reset(); in5->reset(); in6->reset(); in7->reset(); in8->reset();
			in9->reset(); in10->reset(); in11->reset(); in12->reset(); in13->reset(); in14->reset(); out->reset();
		}		

		// DSP LOOP - 15 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *in4, 
			tt_audio_signal *in5, tt_audio_signal *in6, tt_audio_signal *in7, tt_audio_signal *in8, tt_audio_signal *in9, 
			tt_audio_signal *in10, tt_audio_signal *in11, tt_audio_signal *in12, tt_audio_signal *in13, tt_audio_signal *in14, 
			tt_audio_signal *in15, tt_audio_signal *out)
		{
			temp_vs = in1->vectorsize;
			while(temp_vs--)
				*out->vector++ = master_gain * ((*in1->vector++ * channel_gain[0]) + (*in2->vector++ * channel_gain[1]) + 
					(*in3->vector++ * channel_gain[2]) + (*in4->vector++ * channel_gain[3]) + (*in5->vector++ * channel_gain[4]) + 
					(*in6->vector++ * channel_gain[5]) + (*in7->vector++ * channel_gain[6]) + (*in8->vector++ * channel_gain[7]) + 
					(*in9->vector++ * channel_gain[8]) + (*in10->vector++ * channel_gain[9]) + (*in11->vector++ * channel_gain[10])
					 + (*in12->vector++ * channel_gain[11]) + (*in13->vector++ * channel_gain[12]) + (*in14->vector++ * channel_gain[13])
					 + (*in15->vector++ * channel_gain[14]));
			in1->reset(); in2->reset(); in3->reset(); in4->reset(); in5->reset(); in6->reset(); in7->reset(); in8->reset();
			in9->reset(); in10->reset(); in11->reset(); in12->reset(); in13->reset(); in14->reset(); in15->reset();
			out->reset();
		}		

		// DSP LOOP - 16 CHANNELS
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *in3, tt_audio_signal *in4, 
			tt_audio_signal *in5, tt_audio_signal *in6, tt_audio_signal *in7, tt_audio_signal *in8, tt_audio_signal *in9, 
			tt_audio_signal *in10, tt_audio_signal *in11, tt_audio_signal *in12, tt_audio_signal *in13, tt_audio_signal *in14, 
			tt_audio_signal *in15, tt_audio_signal *in16, tt_audio_signal *out)
		{
			temp_vs = in1->vectorsize;
			while(temp_vs--)
				*out->vector++ = master_gain * ((*in1->vector++ * channel_gain[0]) + (*in2->vector++ * channel_gain[1]) + 
					(*in3->vector++ * channel_gain[2]) + (*in4->vector++ * channel_gain[3]) + (*in5->vector++ * channel_gain[4]) + 
					(*in6->vector++ * channel_gain[5]) + (*in7->vector++ * channel_gain[6]) + (*in8->vector++ * channel_gain[7]) + 
					(*in9->vector++ * channel_gain[8]) + (*in10->vector++ * channel_gain[9]) + (*in11->vector++ * channel_gain[10])
					 + (*in12->vector++ * channel_gain[11]) + (*in13->vector++ * channel_gain[12]) + (*in14->vector++ * channel_gain[13])
					 + (*in15->vector++ * channel_gain[14]) + (*in16->vector++ * channel_gain[15]));
			in1->reset(); in2->reset(); in3->reset(); in4->reset(); in5->reset(); in6->reset(); in7->reset(); in8->reset();
			in9->reset(); in10->reset(); in11->reset(); in12->reset(); in13->reset(); in14->reset(); in15->reset(); in16->reset();
			out->reset();
		}		
};

#endif // tt_MIXER_MONO_H


