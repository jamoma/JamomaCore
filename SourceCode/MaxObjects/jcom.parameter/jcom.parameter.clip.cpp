/* 
 * jcom.param - clipping and range methods
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "jcom.parameter.h"		// everything we need is in here
#include "TTAudioObject.h"	// use the ttblue clipping functions


// Attempt to limit the range of values on generic input
void param_clip_generic(t_param *x)
{
	if(x->list_size > 1)
		param_clip_list(x);
	else if(x->atom_list[0].a_type == A_LONG)
		param_clip_int(x);
	else if(x->atom_list[0].a_type == A_FLOAT)
		param_clip_float(x);
}


// range limiting on int input
void param_clip_int(t_param *x)
{
	long val = atom_getlong(&x->attr_value);
	
	if(x->common.attr_clipmode == jps_low)
		val = TTLimitMin(val, (long)x->common.attr_range[0]);
	else if(x->common.attr_clipmode == jps_high)
		val = TTLimitMax(val, (long)x->common.attr_range[1]);
	else if(x->common.attr_clipmode == jps_both)
		val = TTClip(val, (long)x->common.attr_range[0], (long)x->common.attr_range[1]);

	atom_setlong(&x->attr_value, val);	// must be set for all cases to cast the jps_none type correctly too
}


// range limiting on float input
void param_clip_float(t_param *x)
{
	float val = atom_getfloat(&x->attr_value);

	if(x->common.attr_clipmode == jps_low)
		val = TTLimitMin(val, x->common.attr_range[0]);
	else if(x->common.attr_clipmode == jps_high)
		val = TTLimitMax(val, x->common.attr_range[1]);
	else if(x->common.attr_clipmode == jps_both)
		val = TTClip(val, x->common.attr_range[0], x->common.attr_range[1]);

	atom_setfloat(&x->attr_value, val);	// must be set for all cases to cast the jps_none type correctly too
}


// range limiting on list input
void param_clip_list(t_param *x)
{
	short i;
	
	for(i=0; i < x->list_size; i++){
		if(x->atom_list[i].a_type == A_LONG){
			if(x->common.attr_clipmode == jps_low)
				x->atom_list[i].a_w.w_long = TTLimitMin(x->atom_list[i].a_w.w_long, (long)x->common.attr_range[0]);
			else if(x->common.attr_clipmode == jps_high)
				x->atom_list[i].a_w.w_long = TTLimitMax(x->atom_list[i].a_w.w_long, (long)x->common.attr_range[1]);
			else if(x->common.attr_clipmode == jps_both)
				x->atom_list[i].a_w.w_long = TTClip(x->atom_list[i].a_w.w_long, (long)x->common.attr_range[0], (long)x->common.attr_range[1]);
		}
		else if(x->atom_list[i].a_type == A_FLOAT){
			if(x->common.attr_clipmode == jps_low)
				x->atom_list[i].a_w.w_float = TTLimitMin(x->atom_list[i].a_w.w_float, x->common.attr_range[0]);
			else if(x->common.attr_clipmode == jps_high)
				x->atom_list[i].a_w.w_float = TTLimitMax(x->atom_list[i].a_w.w_float, x->common.attr_range[1]);
			else if(x->common.attr_clipmode == jps_both)
				x->atom_list[i].a_w.w_float = TTClip(x->atom_list[i].a_w.w_float, x->common.attr_range[0], x->common.attr_range[1]);			
		}
	}
}
