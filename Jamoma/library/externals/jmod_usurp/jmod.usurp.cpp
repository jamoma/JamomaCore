// External Object for Jamoma: queues messages to the back of Max's main thread, 
// 								usurping them if a new message is received
// By Timothy Place, Copyright © 2005
// License: GNU LGPL

#include "ext.h"					// Max Header
#include "ext_common.h"				// includes the MIN macro
#include "ext_strings.h"			// String Functions
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API
#include "ext_obex.h"				// Max Object Extensions (attributes) Header

#define MAX_LIST_LENGTH 256

// Data Structure for this object
typedef struct _usurp{
	t_object	ob;						// object
	void		*obex;					// object extensions
	void 		*outlet;				// pointer to outlet 

	t_atom		argv[MAX_LIST_LENGTH];	// stored atoms for output
	short		argc;					// len
	
	void		*qelem;					// queue element
} t_usurp;

// Prototypes for our methods:
void *usurp_new(t_symbol *s, long argc, t_atom *argv);
void usurp_free(t_usurp *x);
void usurp_assist(t_usurp *x, void *b, long msg, long arg, char *dst);
void usurp_bang(t_usurp *x);
void usurp_int(t_usurp *x, long value);
void usurp_float(t_usurp *x, double value);
void usurp_list(t_usurp *x, t_symbol *msg, short argc, t_atom *argv);
void usurp_symbol(t_usurp *x, t_symbol *msg, short argc, t_atom *argv);
void usurp_qfn(t_usurp *x);

// Globals
t_class		*usurp_class;				// Required: Global pointer for our class


/************************************************************************************/
// Main() Function

void main(void)				// main recieves a copy of the Max function macros table
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	// Initialize Globals
	common_symbols_init();

	// Define our class
	c = class_new("jmod.usurp",(method)usurp_new, (method)usurp_free, (short)sizeof(t_usurp), (method)0L, A_GIMME, 0);
	class_obexoffset_set(c, calcoffset(t_usurp, obex));

	// Make methods accessible for our class: 
 	class_addmethod(c, (method)usurp_bang,				"bang", 0L);
  	class_addmethod(c, (method)usurp_int,				"int", 0L);
 	class_addmethod(c, (method)usurp_float,				"float", 0L);
  	class_addmethod(c, (method)usurp_list,				"list", A_GIMME, 0L);	
  	class_addmethod(c, (method)usurp_symbol,			"anything", A_GIMME, 0L);	
	class_addmethod(c, (method)usurp_assist,			"assist", A_CANT, 0L); 
    class_addmethod(c, (method)object_obex_dumpout, 	"dumpout", A_CANT,0);  
    class_addmethod(c, (method)object_obex_quickref,	"quickref", A_CANT, 0);

	// ATTRIBUTES: (none)


	// Finalize our class
	class_register(CLASS_BOX, c);
	usurp_class = c;
}


/************************************************************************************/
// Object Life

void *usurp_new(t_symbol *s, long argc, t_atom *argv)
{
	t_usurp	*x = (t_usurp *)object_alloc(usurp_class);
	if(x){
		object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x, NULL));	// dumpout
			
		// Create Outlet(s)
		x->outlet = outlet_new(x, 0);
			
		// Create Qelem
		x->qelem = qelem_new(x, (method)usurp_qfn);
		
		// Set defaults
		x->argc = 0;
	}
	return (x);											// return the pointer to our new instantiation
}

void usurp_free(t_usurp *x)
{
	qelem_free(x->qelem);
}

/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void usurp_assist(t_usurp *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 						// Inlet
		strcpy(dst, "Input");
	else if(msg==2){ 				// Outlets
		switch(arg){
			case 0: strcpy(dst, "Output"); break;
			case 1: strcpy(dst, "Attribute Stuff"); break;
 		}
 	}		
}


// Method: bang
void usurp_bang(t_usurp *x)
{
	x->argc = 1;
	SETSYM(x->argv, _sym_bang);
	qelem_set(x->qelem);
}

// Method: int
void usurp_int(t_usurp *x, long value)
{
	x->argc = 1;
	SETLONG(x->argv, value);
	qelem_set(x->qelem);
}

// Method: float
void usurp_float(t_usurp *x, double value)
{
	x->argc = 1;
	SETFLOAT(x->argv, value);
	qelem_set(x->qelem);
}

// Method: anything
void usurp_symbol(t_usurp *x, t_symbol *msg, short argc, t_atom *argv)
{
	short i,n;
	Atom *ap;
	
	SETSYM(x->argv, msg);
	n = MIN(MAX_LIST_LENGTH-1, argc);
	for(i=0, ap = x->argv+1; i < n; i++, argv++, ap++){
		*ap = *argv;
	}
	x->argc = n+1;
	qelem_set(x->qelem);
}

// Method: list
void usurp_list(t_usurp *x, t_symbol *msg, short argc, t_atom *argv)
{
	short i,n;
	Atom *ap;
	
	n = MIN(MAX_LIST_LENGTH, argc);
	for(i=0, ap = x->argv; i < n; i++, argv++, ap++){
		*ap = *argv;
	}
	x->argc = n;
	qelem_set(x->qelem);
}


// Service the Queue
void usurp_qfn(t_usurp *x)
{
	if(x->argc == 1){
		if(x->argv->a_type == A_LONG)
			outlet_int(x->outlet, x->argv->a_w.w_long);
		else if(x->argv->a_type == A_FLOAT)
			outlet_float(x->outlet, (double)x->argv->a_w.w_float);
		else
			outlet_anything(x->outlet ,x->argv->a_w.w_sym, 0, 0L);
	} 
	else{
		if(x->argv->a_type == A_SYM)
			outlet_anything(x->outlet, x->argv->a_w.w_sym, x->argc-1, x->argv+1);
		else
			outlet_list(x->outlet, _sym_list, x->argc, x->argv);
	}
}