/* 
 * jmod.param - clipping and range methods
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "jmod.param.h"		// everything we need is in here
#include "tt_audio_base.h"	// use the ttblue clipping functions


// Attempt to limit the range of values on generic input
void param_clip_generic(t_param *x)
{
	t_atom *a = &x->value;
	
	if(x->attr_clipmode == ps_low){
		if(a->a_type == A_LONG)
			tt_audio_base::limit_min(a->a_w.w_long, (long)x->attr_range[0]);
		else if(a->a_type == A_FLOAT)
			tt_audio_base::limit_min(a->a_w.w_float, x->attr_range[0]);
	}
	else if(x->attr_clipmode == ps_high){
		if(a->a_type == A_LONG)
			tt_audio_base::limit_max(a->a_w.w_long, (long)x->attr_range[1]);
		else if(a->a_type == A_FLOAT)
			tt_audio_base::limit_max(a->a_w.w_float, x->attr_range[1]);
	}
	else if(x->attr_clipmode == ps_both){
		if(a->a_type == A_LONG)
			tt_audio_base::clip(a->a_w.w_long, (long)x->attr_range[0], (long)x->attr_range[1]);
		else if(a->a_type == A_FLOAT)
			tt_audio_base::clip(a->a_w.w_float, x->attr_range[0], x->attr_range[1]);
	}
}


// range limiting on int input
void param_clip_int(t_param *x)
{
	long val = atom_getlong(&x->value);
	
	if(x->attr_clipmode == ps_low)
		val = tt_audio_base::limit_min(val, (long)x->attr_range[0]);
	else if(x->attr_clipmode == ps_high)
		val = tt_audio_base::limit_max(val, (long)x->attr_range[1]);
	else if(x->attr_clipmode == ps_both)
		val = tt_audio_base::clip(val, (long)x->attr_range[0], (long)x->attr_range[1]);

	atom_setlong(&x->value, val);	// must be set for all cases to cast the ps_none type correctly too
}


// range limiting on float input
void param_clip_float(t_param *x)
{
	float val = atom_getfloat(&x->value);

	if(x->attr_clipmode == ps_low)
		val = tt_audio_base::limit_min(val, x->attr_range[0]);
	else if(x->attr_clipmode == ps_high)
		val = tt_audio_base::limit_max(val, x->attr_range[1]);
	else if(x->attr_clipmode == ps_both)
		val = tt_audio_base::clip(val, x->attr_range[0], x->attr_range[1]);

	atom_setfloat(&x->value, val);	// must be set for all cases to cast the ps_none type correctly too
}
