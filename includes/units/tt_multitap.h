/*
 ********************************************************
 *		FIXED MULTITAP DELAY UNIT
 ********************************************************
 * 		TTBlue Object
 *		Copyright © 2003, 2004 by Timothy A. Place
 *
 */
 
// Check against redundant including
#ifndef TT_MULTITAP_H
#define TT_MULTITAP_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_multitap:public tt_audio_base{

	private:
		enum constants{
			k_buffersize_type_samples = 0,
			k_buffersize_type_ms = 1,
			k_buffersize_type,
			k_max_num_taps = 100,
		};
		bool							buffersize_type;				// Size of the delay buffer...
		tt_attribute_value				buffersize_ms;
		tt_attribute_value_discrete		buffersize_samples;
		tt_attribute_value				delay_ms[k_max_num_taps];		// length of the individual delays...
		tt_attribute_value_discrete		delay_samples[k_max_num_taps];
		tt_attribute_value				gain[k_max_num_taps];			// gain (in db) of each delay
		tt_attribute_value				master_gain;					// master output gain control (in db)
		tt_attribute_value_discrete		num_taps;						// number of delay taps active in the unit
		
		tt_sample_vector				buffer;							// pointer to first location in the buffer
		tt_sample_vector				buffer_end;						// pointer to last location in the buffer
		tt_sample_vector				buffer_in;						// "write" pointer for the buffer
		tt_sample_vector				buffer_out[k_max_num_taps];		// "read" pointers from the buffer for each delay
	
	public:
		enum selectors{
			k_buffersize_ms,
			k_buffersize_samples,
			k_delay_ms,
			k_delay_samples,
			k_gain,
			k_master_gain,
			k_num_taps,
		};	


	// OBJECT LIFE ************************************
	tt_multitap(tt_attribute_value_discrete value);		// Instance Constructor: INT ARGUMENT
	tt_multitap(tt_attribute_value value);				// Instance Constructor: FLOAT ARGUMENT
	~tt_multitap();										// Instance Destructor

	// OVER-RIDEN SR METHOD ***************************
	void set_sr(const tt_atom &value);
	// OVER-RIDEN VS METHOD ***************************
	void set_vectorsize(const tt_atom &value);
	
	// ATTRIBUTES *************************************	
// IN THIS METHOD, SOME ATTRIBUTES REQUIRE AN ATOM WITH 2 VALUES
	tt_err 		set_attr(tt_selector sel, const tt_atom &val);
// THE FOLLOWing IS NOT NORMAL
// You pass in a tt_atom, and it is replaced on return
	tt_err		get_attr(tt_selector sel, tt_atom &value);
		
	// DSP ROUTINE(S) *********************************	
	void dsp_vector_calc(tt_audio_signal *in, tt_audio_signal *out);
	
	// ADDITIONAL METHODS *****************************
	void clear(void);
private:	
	void init_buffer();
	void reset(void);	
	void position_playheads();				// point play heads to the correct location
};

#endif // TT_MULTITAP_H
