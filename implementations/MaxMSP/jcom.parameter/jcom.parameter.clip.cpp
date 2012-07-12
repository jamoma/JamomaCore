/* 
 * jcom.param - clipping and range methods
 * By Tim Place, Copyright � 2006
 * Nils Peters:  added Clip and Wrap method
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "jcom.parameter.h"		// everything we need is in here
#include "TTAudioObject.h"	// use the ttblue clipping functions


// Attempt to limit the range of values on generic input
bool param_clip_generic(t_param *x)
{
	if (x->listTemp_size > 1)
		return param_clip_list(x);
	else if (x->atom_listTemp[0].a_type == A_LONG)
		return param_clip_int(x);
	else if (x->atom_listTemp[0].a_type == A_FLOAT)
		return param_clip_float(x);
	else
		return false;
}


// range limiting on int input
bool param_clip_int(t_param *x)
{
	long val = atom_getlong(&x->attr_valueTemp);
	long clipped = val;
	bool  reportClipping = true;

	if (x->common.attr_clipmode == jps_low)
		TTLimitMin(clipped, (long)x->common.attr_range[0]);
	else if (x->common.attr_clipmode == jps_high)
		TTLimitMax(clipped, (long)x->common.attr_range[1]);
	else if (x->common.attr_clipmode == jps_both)
		TTLimit(clipped, (long)x->common.attr_range[0], (long)x->common.attr_range[1]);
	else if (x->common.attr_clipmode == jps_wrap){
		clipped = TTInfWrap(clipped, (long)x->common.attr_range[0], (long)x->common.attr_range[1]);
		reportClipping = false;
	}
	else if (x->common.attr_clipmode == jps_fold){
		clipped = TTFold(clipped, (long)x->common.attr_range[0], (long)x->common.attr_range[1]);
		reportClipping = false;
	}	
	
	atom_setlong(&x->attr_valueTemp, clipped); // must be set for all cases to cast the jps_none type correctly too
	
	if (reportClipping and (clipped != val))
		return true;
	else 
		return false;
}


// range limiting on float input
bool param_clip_float(t_param *x)
{
	float val = atom_getfloat(&x->attr_valueTemp);
	float clipped = val;	
	bool  reportClipping = true;

	if (x->common.attr_clipmode == jps_low)
		TTLimitMin(clipped, x->common.attr_range[0]);
	else if (x->common.attr_clipmode == jps_high)
		TTLimitMax(clipped, x->common.attr_range[1]);
	else if (x->common.attr_clipmode == jps_both)
		TTLimit(clipped, x->common.attr_range[0], x->common.attr_range[1]);
	else if (x->common.attr_clipmode == jps_wrap){
		clipped = TTInfWrap(clipped, x->common.attr_range[0], x->common.attr_range[1]);
		reportClipping = false;
	}
	else if (x->common.attr_clipmode == jps_fold){
		clipped = TTFold(clipped, x->common.attr_range[0], x->common.attr_range[1]);
		reportClipping = false;
	}
	
	atom_setfloat(&x->attr_valueTemp, clipped); // must be set for all cases to cast the jps_none type correctly too
	
	// cannot just compare the two floats here, unfortunately, because of rounding errors from the clipping functions [TAP]
	if (reportClipping and (fabs(clipped-val) > 0.0001))
		return true; // did clip
	else
		return false; // did not clip, or difference was so small that we assume we didn't.
}


// range limiting on list input
bool param_clip_list(t_param *x)
{
	short i;
	float fclipped, fbefore;
	long iclipped, ibefore;
	
	// Initially we assume that all list members have clipped, so that ramping can be halted.
	// If we later on find a list member that did not clip, we set the flag to false
	bool didClipAll = true;
	
	for (i=0; i < x->listTemp_size; i++) {
		if (x->atom_listTemp[i].a_type == A_LONG) {
			ibefore = iclipped = x->atom_listTemp[i].a_w.w_long;
			if (x->common.attr_clipmode == jps_low)
				TTLimitMin(iclipped, (long)x->common.attr_range[0]);
			else if (x->common.attr_clipmode == jps_high)
				TTLimitMax(iclipped, (long)x->common.attr_range[1]);
			else if (x->common.attr_clipmode == jps_both)
				TTLimit(iclipped, (long)x->common.attr_range[0], (long)x->common.attr_range[1]);
			else if (x->common.attr_clipmode == jps_wrap)
				iclipped = TTInfWrap(iclipped, (long)x->common.attr_range[0], (long)x->common.attr_range[1]);
			else if (x->common.attr_clipmode == jps_fold)
				iclipped = TTFold(iclipped, (long)x->common.attr_range[0], (long)x->common.attr_range[1]);
			
			if (iclipped==ibefore)
				didClipAll = false; 
			
			x->atom_listTemp[i].a_w.w_long = iclipped;
		}
		else if (x->atom_listTemp[i].a_type == A_FLOAT) {
			fbefore = fclipped = x->atom_listTemp[i].a_w.w_float;
			if (x->common.attr_clipmode == jps_low)
				TTLimitMin(fclipped, x->common.attr_range[0]);
			else if (x->common.attr_clipmode == jps_high)
				TTLimitMax(fclipped, x->common.attr_range[1]);
			else if (x->common.attr_clipmode == jps_both)
				TTLimit(fclipped, x->common.attr_range[0], x->common.attr_range[1]);
			else if (x->common.attr_clipmode == jps_wrap)
				fclipped = TTInfWrap(fclipped, x->common.attr_range[0], x->common.attr_range[1]);
			else if (x->common.attr_clipmode == jps_fold)
				fclipped = TTFold(fclipped, x->common.attr_range[0], x->common.attr_range[1]);
			
			if (fbefore==fclipped)
				didClipAll = false;

			x->atom_listTemp[i].a_w.w_float = fclipped;
		}
	}
	if ((x->common.attr_clipmode==jps_fold) || (x->common.attr_clipmode== jps_wrap))
		didClipAll = false;
	
	return didClipAll;
}

