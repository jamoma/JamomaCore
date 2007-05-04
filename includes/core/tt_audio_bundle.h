// Interface for audio bundle objects (collections of signals)
// Copyright © 2007 by Timothy Place. All Rights Reserved.

#ifndef TT_AUDIO_BUNDLE_HEADER
#define TT_AUDIO_BUNDLE_HEADER


// taptools base header file
#include "tt_audio_base.h"
#include "tt_audio_signal.h"


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
			k_mode_external = 0,
			k_mode_local,
			k_num_channels
		};
		
		
		// creates wrapped signals (i.e. they all reference external memory)
		tt_audio_bundle(tt_uint8 num_signals)
		{
			tt_value a(num_signals);

			m_signal = NULL;
			m_num_signals = 0;
			vector = NULL;

			set_attr(k_num_channels, a);
		}
		
		// CREATE AN INSTANCE WITH internal memory
		tt_audio_bundle(tt_uint8 num_signals, tt_uint16 init_vector_size)
		{
			tt_value a;
			
			m_signal = NULL;
			m_num_signals = 0;
			vector = NULL;
			
			a.set_num_values(2);
			a.set(0, num_signals);
			a.set(1, init_vector_size);
		}
		
		// DESTROY AN INSTANCE
		~tt_audio_bundle()
		{
			while(m_num_signals--)
				delete m_signal[m_num_signals];
		}
		
/*
!!!
	SEEMS LIKE VECTORSIZE SHOULD BE AN ATTRIBUTE OF THE BASE CLASS
	maybe there is then a way to override by pushing the various inherited calls onto a stack or something
!!!
*/
		tt_err set_attr(tt_selector sel, const tt_value &value)		// Set Attributes
		{
			tt_uint8	numchans = value;
			tt_uint16	vs;
			
//			value.get(0, numchans);
			if(value.get_num_values() > 1)
				value.get(1, vs);
			
			switch(sel){
				case k_num_channels: 
					if(numchans == m_num_signals)
						break;
					if(m_num_signals){
						while(m_num_signals--)
							delete m_signal[m_num_signals];
						mem_free(m_signal);
					}
					
					m_num_signals = numchans;
					m_signal = (tt_audio_signal **)mem_alloc(sizeof(tt_audio_signal*) * m_num_signals);
					while(numchans--){
						if(value.get_num_values() == 1)	// use external memory
							m_signal[numchans] = new tt_audio_signal;
						else{							// allocate our own memory
							m_signal[numchans] = new tt_audio_signal(vs);
						}
					}
					break;
				default:
					return TT_ERR_ATTR_INVALID;
			}
			return TT_ERR_NONE;
		}
		
		
		tt_err get_attr(tt_selector sel, tt_value &value)			// Get Attributes
		{
			switch(sel){
				case k_num_channels: 
					value = m_num_signals;
					break;
				default:
					return TT_ERR_ATTR_INVALID;
			}
			return TT_ERR_NONE;
		}
		
		
		// OVERRIDE THE INHERITED SET VECTOR SIZE METHOD
		// Set the vectorsize for all signals in the bundle
		void set_vectorsize(tt_uint16 value)
		{
			tt_uint8 i;		
			for(i=0; i<m_num_signals; i++)
				m_signal[i]->set_vectorsize(value);
			vectorsize = value;
		}
		
		// Set the vectorsize for one signal in the bundle
		void set_vectorsize(tt_uint8 channel, tt_uint16 value)
		{
			m_signal[channel]->set_vectorsize(value);
			vectorsize = -1;
		}
		
		
		// SET A REFERENCE TO AN EXTERNAL VECTOR
		void set_vector(tt_uint8 channel, tt_sample_vector ext_vector)
		{
			m_signal[channel]->set_vector(ext_vector);
		}
		
		
		
		// RESET: Call reset on all members
		void reset()
		{
			tt_uint8 i;		
			for(i=0; i<m_num_signals; i++)
				m_signal[i]->reset();
		}
		
		// CLEAR - ZERO OUT A VECTOR'S CONTENTS
		void clear()
		{
			tt_uint8 i;		
			for(i=0; i<m_num_signals; i++)
				m_signal[i]->clear();
		}
				
		
		static tt_uint8 get_min_num_channels(tt_audio_bundle *bun1, tt_audio_bundle *bun2)
		{
			if(bun1->m_num_signals < bun2->m_num_signals)
				return bun1->m_num_signals;
			else
				return bun2->m_num_signals;
		}
		
		static tt_uint16 get_min_vs(tt_audio_bundle *bun1, tt_audio_bundle *bun2)
		{
			if(bun1->vectorsize < bun2->vectorsize)
				return bun1->vectorsize;
			else
				return bun2->vectorsize;
		}
				
		
		// should do some range checking maybe?
		void use_signal(tt_uint8 channel)
		{
			vector = m_signal[channel]->vector;
		}
};

#endif // TT_AUDIO_BUNDLE_HEADER
