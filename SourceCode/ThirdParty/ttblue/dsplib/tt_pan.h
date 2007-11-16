/*
 *******************************************************
 *		PANNER (1 INPUT / 2 OUTPUTS)
 *******************************************************
 *		Tap.Tools Blue Object
 *		copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_PAN_H
#define TT_PAN_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE/IMPLEMENTATION

	The entire class is implemented inline for speed.
 ********************************************************/

class tt_pan:public tt_audio_base{

	private:
		// Function pointer for the DSP Loop (use this instead of branching for speed)
		typedef void (tt_pan::*FuncPtr)(tt_audio_signal *, tt_audio_signal *, tt_audio_signal *);
		FuncPtr dsp_executor;
		
		// Attribute Values
		tt_attribute_value		position;
		tt_attribute_value		shape;
		tt_attribute_value		mode;
			
		
	public:
		enum selectors{										// Attribute Selectors
			k_shape,
			k_mode,
			k_position,
			k_shape_equalpower,
			k_shape_linear,
			k_mode_lookup,
			k_mode_calculate
		};
		
		
		// OBJECT LIFE					
		tt_pan(void)										// Constructor		
		{
			set_attr(k_position, 0.5);
			set_attr(k_shape, k_shape_equalpower);
			set_attr(k_mode, k_mode_lookup);
		}

		~tt_pan(void)										// Destructor
		{
			;
		}


		// ATTRIBUTES
		void set_attr(tt_selector sel, tt_attribute_value val)	// Set Attributes
		{
			switch (sel){
				case k_position:
					position = clip(val, (float)0.0, (float)1.0);
					break;
				case k_shape:
					shape = val;
					break;
				case k_mode:
					mode = val;
					break;
			}
			// set the function pointer for the correct dsp loop to run
			if(shape == k_shape_linear)
				dsp_executor = &tt_pan::dsp_vector_calc_linear;
			else if(mode == k_mode_calculate)
				dsp_executor = &tt_pan::dsp_vector_calc_equalpower_calc;
			else if(mode == k_mode_lookup)
				dsp_executor = &tt_pan::dsp_vector_calc_equalpower_lookup;
		}

		tt_attribute_value get_attr(tt_selector sel)				// Get Attributes
		{
			switch (sel){
				case k_position:
					return position;
				case k_shape:
					return shape;
				case k_mode:
					return mode;
				default:
					return 0.0;
			}
		}
		
		/*****************************************************
		 * DSP LOOPS
		 *****************************************************/
		
		// Publically exposed interface for this object's dsp routine
		void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out1, tt_audio_signal *out2)
		{
			(*this.*dsp_executor)(in, out1, out2);		// Run the function pointed to by our function pointer
		}
	
	private:
		// DSP LOOP: LINEAR SHAPE
		void dsp_vector_calc_linear(tt_audio_signal *in, tt_audio_signal *out1, tt_audio_signal *out2)
		{
			tt_sample_value	temp;
			temp_vs = in->vectorsize;
			
			while(temp_vs--){
				temp = *(in->vector++);
				*(out1->vector++) = temp * (1.0 - position);
				*(out2->vector++) = temp * position;
			}
			in->reset(); out1->reset(); out2->reset();
		}

		// DSP LOOP: EQUAL POWER LOOKUP MODE
		void dsp_vector_calc_equalpower_lookup(tt_audio_signal *in, tt_audio_signal *out1, tt_audio_signal *out2)
		{
			tt_sample_value	temp;
			short 			index;
			temp_vs = in->vectorsize;

			while(temp_vs--){
				temp = *(in->vector++);
				index = (int)(position * 511.0);
				*(out1->vector++) = temp * lookup_equalpower[index];
				*(out2->vector++) = temp * lookup_equalpower[511 - index];
			}
			in->reset(); out1->reset(); out2->reset();
		}

		// DSP LOOP: EQUAL POWER CALCULATED
		void dsp_vector_calc_equalpower_calc(tt_audio_signal *in, tt_audio_signal *out1, tt_audio_signal *out2)
		{
			tt_sample_value 	temp;
			temp_vs = in->vectorsize;
			
			while(temp_vs--){
				temp = *(in->vector++);
				*(out1->vector++) = temp * (sin((1.0 - position) * 1.5707963));
				*(out2->vector++) = temp * (sin(position * 1.5707963));
			}
			in->reset(); out1->reset(); out2->reset();
		}

};

#endif // TT_PAN_H


