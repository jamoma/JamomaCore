/* 
 * jcom.param
 * External for Jamoma: parameter definition using pattr
 * By Tim Place, Copyright � 2006
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
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
#define attr_value			atom_list[0]
#define attr_valueDefault	atom_listDefault[0]

typedef struct _param{
	t_jcom_core_subscriber_extended	common;
	pf_noargs		param_output;				///< bang method for the instance points to an optimized function
	TTPtr 			outlets[num_outlets];		///< my outlet array
//	Atom			atom_list[LISTSIZE];		///< was "Atom attr_value;"	// ATTRIBUTE: The parameter's value
//	Atom			atom_listDefault[LISTSIZE];
	AtomPtr			atom_list;
	AtomPtr			atom_listDefault;
	long			list_size;					///< size of currently stored list
	long			listDefault_size;
	SymbolPtr		attr_ramp;					///< ATTRIBUTE: ramp mode 
	long			attr_ui_freeze;				///< ATTRIBUTE: freeze updating of graphical user interface
	float			attr_stepsize;				///< ATTRIBUTE: amount to increment or decrement by
	long			attr_priority;				///< ATTRIBUTE: does this parameter have a priority over other parameters when a preset is recalled?
	long			attr_readonly;
	float			attr_mixweight;				///< ATTRIBUTE: weight for preset/mix message
	//	Atom			name_atom;					///< the above name, but cached as an atom for quick referencing
	RampUnit*		ramper;						///< rampunit object to perform ramping of input values
	TTPtr			ui_qelem;					///< the output to the connected ui object is "qlim'd" with this qelem
	SymbolPtr		attr_rampfunction;			///< Attribute for setting the function used by the ramping
	TTHashPtr		rampParameterNames;			// cache of parameter names, mapped from lowercase (Max) to uppercase (TT)
	SymbolPtr		attr_dataspace;				///< The dataspace that this parameter uses (default is 'none')
	TTObjectPtr		dataspace_override2active;	///< Performs conversion from messages like 'gain -6 db' to the active unit
	TTObjectPtr		dataspace_active2display;	///< Performs conversion from the active input format to the format used by the parameter display
	TTObjectPtr		dataspace_display2active;	///< Performs conversion from the display/ui to get back to the active units
	TTObjectPtr		dataspace_active2native;	///< Performs conversions from the active input to pass on to the algorithm
	SymbolPtr		attr_unitNative;			///< The native (model/algorithm) unit within the dataspace.
	SymbolPtr		attr_unitActive;			///< The active (input/output) unit within the dataspace: the type of values a user is sending and receiving.
	SymbolPtr		attr_unitDisplay;			///< The display unit within the dataspace -- sent to/from the inlet/outlet of this instance
	SymbolPtr		attr_unitOverride;			///< An internal unit conversion that is used temporarily when the parameter's value is set with a non-active unit.
	method			callback;					///< A callback method that is used to pass output to an object that encapsulates this parameter (such as the jcom.ui)
	ObjectPtr		callbackArg;				///< The object for which the callback method should be applied
	ObjectPtr		receive;					///< Direct receive
	TTBoolean		isSending;					///< flag to tell us if we are currently sending out our value
	TTBoolean		isInitialised;				///< The parameter or message has been initialised
} t_param;


// Prototypes
// Defined in jcom.parameter.c

/** The jcom.parameter constructor */
void		*param_new(SymbolPtr s, AtomCount argc, AtomPtr argv);

/** The parameter deconstructor, frees any memory used by the parameter
 * @param x the parameter who's memory should be freed
 * @see param_free */
void		param_free(t_param *x);


void		param_subscribe(t_param *x);


/** Provides assistance on input and output while patching.
 * @param x the parameter instance
 * @param b
 * @param msg Determines is assistance was requested for an input or output
 * @param arg Determines what input/output assistance was requested for
 * @param dst destination that assistance string is copied to */
void		param_assist(t_param *x, void *b, long msg, long arg, char *dst);

/**	Create the direct receive object. */
void		param_makereceive(void *z);

/** Use for debugging - dump state to the Max window.
 * @param x the parameter instance to be investigated. */
void		param_dump(t_param *x);

/**'bang'method for user input. Return current value(s) locally, and request jcom.hub to process current value in usual fashion.
 * @param x The parameter instance */
void		param_bang(t_param *x);

/** Method called from the bang method pointer in our struct in order to output an int.
 * @param z The parameger instance that is requested to output an int.
 * @psee param_output_int param_output_float param_output_symbol param_output_generic param_output_list param_output_none */
void 		param_output_int(void *z);

/** Method called from the bang method pointer in our struct in order to output a float.
 * @param z The parameger instance that is requested to output a float.
 * @psee param_output_int param_output_float param_output_symbol param_output_generic param_output_list param_output_none */
void 		param_output_float(void *z);

/** Method called from the bang method pointer in our struct in order to output a symbol.
 * @param z The parameger instance that is requested to output a symbol.
 * @psee param_output_int param_output_float param_output_symbol param_output_generic param_output_list param_output_none */
void 		param_output_symbol(void *z);

/** Method called from the bang method pointer in our struct in order to output a generic message.
 * @param z The parameger instance that is requested to output a generic message.
 * @psee param_output_int param_output_float param_output_symbol param_output_generic param_output_list param_output_none */
void 		param_output_generic(void *z);

/** Method called from the bang method pointer in our struct in order to output a list.
 * @param z The parameger instance that is requested to output a list.
 * @psee param_output_int param_output_float param_output_symbol param_output_generic param_output_list param_output_none */
void 		param_output_list(void *z);

/** Method called from the bang method pointer in our struct in order to output a message with no arguments.
    Typically used by jcom.return to return an OSC message with no arguments.
 * @param z The parameger instance that is requested to output a message.
 * @psee param_output_int param_output_float param_output_symbol param_output_generic param_output_list param_output_none */
void		param_output_none(void *z);

/** Increase parameter value in steps. 
	Optional arguments passed as pointer to array of atoms specify
	how many steps to increase value by,
	if parameter is to ramp to new value
	and ramp time.
	@param x The parameter instance
	@param msg The inc symbol pointer
	@param Array length
	@param argv Pointer to atom array
	@see param_inc param_dec */
void 		param_inc(t_param *x, SymbolPtr msg, AtomCount argc, AtomPtr argv);

/** Decrease parameter value in steps. 
	Optional arguments passed as pointer to array of atoms specify
	how many steps to increase value by,
	if parameter is to ramp to new value
	and ramp time.
	@param x The parameter instance
	@param msg The dec symbol pointer
	@param Array length
	@param argv Pointer to atom array
	@see param_inc param_dec */
void 		param_dec(t_param *x, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		param_notify(t_param *x, SymbolPtr s, SymbolPtr msg, void *sender, void *data);

void		param_int(t_param *x, long n);
void		param_float(t_param *x, double f);
void		param_symbol(t_param *x, SymbolPtr s);
void		param_anything(t_param *x, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void 		param_send_feedback(t_param *x);

/**	Convert a list of atoms through the DataspaceLib from the active units into the native units.
	@param	x		Parameter or Message instance pointer.
	@param	argc	The number of input atoms.
	@param	argv	The address of the first of an array of input atoms.
	@param	rc		A pointer to a variable that will hold the number of returned atoms.
	@param	rv		A pointer to the address of the first of an array of output atoms.
	@param	alloc	A pointer to a bool that will be true if memory was allocated to the rv parameter.
					If no memory was allocated, then rv will be pointing to argv and alloc will be set to false.
*/
void		param_convert_units(t_param* x,AtomCount argc, AtomPtr argv, long* rc, AtomPtr* rv, bool* alloc);

void		param_list(t_param *x, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		param_ramp_callback_float(void *v, float value);
void		param_ramp_callback_int(void *v, float value);
void		param_ramp_callback_list(void *v, AtomCount argc, double *value);
void		atom_clip(t_param *x, AtomPtr a);

/** Messages received from jcom.hub
	@param	x		Parameter or Message instance pointer.
	@param	msg		The message received (bang, int, float, list or symbol).
	@param	argc	The number of input atoms.
	@param	argv	The address of the first of an array of input atoms.	
*/
void 		param_dispatched(t_param *x, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		param_getattrnames(t_param *x, long* count, SymbolPtr** names);

MaxErr	param_attr_getramp(t_param *x, void *attr, long *argc, AtomPtr *argv);
MaxErr	param_attr_setramp(t_param *x, void *attr, AtomCount argc, AtomPtr argv);
MaxErr	param_attr_gettype(t_param *x, void *attr, long *argc, AtomPtr *argv);
MaxErr 	param_attr_settype(t_param *x, void *attr, AtomCount argc, AtomPtr argv);
MaxErr	param_attr_getfreeze(t_param *x, void *attr, long *argc, AtomPtr *argv);
MaxErr	param_attr_setfreeze(t_param *x, void *attr, AtomCount argc, AtomPtr argv);
MaxErr	param_attr_getstepsize(t_param *x, void *attr, long *argc, AtomPtr *argv);
MaxErr	param_attr_setstepsize(t_param *x, void *attr, AtomCount argc, AtomPtr argv);
MaxErr	param_attr_getmixweight(t_param *x, void *attr, long *argc, AtomPtr *argv);
MaxErr	param_attr_setmixweight(t_param *x, void *attr, AtomCount argc, AtomPtr argv);
MaxErr	param_attr_getpriority(t_param *x, void *attr, long *argc, AtomPtr *argv);
MaxErr	param_attr_setpriority(t_param *x, void *attr, AtomCount argc, AtomPtr argv);
MaxErr	param_attr_getreadonly(t_param *x, void *attr, long *argc, AtomPtr *argv);
MaxErr	param_attr_setreadonly(t_param *x, void *attr, AtomCount argc, AtomPtr argv);
MaxErr	param_attr_getvalue(t_param *x, void *attr, long *argc, AtomPtr *argv);
MaxErr	param_attr_setvalue(t_param *x, void *attr, AtomCount argc, AtomPtr argv);
MaxErr	param_attr_getdefault(t_param *x, void *attr, long *argc, AtomPtr *argv);
MaxErr	param_attr_setdefault(t_param *x, void *attr, AtomCount argc, AtomPtr argv);
MaxErr	param_attr_getdataspace(t_param *x, void *attr, long *argc, AtomPtr *argv);
MaxErr	param_attr_setdataspace(t_param *x, void *attr, AtomCount argc, AtomPtr argv);
MaxErr	param_attr_getactiveunit(t_param *x, void *attr, long *argc, AtomPtr *argv);
MaxErr	param_attr_setactiveunit(t_param *x, void *attr, AtomCount argc, AtomPtr argv);
MaxErr	param_attr_getnativeunit(t_param *x, void *attr, long *argc, AtomPtr *argv);
MaxErr	param_attr_setnativeunit(t_param *x, void *attr, AtomCount argc, AtomPtr argv);
MaxErr	param_attr_getdisplayunit(t_param *x, void *attr, long *argc, AtomPtr *argv);
MaxErr	param_attr_setdisplayunit(t_param *x, void *attr, AtomCount argc, AtomPtr argv);

void 		param_ramp_setup(t_param *x);
void		param_ui_refresh(t_param *x);
void		param_ui_queuefn(t_param *x);
#ifndef JMOD_MESSAGE
MaxErr 	param_setvalueof(t_param *x, AtomCount argc, AtomPtr argv);
MaxErr 	param_getvalueof(t_param *x, long *argc, AtomPtr *argv);
void		param_reset(t_param *x);
#endif
void		param_setcallback(t_param *x, method newCallback, t_object *callbackArg);
MaxErr	param_attr_setrampfunction(t_param *x, void *attr, AtomCount argc, AtomPtr argv);
MaxErr	param_attr_getrampfunction(t_param *x, void *attr, long *argc, AtomPtr *argv);

// Defined in jcom.parameter.clip.c
bool 		param_clip_generic(t_param *x);
bool 		param_clip_int(t_param *x);
bool 		param_clip_float(t_param *x);
bool		param_clip_list(t_param *x);

#endif // #ifndef __JMOD_PARAM_H__
