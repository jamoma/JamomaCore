/* 
 * TTBlue MaxObject Layer for writing externals for Max/MSP
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_MAXOBJECT_H__
#define __TT_MAXOBJECT_H__


#include "ext.h"						// Max Header
#include "z_dsp.h"						// MSP Header
#include "ext_strings.h"				// String Functions
#include "commonsyms.h"					// Common symbols used by the Max 4.5 API
#include "ext_obex.h"					// Max Object Extensions (attributes) Header

#include "TTAudioObject.h"

typedef struct tt_maxobject{
	t_pxobject 		obj;
    void			*obex;
	TTAudioSignal	*audioIn;
	TTAudioSignal	*audioOut;
	long			maxNumChannels;
	long			attrBypass;
	t_perfroutine	performRoutine;
	TTAudioObject	*objectList[10];	///< list of objects that we are working with TODO: make this dynamically allocated instead of 10
	TTUInt16		objectCount;		///< how many objects are we working with?
} TTMaxObject;


void		ttMaxObjectInit(t_class *c, t_perfroutine performRoutine);
void		ttMaxObjectCreate(TTMaxObject *x, t_symbol *msg, short argc, t_atom *argv);
void		ttMaxObjectFree(TTMaxObject *x);
void		ttMaxObjectAdd(TTMaxObject *x, TTAudioObject *ttobj);
void		ttMaxObjectDSP(TTMaxObject *x, t_signal **sp, short *count);
t_max_err	ttMaxObjectSetBypass(TTMaxObject *x, void *attr, long argc, t_atom *argv);


#endif // __TT_MAXOBJECT_H__
