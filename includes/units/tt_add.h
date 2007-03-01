/*
 *******************************************************
 *		VECTOR ADDITION
 *******************************************************
 *		TTBlue Object
 *		Copyright © 2003 by Timothy A. Place
 *
 */

// Check against redundant including
#ifndef TT_ADD_H
#define TT_ADD_H

// Include appropriate headers
#include "tt_audio_base.h"
#include "tt_audio_signal.h"


/********************************************************
	CLASS INTERFACE
 ********************************************************/

class tt_add:public tt_audio_base{

	private:
		
	public:
		tt_add(void);												// Constructor		
		~tt_add(void);												// Destructor
		// tt_add operator = (const tt_add &tt_add_source)			// use the generic c++ copy constructor
		tt_err 		set_attr(tt_selector sel, const tt_atom &val)
		{return TT_ERR_NONE;}
		tt_err		get_attr(tt_selector sel, tt_atom &value)
		{return TT_ERR_NONE;}
				
		void dsp_vector_calc(tt_audio_signal *in1, tt_audio_signal *in2, tt_audio_signal *out);
};

#endif // TT_ADD_H
