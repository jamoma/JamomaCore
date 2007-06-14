// Interface for audio signal objects used by other Tap.Tools objects.
// Copyright © 2004 by Electrotap. All Rights Reserved.

#ifndef TT_AUDIO_SIGNAL_HEADER
#define TT_AUDIO_SIGNAL_HEADER


// taptools base header file
#include "tt_audio_base.h"


/****************************************************************************************************/
// Class Specification

class tt_audio_signal:public tt_audio_base{
	private:
		bool				mode;
		tt_sample_vector	vector_start;		// store the address for the beginning of the vector
		//int				vectorsize_start;	// permanent location of the vectorsize
	
	public:
		tt_sample_vector	vector;				// made public for fast access in dsp routines
		//					 vectorsize;		// inherited
		
		enum selectors{
			k_mode_local = 1,
			k_mode_external = 0,
		};
		
		// CREATE AN INSTANCE WITH A NULL VECTOR (useful for wrapping an external entity as an audio signal)
		tt_audio_signal();		
		// CREATE AN INSTANCE WITH A SPECIFIED VECTOR SIZE
		tt_audio_signal(short init_vector_size);
		// DESTROY AN INSTANCE
		~tt_audio_signal();
		
		// OVERRIDE THE INHERITED SET VECTOR SIZE METHOD
		void set_vectorsize(int value);
		// SET A REFERENCE TO AN EXTERNAL VECTOR
		void set_vector(tt_sample_vector ext_vector);
		void get_vector(tt_sample_vector *ext_vector);
		
		tt_err set_attr(tt_selector sel, const tt_value &val)	// Set Attributes
		{return TT_ERR_NONE;}
		tt_err get_attr(tt_selector sel, tt_value &value)		// Get Attributes
		{return TT_ERR_NONE;}
		
		// ALLOCATE A VECTOR - SET ITS SIZE
		tt_err alloc(short new_vector_size);
		
		// RESET THE VECTOR POINTER TO THE BEGINNING OF THE VECTOR
		void reset();
		
		// CLEAR - ZERO OUT A VECTOR'S CONTENTS
		void clear();
		
		// FILL - SET ALL VALUES IN THE SIGNAL TO A CONSTANT
		void fill(tt_sample_value val);
};

#endif // TT_AUDIO_SIGNAL_HEADER
