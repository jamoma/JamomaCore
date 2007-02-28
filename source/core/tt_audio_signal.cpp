#include "tt_audio_signal.h"


// CREATE AN INSTANCE WITH A NULL VECTOR (useful for wrapping an external entity as an audio signal)
inline tt_audio_signal::tt_audio_signal()
{
	vector_start = vector = 0;
	vectorsize = 0;
	mode = k_mode_external;
}

// CREATE AN INSTANCE WITH A SPECIFIED VECTOR SIZE
inline tt_audio_signal::tt_audio_signal(short init_vector_size)
{
	tt_err	err;
	vectorsize = 0;
	vector_start = vector = 0;
	
	err = alloc(init_vector_size);
//if(err)
//log_error("YO! Could not instantiate tt_audio_signal");
	// !!! Should do something to handle this error if it occurs !!!
}

// DESTROY AN INSTANCE
inline tt_audio_signal::~tt_audio_signal()
{
	if(mode == k_mode_local)
		mem_free(vector);		// only free the vector if this instance is responsible for it!
}

// OVERRIDE THE INHERITED SET VECTOR SIZE METHOD
inline void tt_audio_signal::set_vectorsize(int value)
{
	vectorsize = /* vectorsize_start = */ value;
}

// SET A REFERENCE TO AN EXTERNAL VECTOR
inline void tt_audio_signal::set_vector(tt_sample_vector ext_vector)
{
	vector = vector_start = ext_vector;
}


// ALLOCATE A VECTOR - SET ITS SIZE
inline tt_err tt_audio_signal::alloc(short new_vector_size)
{
	mode = k_mode_local;							// flag this so the RAM is released on free
	if(new_vector_size != vectorsize){
		mem_free(vector);							// release any previously allocated memory for this vector
		vector_start = vector = (tt_sample_value *)mem_alloc((new_vector_size) * sizeof(tt_sample_value));	// allocate new memory
		if(vector == 0){
			vectorsize = 0;
			log_error("YO! Could not ALLOCATE tt_audio_signal");
			return TT_ERR_ALLOC_FAILED;
		}
		else{
			vectorsize = new_vector_size;			// store the size of the vector
			clear();
			//log_post("VECTOR_START: %i", vector_start);
			return TT_ERR_NONE;
		}
	}
	return TT_ERR_NONE;
}

// RESET THE VECTOR POINTER TO THE BEGINNING OF THE VECTOR
inline void tt_audio_signal::reset()
{
	//vectorsize = vectorsize_start;
	vector = vector_start;
}

// CLEAR - ZERO OUT A VECTOR'S CONTENTS
inline void tt_audio_signal::clear()
{
	short i;
	for(i=0; i<vectorsize; i++)
		vector[i] = 0.0;
}

// FILL - SET ALL VALUES IN THE SIGNAL TO A CONSTANT
inline void tt_audio_signal::fill(tt_sample_value val)
{
	int i;
	for(i=0; i<vectorsize; i++)
		vector[i] = val;
}
