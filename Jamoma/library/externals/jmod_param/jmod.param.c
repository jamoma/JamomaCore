/* 
 * jmod.param
 * External for Jamoma: parameter definition using pattr
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "jmod.param.h"		// everything we need is in here


// Globals
t_class		*param_class;				// Required: Global pointer for our class
t_symbol	*ps_none, *ps_low, *ps_high, *ps_both, *ps_generic, *ps_msg_int, *ps_msg_float, 
			*ps_msg_symbol, *ps_toggle, *ps_menu, *ps_jmod_dispatcher, *ps_bind;


/************************************************************************************/
// Class Definition

int main(void)				// main recieves a copy of the Max function macros table
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	// Initialize Globals
	common_symbols_init();

	// Define our class
	c = class_new("jmod.param",(method)param_new, (method)param_free, (short)sizeof(t_param), (method)0L, A_GIMME, 0);
	class_obexoffset_set(c, calcoffset(t_param, obex));
	
	// Make methods accessible for our class:
	// Note that we can't make the bang method directly accessible here (must go through another function)
	//	because the function pointer is in out struct, which hasn't been defined yet
	class_addmethod(c, (method)param_dispatched,			"dispatched",	A_GIMME, 0L);
	class_addmethod(c, (method)param_int,					"int",			A_DEFLONG,	0L);
	class_addmethod(c, (method)param_float,					"float",		A_DEFFLOAT,	0L);
 	class_addmethod(c, (method)param_list,					"list",			A_GIMME, 0L);
 	class_addmethod(c, (method)param_symbol,				"anything",		A_GIMME, 0L);
	class_addmethod(c, (method)param_assist,				"assist",		A_CANT, 0L); 
    class_addmethod(c, (method)object_obex_dumpout,			"dumpout",		A_CANT,0);  
    class_addmethod(c, (method)object_obex_quickref,		"quickref",		A_CANT, 0);

	// ATTRIBUTE: clipmode - options are none, low, high, both
	attr = attr_offset_new("clipmode", _sym_symbol, attrflags,
		(method)0, (method)0, calcoffset(t_param, attr_clipmode));
	class_addattr(c, attr);

	// ATTRIBUTE: description
	attr = attr_offset_new("description", _sym_symbol, attrflags,
		(method)0, (method)0, calcoffset(t_param, attr_description));
	class_addattr(c, attr);
	
	// ATTRIBUTE: name
	attr = attr_offset_new("name", _sym_symbol, attrflags,
		(method)0, (method)0, calcoffset(t_param, attr_name));
	class_addattr(c, attr);	
	
	// ATTRIBUTE: ramp
	attr = attr_offset_new("ramp", _sym_long, attrflags,
		(method)0, (method)0, calcoffset(t_param, attr_ramp));
	class_addattr(c, attr);

	// ATTRIBUTE: range <low, high>
	attr = attr_offset_array_new("range", _sym_float, 2, attrflags,
		(method)0, (method)0, calcoffset(t_param, attr_range), calcoffset(t_param, attr_range_len));
	class_addattr(c, attr);

	// ATTRIBUTE: repetitions - 0 means no repetitive values are allowed, 1 means they are
	attr = attr_offset_new("repetitions", _sym_long, attrflags,
		(method)0, (method)0, calcoffset(t_param, attr_repetitions));
	class_addattr(c, attr);

	// ATTRIBUTE: type - options are generic, msg_int, msg_float, msg_symbol, toggle, menu
	attr = attr_offset_new("type", _sym_symbol, attrflags,
		(method)0, (method)param_settype, calcoffset(t_param, attr_type));
	class_addattr(c, attr);
		
	// Init the globals
	ps_none = gensym("none");
	ps_low = gensym("low");
	ps_high = gensym("high");
	ps_both = gensym("both");
	ps_generic = gensym("generic");
	ps_msg_int = gensym("msg_int");
	ps_msg_float = gensym("msg_float");
	ps_msg_symbol = gensym("msg_symbol");
	ps_toggle = gensym("toggle");
	ps_menu = gensym("menu");
	ps_jmod_dispatcher = gensym("jmod.dispatcher");
	ps_bind = gensym("bind");


	// Finalize our class
	class_register(CLASS_BOX, c);
	param_class = c;
	return 0;
}


/************************************************************************************/
// Object Life

void *param_new(t_symbol *s, long argc, t_atom *argv)
{
	short		i;
	long		attrstart = attr_args_offset(argc, argv);
	t_param		*x = (t_param *)object_alloc(param_class);
	t_symbol	*name = _sym_nothing;

	if(attrstart && argv)
		atom_arg_getsym(&name, 0, attrstart, argv);
	else
		name = symbol_unique();

	if(x){
		for(i=num_outlets; i > 0; i--)
			x->outlets[i-1] = outlet_new(x, 0);
		object_obex_store((void *)x, _sym_dumpout, (t_object *)x->outlets[k_outlet_dumpout]);

		x->attr_ramp = 0;							// set defaults...
		atom_setlong(&x->value, 0);
		x->module_name = _sym_nothing;
		x->name = name;
		x->attr_name = name;
		x->attr_clipmode = _sym_nothing;
		x->attr_description = _sym_nothing;
		x->attr_type = _sym_nothing;	
		x->param_bang = &param_bang_generic;		// set function pointer to default
		
		attr_args_process(x, argc, argv);			// handle attribute args
		
		x->container = (t_patcher *)gensym("#P")->s_thing;	
		defer_low(x, (method)param_bind, 0, 0, 0);
	}
	return (x);										// return the pointer to our new instantiation
}

// deferred function for registering with the jmod.dispatcher object
void param_bind(t_param *x)
{
	/* For the moment, we are only looking the same patcher as this object is in...
		We need to later add some code of looking up the patcher tree recursively 
		until we find a jmod.dispatcher or run out of patchers to search...
	*/
	t_patcher	*p = x->container;
	t_box		*b;
	t_class		*theclass;
	
	// traverse the linked list of boxes in the patch
	for(b = p->p_box; b; b = b->b_next){
		theclass = object_class(b->b_firstin);
		if(object_classname_compare(b->b_firstin, ps_jmod_dispatcher)){						// if this is a jmod.dispatcher...
			x->module_name = (t_symbol *)object_method(b->b_firstin, ps_bind, x->name, x);	// register with it, and get the module name
			break;																			// then stop looking
		}
	}
}


void param_free(t_param *x)
{
	/* We should add some code here to un-register this parameter from jmod.dispatcher,
		otherwise jmod.dispatcher will continue to try and send messages to it - most
		likely resulting in a crash...
	*/
	;
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void param_assist(t_param *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 						// Inlet
		strcpy(dst, "input");
	else{							// Outlets
		switch(arg){
			case k_outlet_set:
					strcpy(dst, "set: connect to ui object");
					break;
			case k_outlet_direct:
					strcpy(dst, "direct: values");
					break;
			case k_outlet_dumpout:
					strcpy(dst, "dumpout");
					break;
		}
 	}		
}



/* The 'bang' method is actually a function pointer to a method optimized for the 
	the data type of the parameter.
*/

void param_bang_generic(void *z)
{
	t_param *x = (t_param *)z;
	
	param_clip_generic(x);
	if(x->value.a_type == A_LONG)
		outlet_int(x->outlets[k_outlet_direct], x->value.a_w.w_long);
	else if(x->value.a_type == A_FLOAT)
		outlet_float(x->outlets[k_outlet_direct], x->value.a_w.w_float);
	else if(x->value.a_type == A_SYM)
		outlet_anything(x->outlets[k_outlet_direct], x->value.a_w.w_sym, 0, NULL);

	outlet_anything(x->outlets[k_outlet_set], _sym_set, 1, &x->value);
}

void param_bang_int(void *z)
{
	t_param *x = (t_param *)z;

	param_clip_int(x);
	outlet_int(x->outlets[k_outlet_direct], x->value.a_w.w_long);
	outlet_anything(x->outlets[k_outlet_set], _sym_set, 1, &x->value);
}

void param_bang_float(void *z)
{
	t_param *x = (t_param *)z;

	param_clip_float(x);
	outlet_float(x->outlets[k_outlet_direct], x->value.a_w.w_float);
	outlet_anything(x->outlets[k_outlet_set], _sym_set, 1, &x->value);
}

void param_bang_symbol(void *z)
{
	t_param *x = (t_param *)z;

	outlet_anything(x->outlets[k_outlet_direct], x->value.a_w.w_sym, 0, NULL);
	outlet_anything(x->outlets[k_outlet_set], _sym_set, 1, &x->value);
}

void param_bang_menu(void *z)
{
	t_param *x = (t_param *)z;

	outlet_anything(x->outlets[k_outlet_direct], x->value.a_w.w_sym, 0, NULL);
	outlet_anything(x->outlets[k_outlet_set], _sym_set, 1, &x->value);
}



// ATTRIBUTE: TYPE
// This is crucial because it sets function pointers for the optimized clipping, bang, and other functions
t_max_err param_settype(t_param *x, void *attr, long argc, t_atom *argv)
{
	t_symbol *arg = atom_getsym(argv);
	x->attr_type = arg;

	if(arg == ps_msg_int){
		x->param_bang = &param_bang_int;
	}
	else if(arg == ps_msg_float){
		x->param_bang = &param_bang_float;
	}
	else if(arg == ps_msg_symbol){
		x->param_bang = &param_bang_symbol;
	}
	else if(arg == ps_toggle){
		x->param_bang = &param_bang_int;
	}
	else if(arg == ps_menu){
		x->param_bang = &param_bang_menu;
	}
	else if(arg == ps_generic){
		x->param_bang = &param_bang_generic;
	}
	else{
		error("Jamoma - invalid type specified for %s parameter in the %s module.", x->name->s_name, x->module_name->s_name);
		x->attr_type = ps_generic;
		x->param_bang = &param_bang_generic;
	}

	return MAX_ERR_NONE;
	#pragma unused(attr)
}




// INT INPUT
void param_int(t_param *x, long value)
{
	atom_setlong(&x->value, value);
	object_notify(x, _sym_modified, NULL);
}


// FLOAT INPUT
void param_float(t_param *x, double value)
{
	atom_setfloat(&x->value, value);
	object_notify(x, _sym_modified, NULL);
}


// SYMBOL INPUT
void param_symbol(t_param *x, t_symbol *msg, short argc, t_atom *argv)
{
	atom_setsym(&x->value, msg);
	object_notify(x, _sym_modified, NULL);
}


// INPUT - RECEIVED FROM JMOD.DISPATCHER!!!
void param_dispatched(t_param *x, t_symbol *msg, short argc, t_atom *argv)
{
	atom_copy(&x->value, argv);
	x->param_bang(x);
}


// LIST INPUT <value, ramptime>
void param_list(t_param *x, t_symbol *msg, short argc, t_atom *argv)
{
	if(msg == _sym_int)
		x->ramp_time = atom_getlong(argv);
	else if(msg == _sym_float)
		x->ramp_time = atom_getfloat(argv);
	else{		// symbol, can't ramp
		error("jmod.param can't ramp using symbol value to specify time");
		return;
	}
	argv++;	// moving on to the 2nd arg...
	
	
}


/************************************************************************************/
// Utilities

void atom_copy(t_atom *dst, t_atom *src)
{
	if(src->a_type == A_LONG)
		atom_setlong(dst, src->a_w.w_long);
	else if(src->a_type == A_FLOAT)
		atom_setfloat(dst, src->a_w.w_float);	
	else if(src->a_type == A_SYM)
		atom_setsym(dst, src->a_w.w_sym);	
	else
		error("atom_copy: unrecognized type");
}

// NOTE: this function requires the user to have set the attr_type to something other
//	than generic...   Perhaps this enforces good form?  It certainly improves efficiency...
short atom_compare(t_param *x, t_atom *a1, t_atom *a2)
{
	if(x->attr_type == ps_msg_int){
		if(a1->a_w.w_long == a2->a_w.w_long)
			return 1;
	}
	else if(x->attr_type == ps_msg_float){
		if(a1->a_w.w_float == a2->a_w.w_float)
			return 1;
	}
	else if(x->attr_type == ps_msg_symbol){
		if(a1->a_w.w_sym == a2->a_w.w_sym)
			return 1;
	}
	else
		error("atom_compare: unrecognized type");
		
	return 0;
}

