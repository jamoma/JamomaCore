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
		tt_audio_signal()
		{
			vector_start = vector = 0;
			vectorsize = 0;
			mode = k_mode_external;
		}
		
		// CREATE AN INSTANCE WITH A SPECIFIED VECTOR SIZE
		tt_audio_signal(short init_vector_size)
		{
			tt_err	err;
			vectorsize = 0;
			vector_start = vector = 0;
			
			err = alloc(init_vector_size);
//if(err)
//error("YO! Could not instantiate tt_audio_signal");
			// !!! Should do something to handle this error if it occurs !!!
		}
		
		// DESTROY AN INSTANCE
		~tt_audio_signal()
		{
			if(mode == k_mode_local)
				mem_free(vector);		// only free the vector if this instance is responsible for it!
		}
		
		// OVERRIDE THE INHERITED SET VECTOR SIZE METHOD
		void set_vectorsize(int value)
		{
			vectorsize = /* vectorsize_start = */ value;
		}
		
		// SET A REFERENCE TO AN EXTERNAL VECTOR
		void set_vector(tt_sample_vector ext_vector)
		{
			vector = vector_start = ext_vector;
		}
		
		
		// ALLOCATE A VECTOR - SET ITS SIZE
		tt_err alloc(short new_vector_size)
		{
			mode = k_mode_local;							// flag this so the RAM is released on free
			if(new_vector_size != vectorsize){
				mem_free(vector);							// release any previously allocated memory for this vector
				vector_start = vector = (tt_sample_value *)mem_alloc((new_vector_size) * sizeof(tt_sample_value));	// allocate new memory
				if(vector == 0){
					vectorsize = 0;
//error("YO! Could not ALLOCATE tt_audio_signal");
					return TT_MEMALLOC_FAILED;

				}
				else{
					vectorsize = new_vector_size;			// store the size of the vector
					clear();
//post("VECTOR_START: %i", vector_start);
					return TT_NOERR;
				}
			}
			return TT_NOERR;
		}
		
		// RESET THE VECTOR POINTER TO THE BEGINNING OF THE VECTOR
		void reset()
		{
			//vectorsize = vectorsize_start;
			vector = vector_start;
		}
		
		// CLEAR - ZERO OUT A VECTOR'S CONTENTS
		void clear()
		{
			short i;
			for(i=0; i<vectorsize; i++)
				vector[i] = 0.0;
		}
		
		// FILL - SET ALL VALUES IN THE SIGNAL TO A CONSTANT
		void fill(tt_sample_value val)
		{
			int i;
			for(i=0; i<vectorsize; i++)
				vector[i] = val;
		}
		
};



#endif // TT_AUDIO_SIGNAL_HEADER
