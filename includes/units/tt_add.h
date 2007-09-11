/*
 *******************************************************
 *		VECTOR ADDITION
 *******************************************************
 *		TT Object
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
		tt_err 		set_attr(tt_selector sel, const tt_value &val);
		tt_err		get_attr(tt_selector sel, tt_value &value);
		void 		process(tt_audio_bundle *in, tt_audio_bundle *out)};

#endif // TT_ADD_H
