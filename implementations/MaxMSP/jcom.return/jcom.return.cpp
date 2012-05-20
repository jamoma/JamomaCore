/** 
 * \file jcom.return.cpp
 * External for Jamoma: return data from our module to the outside world
 * By Tim Place, Copyright � 2006
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "Jamoma.h"

enum outlets{
	k_outlet_thru = 0,
	k_outlet_dumpout,
	num_outlets
};


typedef struct _return {
	t_jcom_core_subscriber_extended	common;
	void 							*outlets[num_outlets];	// my outlet array
	t_atom							output[JAMOMA_LISTSIZE+1];// buffer that gets sent to the hub
	int								output_len;
	int								input_len;				//used in return_lis, stores the length of a list w/o the OSC name 
	char							attrEnable;
	t_symbol						*attrDataspace;
	t_symbol						*attrUnit;

	t_object*						send;					// send object for direct sending
} t_return;


// Prototypes
void*		return_new(t_symbol *s, long argc, t_atom *argv);
void		return_makesend(t_return *x);
void		return_free(t_return *x);
void		return_assist(t_return *x, void *b, long msg, long arg, char *dst);
void		return_updatename(t_return *x);
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

int param_list_compare(t_atom *x, long lengthx, t_atom *y, long lengthy);

/************************************************************************************/
// Class Definition

int JAMOMA_EXPORT_MAXOBJ main(void)
{
	t_class 	*c;
	t_object 	*attr = NULL;
	TTValue		dataspaceNames;
	char		dataspaces[2048];
	short		i;

	jamoma_init();
	common_symbols_init();
	
	TTGetRegisteredClassNamesForTags(dataspaceNames, TT("dataspace"));	
	dataspaces[0] = 0;
	for (int i=0; i < dataspaceNames.getSize(); i++) {
		TTSymbolPtr	name;
		
		dataspaceNames.get(i, &name);
		strcat(dataspaces, name->getCString());
		strcat(dataspaces, " ");
	}
	
	// Define our class
	c = class_new("jcom.return",(method)return_new, (method)return_free, sizeof(t_return), (method)0L, A_GIMME, 0);
	
	// Make methods accessible for our class:
	class_addmethod(c, (method)return_bang,					"bang",			A_CANT, 0L);
	class_addmethod(c, (method)return_int,					"int",			A_DEFLONG,	0L);
	class_addmethod(c, (method)return_float,				"float",		A_DEFFLOAT,	0L);
 	class_addmethod(c, (method)return_list,					"list",			A_GIMME, 0L);
 	class_addmethod(c, (method)return_symbol,				"anything",		A_GIMME, 0L);
	class_addmethod(c, (method)return_dump,					"dump",			0L);
	class_addmethod(c, (method)return_updatename,			"update_name",	A_CANT, 0L);
	class_addmethod(c, (method)return_assist,				"assist",		A_CANT, 0L); 

	jcom_core_subscriber_classinit_extended(c, attr);
	
	// ATTRIBUTE: type - options are generic, integer, decimal, string, boolean
	jamoma_class_attr_new(c, "type", _sym_symbol, (method)return_attr_settype, (method)return_attr_gettype);
	CLASS_ATTR_ENUM(c,		 "type",	0,					"integer decimal boolean string array generic");
	// ATTRIBUTES: dataspace stuff
	
	CLASS_ATTR_SYM(c,						"dataspace",					0,	t_return, attrDataspace);
	CLASS_ATTR_LABEL(c,						"dataspace",					0,	"dataspace");
	CLASS_ATTR_ENUM(c,						"dataspace",					0, dataspaces);
	class_addmethod(c, (method)jamoma_class_attr_get, "dataspace/get", A_GIMME, 0);

	CLASS_ATTR_SYM(c,						"dataspace/unit",		0,	t_return, attrUnit);
	CLASS_ATTR_LABEL(c,						"dataspace/unit",		0,	"dataspace/unit");
	class_addmethod(c, (method)jamoma_class_attr_get, "dataspace/unit/get", A_GIMME, 0);

	CLASS_ATTR_CHAR(c,						"enable",						0,	t_return,	attrEnable);
	CLASS_ATTR_STYLE(c,						"enable",						0,	"onoff");
	class_addmethod(c, (method)jamoma_class_attr_get, "enable/get", A_GIMME, 0);
	
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
	ObjectPtr	patcher = NULL;

	if (attrstart && argv)
		atom_arg_getsym(&name, 0, attrstart, argv);
	else
		name = symbol_unique();

	// for instances buried inside of another object:
	// we pass a second argument which is a pointer to the patcher
	if (attrstart>1 && argv)
		patcher = ObjectPtr(atom_getobj(argv+1));

	if (x) {
		x->outlets[k_outlet_dumpout] = outlet_new(x, 0L);
		object_obex_store((void *)x, _sym_dumpout, (t_object *)x->outlets[k_outlet_dumpout]);
		x->outlets[k_outlet_thru] = outlet_new(x, 0L);

		jcom_core_subscriber_new_extended(&x->common, name, jps_subscribe_return);
		atom_setsym(&x->output[0], name);
		x->output_len = 1;
		x->attrEnable = true;
		x->attrDataspace = jps_none;
		x->attrUnit = jps_none;
		
		if (patcher)
			x->common.container = patcher;
		
		attr_args_process(x, argc, argv);
		jcom_core_subscriber_subscribe((t_jcom_core_subscriber_common*)x);
		return_makesend(x);
	}
	return (x);
}


void return_makesend(t_return *x)
{
	t_atom		a;
	char		osc[512];
	t_symbol*	module_name = object_attr_getsym(x->common.hub, _sym_name);

	if (module_name && module_name != _sym_nothing) {
		strcpy(osc, module_name->s_name);
		strcat(osc, "/");
		strcat(osc, x->common.attr_name->s_name);
		atom_setsym(&a, gensym(osc));
		x->send = (t_object*)object_new_typed(_sym_box, jps_jcom_send, 1, &a);
	}
	else
		defer_low(x, (method)return_makesend, 0, 0, 0);
}


void return_free(t_return *x)
{
	jcom_core_subscriber_common_free((t_jcom_core_subscriber_common*)x);
	if (x->send)
		object_free(x->send);
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void return_assist(t_return *x, void *b, long msg, long arg, char *dst)
{
	if (msg==1) 						// Inlet
		strcpy(dst, "data to return via jcom.hub");
	else {							// Outlets
		switch(arg) {
			case k_outlet_dumpout:
					strcpy(dst, "dumpout");
					break;
		}
 	}		
}

void return_updatename(t_return *x)
{
	atom_setsym(&x->output[0], x->common.attr_name);
}


// DUMP: use for debugging - dump state to the Max window
void return_dump(t_return *x)
{
	char	s[256];
	t_atom	a[4];
	
	if (x->common.hub != NULL) {

		snprintf(s, 256, "%s:/description", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->common.attr_description);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);
		
		snprintf(s, 256, "%s:/dataspace", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->attrDataspace);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);
		
		snprintf(s, 256, "%s:/dataspace/unit", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->attrUnit);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);
		
		snprintf(s, 256, "%s:/enable", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setlong(&a[1], x->attrEnable);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);
		
/* TODO: Should we add ramping ability to this object?
		snprintf(s, 256, "%s:ramp", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->attr_ramp);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);
*/
		snprintf(s, 256, "%s:/range/bounds", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setfloat(&a[1], x->common.attr_range[0]);
		atom_setfloat(&a[2], x->common.attr_range[1]);
		object_method_typed(x->common.hub, jps_feedback, 3, a, NULL);
		
		snprintf(s, 256, "%s:/range/clipmode", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->common.attr_clipmode);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);

		snprintf(s, 256, "%s:/repetitions/allow", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setlong(&a[1], x->common.attr_repetitions);
		object_method_typed(x->common.hub, jps_feedback, 2, a, NULL);

		snprintf(s, 256, "%s:/type", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->common.attr_type);
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
	if (argc && argv)
		x->common.attr_type = atom_getsym(argv);
	return MAX_ERR_NONE;
}

// Return values to the hub (so it can return them to the outside world)
void return_send_feedback(t_return *x)
{
	if (x->common.hub != NULL) {
		if (x->common.has_wildcard)
			object_method_typed(x->common.hub, jps_return_extended, x->output_len, x->output, NULL);
		else
			object_method_typed(x->common.hub, jps_return, x->output_len, x->output, NULL);
	}
	
	if (x->send) {
		if (x->output_len > 2) {
			if (x->output[1].a_type == A_FLOAT || x->output[1].a_type == A_LONG)
				object_method_typed(x->send, _sym_list, x->output_len-1, x->output+1, NULL);		
			else
				object_method_typed(x->send, atom_getsym(x->output), x->output_len-1, x->output+1, NULL);
		}
		else if (x->output_len > 1) {
			if (x->output[1].a_type == A_FLOAT)
				object_method_typed(x->send, _sym_float, x->output_len-1, x->output+1, NULL);		
			else if (x->output[1].a_type == A_LONG)
				object_method_typed(x->send, _sym_int, x->output_len-1, x->output+1, NULL);		
			else{				
				object_method_typed(x->send, atom_getsym(x->output), 0, NULL, NULL);
			}
		}
		else
			object_method_typed(x->send, _sym_bang, 0, NULL, NULL);	
	}
	x->output_len = 1;	// truncate to just the name of this jcom.return object
}


// BANG INPUT - this sends the OSC name with no additional arguments
void return_bang(t_return *x)
{
	if (!x->attrEnable)
		return;

	x->output_len = 1;
	if (x->common.hub != NULL)
		object_method_typed(x->common.hub, jps_return, x->output_len, x->output, NULL);
	
	outlet_anything(x->outlets[k_outlet_thru], x->common.attr_name, 0, NULL);
}


// INT INPUT
void return_int(t_return *x, long value)
{
	if (!x->attrEnable)
		return;
	if (x->common.attr_repetitions == 0) {
		if (value == atom_getlong(&x->output[1]))
			return;
	}
	if (x->common.attr_clipmode != _sym_none) {
		if (x->common.attr_clipmode == jps_both)
			TTLimit<TTInt32>(value, x->common.attr_range[0], x->common.attr_range[1]);
		else if (x->common.attr_clipmode == jps_low)
			TTLimitMin<TTInt32>(value, x->common.attr_range[0]);
		else if (x->common.attr_clipmode == jps_high)
			TTLimitMax<TTInt32>(value, x->common.attr_range[1]);
		else if (x->common.attr_clipmode == jps_wrap)
			value = TTInfWrap<TTInt32>(value,x->common.attr_range[0], x->common.attr_range[1]);
		else if (x->common.attr_clipmode == jps_fold)
			value = TTFold<TTInt32>(value, x->common.attr_range[0], x->common.attr_range[1]);
	}
    
	atom_setlong(&x->output[1], value);
	x->output_len = 2;
	return_send_feedback(x);

	outlet_int(x->outlets[k_outlet_thru], value);
}


// FLOAT INPUT
void return_float(t_return *x, double value)
{
	if (!x->attrEnable)
		return;    
	if (x->common.attr_repetitions == 0) {
		if (value == atom_getfloat(&x->output[1]))
			return;
	}
	if (x->common.attr_clipmode != _sym_none) {
		if (x->common.attr_clipmode == jps_both)
			TTLimit<TTFloat64>(value, x->common.attr_range[0], x->common.attr_range[1]);
		else if (x->common.attr_clipmode == jps_low)
			TTLimitMin<TTFloat64>(value, x->common.attr_range[0]);
		else if (x->common.attr_clipmode == jps_high)
			TTLimitMax<TTFloat64>(value, x->common.attr_range[1]);
		else if (x->common.attr_clipmode == jps_wrap)
			value = TTInfWrap<TTFloat64>(value, x->common.attr_range[0], x->common.attr_range[1]);
		else if (x->common.attr_clipmode == jps_fold)
			value = TTFold<TTFloat64>(value, x->common.attr_range[0], x->common.attr_range[1]);
	}

	atom_setfloat(&x->output[1], value);
	x->output_len = 2;
	return_send_feedback(x);
	
	outlet_float(x->outlets[k_outlet_thru], value);	
}


// SYMBOL INPUT
void return_symbol(t_return *x, t_symbol *msg, long argc, t_atom *argv)
{
	short i;

	if (!x->attrEnable)
		return;

	if (x->common.attr_type == jps_decimal){
		return_float(x, 0.0);
		}
	else 
		if ((x->common.attr_type == jps_integer) || (x->common.attr_type == jps_boolean)){
			return_int(x, 0);
		}
	else 
		if ((x->common.attr_type == jps_array) || (x->common.attr_type == jps_generic)){
			return_list(x, msg, argc, argv-1);
		}
	else { //assuming jps_string now		
		if (x->common.attr_repetitions == 0) {
			if (msg == atom_getsym(&x->output[1]))
			return;
		}
		
		atom_setsym(&x->output[1], msg);	
		x->output_len= 2;
		x->input_len = 1;
			
		
		/*for (i=1; i<=argc; i++) {
			jcom_core_atom_copy(&x->output[i+1], argv++);
			x->output_len++;
		}*/
		
		outlet_anything(x->outlets[k_outlet_thru], msg, 0, &x->output[2]);
		return_send_feedback(x);
	}
}


// LIST INPUT 
void return_list(t_return *x, t_symbol *msg, long argc, t_atom *argv)
{
	
	if (!x->attrEnable)
		return;
	
	int i;
	short offset = 1;
	
	if (x->common.attr_type == jps_integer){
		return_int(x, atom_getlong(argv));
		}
	else 
		if (x->common.attr_type == jps_decimal){
			return_float(x, atom_getfloat(argv));
		}
	else
		if (x->common.attr_type == jps_boolean){
			return_int(x, atom_getlong(argv));
		}
	else
		if (x->common.attr_type == jps_string){					
			return_symbol(x, msg, 0, argv);
		}
	else { //if (x->common.attr_type == jps_array){
		if (argv[0].a_type == A_SYM){ //otherwise we get for lists starting with a symbol a wrong output a k_outlet_thru
			offset++; 	
			argc++;		
		}
			
			
		TTLimitMax(argc, (long)JAMOMA_LISTSIZE); //making sure that the incoming list is not longer than our allocated memory 
		
		if (x->common.attr_repetitions == 0) {
			if (param_list_compare(x->output+1, x->input_len, argv, argc))
				return;	// nothing to do
		}	
		
		for (i=1; i<=argc; i++) {
			jcom_core_atom_copy(&x->output[i], argv++);		
		}
		
		x->output_len = i;
		x->input_len = x->output_len-1;
		outlet_anything(x->outlets[k_outlet_thru], msg, x->output_len-offset, &x->output[offset]);
		return_send_feedback(x);
	}	
}

// Returns true if lists are identical
int param_list_compare(t_atom *x, long lengthx, t_atom *y, long lengthy)
{
	// If lists differ in length they're obviously not the same
	if (lengthx == lengthy) {
		short type;
		for (int i = 0; i < lengthx; i++) {
			if ((x->a_type) != (y->a_type))
				return 0; // not identical, types differ
			
			type = x->a_type;
			if ((type == A_FLOAT) && (x->a_w.w_float != y->a_w.w_float))
				return 0;
			else if ((type == A_LONG) && (x->a_w.w_long != y->a_w.w_long))
				return 0;
			else if ((type == A_SYM) && (x->a_w.w_sym != y->a_w.w_sym))
				return 0;
			
			x++; y++;  // keep going
		}
	} 
	else {
		return 0; // list lengths differ
	}
	
	return 1;
}