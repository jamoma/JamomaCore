// Interface for audio bundle objects (collections of signals)
// Copyright © 2007 by Timothy Place. All Rights Reserved.

#ifndef TT_AUDIO_BUNDLE_HEADER
#define TT_AUDIO_BUNDLE_HEADER


// taptools base header file
#include "tt_audio_base.h"


/****************************************************************************************************/
// Class Specification

class tt_audio_bundle:public tt_audio_base{
	private:
		tt_audio_signal		**m_signal;
		tt_uint8			m_num_signals;
			
	public:
		tt_sample_vector	vector;				// made public for fast access in dsp routines
		//					 vectorsize;		// inherited
		
		enum selectors{
			k_mode_local = 1,
			k_mode_external = 0,
		};
		
		
		// creates wrapped signals (i.e. they all reference external memory)
		tt_audio_bundle(tt_uint8 num_signals)
		{
			m_num_signals = num_signals;
			m_signal = alloc(sizeof(tt_audio_signal*) * m_num_signals);
			while(num_signals--)
				m_signal[num_signals] = new tt_audio_signal;
		}
		
		// CREATE AN INSTANCE WITH internal memory
		tt_audio_bundle(tt_uint8 num_signals, tt_uint8 init_vector_size)
		{
			;
		}
		
		// DESTROY AN INSTANCE
		~tt_audio_signal()
		{
			;		// only free the vector if this instance is responsible for it!
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
			return TT_NOERR;
		}
		
		// RESET: Call reset on all members
		void reset()
		{
			tt_uint i;		
			for(i=0; i<m_num_signals; i++)
				m_signal[i].reset();
		}
		
		// CLEAR - ZERO OUT A VECTOR'S CONTENTS
		void clear()
		{
			tt_uint i;		
			for(i=0; i<m_num_signals; i++)
				m_signal[i].clear();
		}
				
};

#endif // TT_AUDIO_BUNDLE_HEADER
