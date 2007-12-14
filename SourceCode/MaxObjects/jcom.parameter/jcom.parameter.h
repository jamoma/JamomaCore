/* 
 * jcom.param
 * External for Jamoma: parameter definition using pattr
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __JMOD_PARAM_H__
#define __JMOD_PARAM_H__

#ifdef JMOD_MESSAGE
#define OBJECT_CLASS_NAME "jcom.message"
#else
#define OBJECT_CLASS_NAME "jcom.parameter"
#endif
// OBJECT_CLASS_NAME must be defined before this
// TODO: Does this actually work now with the headers in the frameworks? [TAP]
#include "Jamoma.h"


#define LISTSIZE 512	// TODO: Discuss longer list support for Max 5

enum outlets{
	k_outlet_set = 0,
	k_outlet_direct,
	k_outlet_dumpout,
	num_outlets
};
			
typedef void (*pf_noargs)(void *x);			// pointer to a function with only the struct pointer given
											// must be defined so the struct will know what to do, but can't define it as requiring the struct
#define attr_value	atom_list[0]

typedef struct _param{						// Data Structure for this object
	t_jcom_core_subscriber_extended	common;
	pf_noargs				param_output;				// bang method for the instance points to an optimized function
	void 					*outlets[num_outlets];	// my outlet array
	t_atom					atom_list[LISTSIZE];	// was "t_atom attr_value;"	// ATTRIBUTE: The parameter's value
	long					list_size;
	t_symbol				*attr_ramp;				// ATTRIBUTE: ramp mode 
	long					attr_slavemode;			// ATTRIBUTE: This instance is a slave of another instance, and simply forward anything recieved
	long					attr_ui_freeze;
	float					attr_stepsize;			// ATTRIBUTE: amount to increment or decrement by
	long					attr_priority;			// ATTRIBUTE: does this parameter have a priority over other parameters when a preset is recalled?
	t_symbol				*name;					// the first arg is the name of the parameter, which is stored by pattr - but we cache it here too...
	t_atom					name_atom;				// the above name, but cached as an atom for quick referencing
	rampunit				*ramper;				///< rampunit object to perform ramping of input values
	void					*ui_qelem;				// the output to the connected ui object is "qlim'd" with this qelem
	void					*ramp_qelem;			///< allows us to defer calls to setup a rampunit
	t_symbol				*attr_rampfunction;		///< Attribute for setting the function used by the ramping
} t_param;


// Prototypes
// Defined in jcom.parameter.c
void		*param_new(t_symbol *s, long argc, t_atom *argv);
void		param_free(t_param *x);
void		param_assist(t_param *x, void *b, long msg, long arg, char *dst);
void		param_dump(t_param *x);
void		param_bang(t_param *x);
void 		param_output_int(void *z);		// one of these is called from the bang method pointer in our struct...
void 		param_output_float(void *z);
void 		param_output_symbol(void *z);
void 		param_output_generic(void *z);
void 		param_output_list(void *z);
void		param_output_none(void *z);
void 		param_inc(t_param *x, t_symbol *msg, long argc, t_atom *argv);
void 		param_dec(t_param *x, t_symbol *msg, long argc, t_atom *argv);
void		param_int(t_param *x, long n);
void		param_float(t_param *x, double f);
void		param_symbol(t_param *x, t_symbol *msg, long argc, t_atom *argv);
void 		param_send_feedback(t_param *x);
void		param_list(t_param *x, t_symbol *msg, long argc, t_atom *argv);
void		param_ramp_callback_float(void *v, float value);
void		param_ramp_callback_int(void *v, float value);
void		param_ramp_callback_list(void *v, short argc, double *value);
void		atom_clip(t_param *x, t_atom *a);
void 		param_dispatched(t_param *x, t_symbol *msg, long argc, t_atom *argv);

t_max_err	param_attr_setramp(t_param *x, void *attr, long argc, t_atom *argv);
t_max_err	param_attr_getramp(t_param *x, void *attr, long *argc, t_atom **argv);
t_max_err 	param_attr_settype(t_param *x, void *attr, long argc, t_atom *argv);
t_max_err	param_attr_gettype(t_param *x, void *attr, long *argc, t_atom **argv);
t_max_err	param_attr_getfreeze(t_param *x, void *attr, long *argc, t_atom **argv);
t_max_err	param_attr_getstepsize(t_param *x, void *attr, long *argc, t_atom **argv);
t_max_err	param_attr_getpriority(t_param *x, void *attr, long *argc, t_atom **argv);
t_max_err	param_attr_getvalue(t_param *x, void *attr, long *argc, t_atom **argv);

void 		param_ramp_setup(t_param *x);
void		param_ui_refresh(t_param *x);
void		param_ui_queuefn(t_param *x);
#ifndef JMOD_MESSAGE
t_max_err 	param_setvalueof(t_param *x, long argc, t_atom *argv);
t_max_err 	param_getvalueof(t_param *x, long *argc, t_atom **argv);
#endif
t_max_err	param_attr_setrampfunction(t_param *x, void *attr, long argc, t_atom *argv);
t_max_err	param_attr_getrampfunction(t_param *x, void *attr, long *argc, t_atom **argv);
void		param_getRampFunctionParameter(t_param *obj, t_symbol *msg, long argc, t_atom *argv);
void		param_setRampFunctionParameter(t_param *obj, t_symbol *msg, long argc, t_atom *argv);
void		param_getRampDriveParameter(t_param *obj, t_symbol *msg, long argc, t_atom *argv);
void		param_setRampDriveParameter(t_param *obj, t_symbol *msg, long argc, t_atom *argv);


// Defined in jcom.parameter.clip.c
void 		param_clip_generic(t_param *x);
void 		param_clip_int(t_param *x);
void 		param_clip_float(t_param *x);
void		param_clip_list(t_param *x);

#endif // #ifndef __JMOD_PARAM_H__
