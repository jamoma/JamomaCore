/* 
 * jcom.param - clipping and range methods
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "jcom.parameter.h"		// everything we need is in here
#include "tt_audio_base.h"	// use the ttblue clipping functions


// Attempt to limit the range of values on generic input
void param_clip_generic(t_param *x)
{
	if(x->list_size > 1)
		param_clip_list(x);
	else if(x->atom_list[0].a_type == A_LONG)
		param_clip_int(x);
	else if(x->atom_list[0].a_type == A_FLOAT)
		param_clip_float(x);
		
//	THE OLD WAY OF DOING THE ABOVE IS BELOW, BUT THERE IS NO NEED TO REPEAT OURSELVES, IS THERE? [TAP]
/*	
	t_atom *a = &x->attr_value;

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
*/
}


// range limiting on int input
void param_clip_int(t_param *x)
{
	long val = atom_getlong(&x->attr_value);
	
	if(x->common.attr_clipmode == ps_low)
		val = tt_audio_base::limit_min(val, (long)x->common.attr_range[0]);
	else if(x->common.attr_clipmode == ps_high)
		val = tt_audio_base::limit_max(val, (long)x->common.attr_range[1]);
	else if(x->common.attr_clipmode == ps_both)
		val = tt_audio_base::clip(val, (long)x->common.attr_range[0], (long)x->common.attr_range[1]);

	atom_setlong(&x->attr_value, val);	// must be set for all cases to cast the ps_none type correctly too
}


// range limiting on float input
void param_clip_float(t_param *x)
{
	float val = atom_getfloat(&x->attr_value);

	if(x->common.attr_clipmode == ps_low)
		val = tt_audio_base::limit_min(val, x->common.attr_range[0]);
	else if(x->common.attr_clipmode == ps_high)
		val = tt_audio_base::limit_max(val, x->common.attr_range[1]);
	else if(x->common.attr_clipmode == ps_both)
		val = tt_audio_base::clip(val, x->common.attr_range[0], x->common.attr_range[1]);

	atom_setfloat(&x->attr_value, val);	// must be set for all cases to cast the ps_none type correctly too
}


// range limiting on list input
void param_clip_list(t_param *x)
{
	short i;
	
	for(i=0; i < x->list_size; i++){
		if(x->atom_list[i].a_type == A_LONG){
			if(x->common.attr_clipmode == ps_low)
				x->atom_list[i].a_w.w_long = tt_audio_base::limit_min(x->atom_list[i].a_w.w_long, (long)x->common.attr_range[0]);
			else if(x->common.attr_clipmode == ps_high)
				x->atom_list[i].a_w.w_long = tt_audio_base::limit_max(x->atom_list[i].a_w.w_long, (long)x->common.attr_range[1]);
			else if(x->common.attr_clipmode == ps_both)
				x->atom_list[i].a_w.w_long = tt_audio_base::clip(x->atom_list[i].a_w.w_long, (long)x->common.attr_range[0], (long)x->common.attr_range[1]);
		}
		else if(x->atom_list[i].a_type == A_FLOAT){
			if(x->common.attr_clipmode == ps_low)
				x->atom_list[i].a_w.w_float = tt_audio_base::limit_min(x->atom_list[i].a_w.w_float, x->common.attr_range[0]);
			else if(x->common.attr_clipmode == ps_high)
				x->atom_list[i].a_w.w_float = tt_audio_base::limit_max(x->atom_list[i].a_w.w_float, x->common.attr_range[1]);
			else if(x->common.attr_clipmode == ps_both)
				x->atom_list[i].a_w.w_float = tt_audio_base::clip(x->atom_list[i].a_w.w_float, x->common.attr_range[0], x->common.attr_range[1]);			
		}
	}
}
