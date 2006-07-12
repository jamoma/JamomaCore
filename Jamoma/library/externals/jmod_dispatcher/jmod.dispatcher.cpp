/* 
 * jmod.dispatcher
 * External for Jamoma: dispatch messages to jmod.param objects (a potential replacement for jmod.hub)
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ext.h"					// Max Header
#include "ext_obex.h"				// Max Object Extensions (attributes) Header
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API

#define MAX_STRING_LEN 2048

enum outlets{
	k_outlet_return = 0,
	k_outlet_algorithm,
	k_outlet_psto,
	k_outlet_dumpout,
	k_num_outlets
};

typedef struct _parameter{
	void			*object;		// jmod.param object that represents this parameter
	t_symbol		*name;			// param name
	//long			priority;		// idea for the future: use assigned priorities from the object to setup psto
	_parameter		*next;			// next parameter in the linked list
} t_parameter;

typedef struct _dispatcher{					// Data Structure for this object
	t_object		ob;							// REQUIRED: Our object
	void			*obex;						// REQUIRED: Object Extensions used by Jitter/Attribute stuff
	void			*outlets[k_num_outlets];	// outlet array
	t_parameter		*parameter;					// linked list of parameters
	t_symbol		*attr_name;					// ATTRIBUTE: module name
	t_symbol		*attr_type;					// ATTRIBUTE: what kind of module is this?  (audio, video, control, etc.)
	t_symbol		*attr_description;			// ATTRIBUTE: textual description of this module
	long			num_inputs;					// ATTRIBUTE: 
	long			num_outputs;				// ATTRIBUTE: 
} t_dispatcher;


// Prototypes for our methods:
void		*dispatcher_new(t_symbol *s, long argc, t_atom *argv);
void		dispatcher_free(t_dispatcher *x);
void		dispatcher_assist(t_dispatcher *x, void *b, long msg, long arg, char *dst);
void		dispatcher_symbol(t_dispatcher *x, t_symbol *msg, short argc, t_atom *argv);
t_symbol*	dispatcher_bind(t_dispatcher *x, t_symbol *name, void *param_object);
void		atom_copy(t_atom *dst, t_atom *src);


// Globals
t_class		*dispatcher_class;				// Required: Global pointer for our class
t_symbol	*ps_audio, *ps_video, *ps_control, *ps_dispatched;


/************************************************************************************/
// Main() Function

int main(void)				// main recieves a copy of the Max function macros table
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	// Initialize Globals
	common_symbols_init();

	// Define our class
	c = class_new("jmod.dispatcher",(method)dispatcher_new, (method)dispatcher_free, (short)sizeof(t_dispatcher), (method)0L, A_GIMME, 0);
	class_obexoffset_set(c, calcoffset(t_dispatcher, obex));
	
	// Make methods accessible for our class:
 	class_addmethod(c, (method)dispatcher_symbol,			"anything",		A_GIMME, 0L);
	class_addmethod(c, (method)dispatcher_bind,				"bind",			A_CANT, 0L);
	class_addmethod(c, (method)dispatcher_assist,			"assist",		A_CANT, 0L); 
    class_addmethod(c, (method)object_obex_dumpout,			"dumpout",		A_CANT,0);  
    class_addmethod(c, (method)object_obex_quickref,		"quickref",		A_CANT, 0);

	// ATTRIBUTE: name
	attr = attr_offset_new("name", _sym_symbol, attrflags,
		(method)0, (method)0, calcoffset(t_dispatcher, attr_name));
	class_addattr(c, attr);
	
	// ATTRIBUTE: type
	attr = attr_offset_new("type", _sym_symbol, attrflags,
		(method)0, (method)0, calcoffset(t_dispatcher, attr_type));
	class_addattr(c, attr);
	
	// ATTRIBUTE: description
	attr = attr_offset_new("description", _sym_symbol, attrflags,
		(method)0, (method)0, calcoffset(t_dispatcher, attr_description));
	class_addattr(c, attr);
			
	// Init the globals
	ps_audio = gensym("audio");
	ps_video = gensym("video");
	ps_control = gensym("control");
	ps_dispatched = gensym("dispatched");

	// Finalize our class
	class_register(CLASS_BOX, c);
	dispatcher_class = c;
	return 0;
}


/************************************************************************************/
// Object Life

void *dispatcher_new(t_symbol *s, long argc, t_atom *argv)
{
	short			i;
	long			attrstart = attr_args_offset(argc, argv);
	t_dispatcher	*x = (t_dispatcher *)object_alloc(dispatcher_class);
	t_symbol		*name = _sym_nothing;
	
	if(attrstart && argv)
		atom_arg_getsym(&name, 0, attrstart, argv);
	else
		name = symbol_unique();

	if(x){
		for(i=k_num_outlets; i > 0; i--)
			x->outlets[i-1] = outlet_new(x, 0);
		object_obex_store((void *)x, _sym_dumpout, (t_object *)x->outlets[k_outlet_dumpout]);

//		x->attr_ramp = 0;							// set defaults...
//		atom_setlong(&x->value, 0);
		x->attr_name = name;
		x->attr_type = _sym_nothing;
		x->attr_description = _sym_nothing;
		
		x->parameter = NULL;						// prepare our linked list of params
		
		attr_args_process(x, argc, argv);			// handle attribute args
	}
	return (x);										// return the pointer to our new instantiation
}


void dispatcher_free(t_dispatcher *x)
{
	t_parameter *next;

	while(x->parameter != NULL){
		next = x->parameter->next;
		sysmem_freeptr(x->parameter);
		x->parameter = next;
	}
}


/************************************************************************************/
// Communication with jmod.param objects

// This method is called from jmod.param to register it with this dispatcher
t_symbol* dispatcher_bind(t_dispatcher *x, t_symbol *name, void *param_object)
{
	t_parameter *new_param;
	
	if(param_object == NULL){
		error("Null object cannot bind to jmod.dispatcher");
		return _sym_nothing;
	}
	
	new_param = (t_parameter *)sysmem_newptr(sizeof(t_parameter));
	new_param->object = param_object;
	new_param->name = name;
	new_param->next = x->parameter;
	
	x->parameter = new_param;
	return x->attr_name;			// return the module name to the parameter
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void dispatcher_assist(t_dispatcher *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 						// Inlet
		strcpy(dst, "input");
	else{							// Outlets
		switch(arg){
			case k_outlet_return:
					strcpy(dst, "return: connect to return outlet");
					break;
			case k_outlet_algorithm:
					strcpy(dst, "algorithm: connect to algorithm");
					break;
			case k_outlet_psto:
					strcpy(dst, "psto: connect to pattrstorage");
					break;
			case k_outlet_dumpout:
					strcpy(dst, "psto: connect to dumpout");
					break;
		}
 	}		
}


// SYMBOL INPUT
void dispatcher_symbol(t_dispatcher *x, t_symbol *msg, short argc, t_atom *argv)
{
	bool		found = false;
	t_parameter	*param = x->parameter;
	char		input[MAX_STRING_LEN];	// our input string
	char		*input2 = input;		// pointer to our input string
	char		*split;
	t_symbol	*osc = NULL;
	t_symbol	*name = msg;			// default to the name being the message

	strcpy(input, msg->s_name);
	
	if(*input2 == '/'){				// leading slash means it's OSC...
		input2++;						// remove the the leading slash
		split = strchr(input2, '/');		// remove (and store) the param name
		if(split != NULL){
			*split = NULL;
			split++;					// now input2 = param name; split = any remaining OSC		
			osc = gensym(split);
		}
		name = gensym(input2);
	}

	// search the linked list of params to find the right one
	while((param != NULL) && (found == false)){
		if(param->name == name){
			found = true;	// we found it!
			break;
		}
		param = param->next;
	}
	
	// dispatch to the correct jmod.param object
	if(found == true){
		if(osc == NULL)
			object_method_typed(param->object, ps_dispatched, argc, argv, NULL);
		else
			object_method_typed(param->object, osc, argc, argv, NULL);
	}
	else
		error("jmod.dispatcher cannot find a parameter by that name (%s)", name->s_name);

	
}


/************************************************************************************/
// Utilities

// copy an atom's contents into another atom
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

