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
bool param_clip_generic(t_param *x)
{
	if(x->list_size > 1)
		return param_clip_list(x);
	else if(x->atom_list[0].a_type == A_LONG)
		return param_clip_int(x);
	else if(x->atom_list[0].a_type == A_FLOAT)
		return param_clip_float(x);
}


// range limiting on int input
bool param_clip_int(t_param *x)
{
	long val = atom_getlong(&x->attr_value);
	long clipped;
	
	if(x->common.attr_clipmode == jps_low)
		clipped = TTLimitMin(val, (long)x->common.attr_range[0]);
	else if(x->common.attr_clipmode == jps_high)
		clipped = TTLimitMax(val, (long)x->common.attr_range[1]);
	else if(x->common.attr_clipmode == jps_both)
		clipped = TTClip(val, (long)x->common.attr_range[0], (long)x->common.attr_range[1]);
	else
		clipped = val;

	atom_setlong(&x->attr_value, clipped);	// must be set for all cases to cast the jps_none type correctly too
	return clipped != val;
}


// range limiting on float input
bool param_clip_float(t_param *x)
{
	float val = atom_getfloat(&x->attr_value);
	float clipped;

	if(x->common.attr_clipmode == jps_low)
		clipped = TTLimitMin(val, x->common.attr_range[0]);
	else if(x->common.attr_clipmode == jps_high)
		clipped = TTLimitMax(val, x->common.attr_range[1]);
	else if(x->common.attr_clipmode == jps_both)
		clipped = TTClip(val, x->common.attr_range[0], x->common.attr_range[1]);
	else
		clipped = val;

	atom_setfloat(&x->attr_value, clipped);	// must be set for all cases to cast the jps_none type correctly too
	return clipped != val;
}


// range limiting on list input
bool param_clip_list(t_param *x)
{
	short	i;
	float	fclipped;
	long	iclipped;
	bool	didClipAll = true;
	
	for(i=0; i < x->list_size; i++){
		if(x->atom_list[i].a_type == A_LONG){
			if(x->common.attr_clipmode == jps_low)
				iclipped = TTLimitMin(x->atom_list[i].a_w.w_long, (long)x->common.attr_range[0]);
			else if(x->common.attr_clipmode == jps_high)
				iclipped = TTLimitMax(x->atom_list[i].a_w.w_long, (long)x->common.attr_range[1]);
			else if(x->common.attr_clipmode == jps_both)
				iclipped = TTClip(x->atom_list[i].a_w.w_long, (long)x->common.attr_range[0], (long)x->common.attr_range[1]);

			if(didClipAll && !(iclipped == x->atom_list[i].a_w.w_long))
				didClipAll = false;
			x->atom_list[i].a_w.w_long = iclipped;
		}
		else if(x->atom_list[i].a_type == A_FLOAT){
			if(x->common.attr_clipmode == jps_low)
				fclipped = TTLimitMin(x->atom_list[i].a_w.w_float, x->common.attr_range[0]);
			else if(x->common.attr_clipmode == jps_high)
				fclipped = TTLimitMax(x->atom_list[i].a_w.w_float, x->common.attr_range[1]);
			else if(x->common.attr_clipmode == jps_both)
				fclipped = TTClip(x->atom_list[i].a_w.w_float, x->common.attr_range[0], x->common.attr_range[1]);			

			if(didClipAll && !(fclipped == x->atom_list[i].a_w.w_float))
				didClipAll = false;
			x->atom_list[i].a_w.w_float = fclipped;
		}
	}
	return didClipAll;
}
