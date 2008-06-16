/* 
 * jcom.return
 * External for Jamoma: return data from our module to the outside world
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"

enum outlets{
	k_outlet_thru = 0,
	k_outlet_dumpout,
	num_outlets
};


typedef struct _return{							// Data Structure for this object
	t_jcom_core_subscriber_extended	common;
	void 							*outlets[num_outlets];			// my outlet array
	t_atom							output[512];					// buffer that gets sent to the hub
	short							output_len;
	char							attrEnable;
} t_return;


// Prototypes
void*		return_new(t_symbol *s, long argc, t_atom *argv);
void		return_assist(t_return *x, void *b, long msg, long arg, char *dst);
void		return_bang(t_return *x);
void		return_int(t_return *x, long n);
void		return_float(t_return *x, double f);
void		return_symbol(t_return *x, t_symbol *msg, long argc, t_atom *argv);
void		return_list(t_return *x, t_symbol *msg, long argc, t_atom *argv);
void		return_send_feedback(t_return *x);
void		return_dump(t_return *x);
t_max_err	return_attr_gettype(t_return *x, void *attr, long *argc, t_atom **argv);
t_max_err	return_attr_settype(t_return *x, void *attr, long argc, t_atom *argv);


// Globals
t_class		*return_class;				// Required: Global pointer for our class


/************************************************************************************/
// Class Definition

int main(void)				// main recieves a copy of the Max function macros table
{
	t_class 	*c;
	t_object 	*attr = NULL;

	jamoma_init();
	common_symbols_init();

	// Define our class
	c = class_new("jcom.return",(method)return_new, (method)jcom_core_subscriber_common_free, sizeof(t_return), (method)0L, A_GIMME, 0);
	
	// Make methods accessible for our class:
	class_addmethod(c, (method)return_bang,					"bang",			A_CANT, 0L);
	class_addmethod(c, (method)return_int,					"int",			A_DEFLONG,	0L);
	class_addmethod(c, (method)return_float,				"float",		A_DEFFLOAT,	0L);
 	class_addmethod(c, (method)return_list,					"list",			A_GIMME, 0L);
 	class_addmethod(c, (method)return_symbol,				"anything",		A_GIMME, 0L);
	class_addmethod(c, (method)return_dump,					"dump",			0L);
	class_addmethod(c, (method)return_assist,				"assist",		A_CANT, 0L); 

	jcom_core_subscriber_classinit_extended(c, attr);
	
	// ATTRIBUTE: type - options are msg_generic, msg_int, msg_float, msg_symbol, msg_toggle
	jamoma_class_attr_new(c, "type", _sym_symbol, (method)return_attr_settype, (method)return_attr_gettype);
	
	CLASS_ATTR_CHAR(c,	"enable",	0,	t_return,	attrEnable);
	CLASS_ATTR_STYLE(c,	"enable",	0,	"onoff");
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	return_class = c;
	
	return 0;
}


/************************************************************************************/
// Object Life

void *return_new(t_symbol *s, long argc, t_atom *argv)
{
	long		attrstart = attr_args_offset(argc, argv);
	t_return*	x = (t_return *)object_alloc(return_class);
	t_symbol*	name = _sym_nothing;

	if(attrstart && argv)
		atom_arg_getsym(&name, 0, attrstart, argv);
	else
		name = symbol_unique();

	if(x){
		x->outlets[k_outlet_dumpout] = outlet_new(x, 0L);
		object_obex_store((void *)x, _sym_dumpout, (t_object *)x->outlets[k_outlet_dumpout]);
		x->outlets[k_outlet_thru] = outlet_new(x, 0L);

		jcom_core_subscriber_new_extended(&x->common, name, jps_subscribe_return);
		atom_setsym(&x->output[0], name);
		x->output_len = 1;
		x->attrEnable = true;
		
		attr_args_process(x, argc, argv);
		defer_low(x, (method)jcom_core_subscriber_subscribe, 0, 0, 0);
	}
	return (x);
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void return_assist(t_return *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 						// Inlet
		strcpy(dst, "data to return via jcom.hub");
	else{							// Outlets
		switch(arg){
			case k_outlet_dumpout:
					strcpy(dst, "dumpout");
					break;
		}
 	}		
}

// DUMP: use for debugging - dump state to the Max window
void return_dump(t_return *x)
{
	char	s[256];
	t_atom	a[4];
	
	if(x->common.hub != NULL){
		sprintf(s, "%s:/clipmode", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->common.attr_clipmode);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);

		sprintf(s, "%s:/description", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->common.attr_description);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);
/* TODO: Should we add ramping ability to this object?
		sprintf(s, "%s:ramp", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->attr_ramp);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);
*/
		sprintf(s, "%s:/range", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setfloat(&a[1], x->common.attr_range[0]);
		atom_setfloat(&a[2], x->common.attr_range[1]);
		object_method_typed(x->common.hub, jps_feedback, 3, a, NULL);

		sprintf(s, "%s:/repetitions", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setlong(&a[1], x->common.attr_repetitions);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);

		sprintf(s, "%s:/type", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->common.attr_type);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);
		
		sprintf(s, "%s:/enable", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setlong(&a[1], x->attrEnable);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);
	}
}


t_max_err return_attr_gettype(t_return *x, void *attr, long *argc, t_atom **argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom));
	atom_setsym(*argv, x->common.attr_type);

	return MAX_ERR_NONE;
}

t_max_err return_attr_settype(t_return *x, void *attr, long argc, t_atom *argv)
{
	if(argc && argv)
		x->common.attr_type = atom_getsym(argv);
	return MAX_ERR_NONE;
}


// Return values to the hub (so it can return them to the outside world)
void return_send_feedback(t_return *x)
{
	if(x->common.hub != NULL){
		if(x->common.has_wildcard)
			object_method_typed(x->common.hub, jps_return_extended, x->output_len, x->output, NULL);
		else
			object_method_typed(x->common.hub, jps_return, x->output_len, x->output, NULL);
	}
	x->output_len = 1;	// truncate to just the name of this jcom.return object
}


// BANG INPUT - this sends the OSC name with no additional arguments
void return_bang(t_return *x)
{
	if(!x->attrEnable)
		return;

	x->output_len = 1;
	if(x->common.hub != NULL)
		object_method_typed(x->common.hub, jps_return, x->output_len, x->output, NULL);
	
	outlet_anything(x->outlets[k_outlet_thru], x->common.attr_name, 0, NULL);
}


// INT INPUT
void return_int(t_return *x, long value)
{
	if(!x->attrEnable)
		return;

	atom_setlong(&x->output[1], value);
	x->output_len = 2;
	return_send_feedback(x);

	outlet_int(x->outlets[k_outlet_thru], value);
}


// FLOAT INPUT
void return_float(t_return *x, double value)
{
	if(!x->attrEnable)
		return;

	atom_setfloat(&x->output[1], value);
	x->output_len = 2;
	return_send_feedback(x);
	
	outlet_float(x->outlets[k_outlet_thru], value);	
}


// SYMBOL INPUT
void return_symbol(t_return *x, t_symbol *msg, long argc, t_atom *argv)
{
	short i;

	if(!x->attrEnable)
		return;

	atom_setsym(&x->output[1], msg);
	x->output_len++;
	
	for(i=1; i<=argc; i++){
		jcom_core_atom_copy(&x->output[i+1], argv++);
		x->output_len++;
	}	
	
	outlet_anything(x->outlets[k_outlet_thru], msg, x->output_len-2, &x->output[2]);
	return_send_feedback(x);
}

// LIST INPUT 
void return_list(t_return *x, t_symbol *msg, long argc, t_atom *argv)
{
	short i;
	
	if(!x->attrEnable)
		return;
	
	for(i=1; i<=argc; i++){
		jcom_core_atom_copy(&x->output[i], argv++);
		x->output_len++;
	}
	outlet_anything(x->outlets[k_outlet_thru], msg, x->output_len-1, &x->output[1]);
	return_send_feedback(x);
}
