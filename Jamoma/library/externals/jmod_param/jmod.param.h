/* 
 * jmod.param
 * External for Jamoma: parameter definition using pattr
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __JMOD_PARAM_H__
#define __JMOD_PARAM_H__

#include "ext.h"				// Max Header
#include "ext_obex.h"			// Max Object Extensions (attributes) Header
#include "commonsyms.h"			// Common symbols used by the Max 4.5 API

enum outlets{
	k_outlet_set = 0,
	k_outlet_direct,
	k_outlet_dumpout,
	num_outlets
};
			
typedef void (*pf_noargs)(void *x);			// pointer to a function with only the struct pointer given
											// must be defined so the struct will know what to do, but can't define it as requiring the struct
											
typedef struct _param{						// Data Structure for this object
	t_object	ob;							// REQUIRED: Our object
	void		*obex;						// REQUIRED: Object Extensions used by Jitter/Attribute stuff
	pf_noargs	param_bang;					// bang method for the instance points to an optimized function
	t_patcher	*container;
	void 		*outlets[num_outlets];		// my outlet array
	t_atom		value;						// The parameter's value
	t_symbol	*attr_name;					// ATTRIBUTE: parameter's name
	t_symbol	*attr_clipmode;				// ATTRIBUTE: how to constrain values to the specified ranges
	t_symbol	*attr_description;			// ATTRIBUTE: textual description of this parameter
	long		attr_ramp;					// ATTRIBUTE: ramp mode (0 = off, 1 = linear)
	float		ramp_time;					//		actual ramp time in milliseconds
	float		attr_range[2];				// ATTRIBUTE: low, high
	long		attr_range_len;				//		length actually given to us by the user
	long		attr_repetitions;			// ATTRIBUTE: 0 = filter out repetitions (like the change object)
	t_symbol	*attr_type;					// ATTRIBUTE: what kind of data doers this object define?
	t_symbol	*name;						// the first arg is the name of the parameter, which is stored by pattr - but we cache it here too...
	t_symbol	*module_name;				// the name of the module as reported when we bind to jmod.dispatcher
} t_param;


// Prototypes
// Defined in jmod.param.c
void		*param_new(t_symbol *s, long argc, t_atom *argv);
void		param_free(t_param *x);
void		param_assist(t_param *x, void *b, long msg, long arg, char *dst);
//void		param_bang(t_param *x);	
void param_bang_int(void *z);		// one of these is called from the bang method pointer in our struct...
void param_bang_float(void *z);
void param_bang_symbol(void *z);
void param_bang_menu(void *z);
void param_bang_generic(void *z);
void		param_int(t_param *x, long n);
void		param_float(t_param *x, double f);
void		param_symbol(t_param *x, t_symbol *msg, short argc, t_atom *argv);
void		param_list(t_param *x, t_symbol *msg, short argc, t_atom *argv);
void param_bind(t_param *x);
void		atom_copy(t_atom *dst, t_atom *src);
short		atom_compare(t_param *x, t_atom *a1, t_atom *a2);	// returns 1 if they match, 0 if they don't
void		atom_clip(t_param *x, t_atom *a);
void param_dispatched(t_param *x, t_symbol *msg, short argc, t_atom *argv);
t_max_err param_settype(t_param *x, void *attr, long argc, t_atom *argv);
// Defined in jmod.param.clip.c
void param_clip_generic(t_param *x);
void param_clip_int(t_param *x);
void param_clip_float(t_param *x);

extern t_symbol	*ps_none, *ps_low, *ps_high, *ps_both, *ps_generic, *ps_msg_int, *ps_msg_float, 
			*ps_msg_symbol, *ps_toggle, *ps_menu, *ps_jmod_dispatcher, *ps_bind;

#endif // #ifndef __JMOD_PARAM_H__