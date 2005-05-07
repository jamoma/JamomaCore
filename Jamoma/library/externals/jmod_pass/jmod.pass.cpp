// External Object for Jamoma: pass messages based on the first argument
// By Timothy Place, Copyright © 2005
// License: GNU LGPL

#include "ext.h"					// Max Header
#include "ext_strings.h"			// String Functions
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API
#include "ext_obex.h"				// Max Object Extensions (attributes) Header

#define MAX_ARGCOUNT 100

typedef struct _pass{						// Data Structure for this object
	t_object	ob;							// REQUIRED: Our object
	void		*obex;						// REQUIRED: Object Extensions used by Jitter/Attribute stuff 
	void 		*outlets[MAX_ARGCOUNT];	// my outlet array -- NOTE: the attribute dump outlet is handled automagically
	void		*outlet_overflow;
	t_atom		arguments[MAX_ARGCOUNT];
	short		num_args;
} t_pass;

// Prototypes for our methods:
void *pass_new(t_symbol *s, long argc, t_atom *argv);
void pass_assist(t_pass *x, void *b, long msg, long arg, char *dst);
void pass_symbol(t_pass *x, t_symbol *msg, short argc, t_atom *argv);
void pass_list(t_pass *x, t_symbol *msg, short argc, t_atom *argv);

// Globals
t_class		*pass_class;				// Required: Global pointer for our class
t_symbol	*ps_dumpout;


/************************************************************************************/
// Main() Function

void main(void)				// main recieves a copy of the Max function macros table
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	// Initialize Globals
	common_symbols_init();
	ps_dumpout = gensym("dumpout");

	// Define our class
	c = class_new("jmod.pass",(method)pass_new, (method)0L, (short)sizeof(t_pass), (method)0L, A_GIMME, 0);
	class_obexoffset_set(c, calcoffset(t_pass, obex));

	// Make methods accessible for our class: 
  	class_addmethod(c, (method)pass_list,				"list", A_GIMME, 0L);	
  	class_addmethod(c, (method)pass_symbol,				"anything", A_GIMME, 0L);	
	class_addmethod(c, (method)pass_assist,				"assist", A_CANT, 0L); 
    class_addmethod(c, (method)object_obex_dumpout, 	"dumpout", A_CANT,0);  
    class_addmethod(c, (method)object_obex_quickref,	"quickref", A_CANT, 0);

	// Finalize our class
	class_register(CLASS_BOX, c);
	pass_class = c;
}


/************************************************************************************/
// Object Life

void *pass_new(t_symbol *s, long argc, t_atom *argv)
{
	short i;
	t_pass	*x = (t_pass *)object_alloc(pass_class);
	
	if(x){
		//object_obex_store((void *)x, ps_dumpout, (object *)outlet_new(x,NULL));	// dumpout
		x->outlet_overflow = outlet_new(x, 0);		// overflow outlet
		x->num_args = argc;		

		for(i=x->num_args-1; i >= 0; i--){				
			x->outlets[i] = outlet_new(x, 0);		// Create Outlet
			switch(argv[i].a_type){
				case A_LONG:
					atom_setlong(&(x->arguments[i]), atom_getlong(argv+i));
					break;
				case A_FLOAT:
					atom_setfloat(&(x->arguments[i]), atom_getfloat(argv+i));
					break;
				case A_SYM:
					atom_setsym(&(x->arguments[i]), atom_getsym(argv+i));
					break;
			}
		}

		// attr_args_process(x,argc,argv); //handle attribute args	
	}
	return (x);											// return the pointer to our new instantiation
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void pass_assist(t_pass *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 						// Inlet
		strcpy(dst, "Input");
	else if(msg==2){ 				// Outlets
		if(arg < x->num_args){
			t_symbol *argname = atom_getsym(&x->arguments[arg]);
			strcpy(dst, argname->s_name);
		}
		else
			strcpy(dst, "overflow from non-matching input");
	
/*		switch(arg){
			case 0: strcpy(dst, "Routed Output"); break;
			case 1: strcpy(dst, "Attribute Stuff"); break;
 		}
*/ 	}		
}


// SYMBOL INPUT
void pass_symbol(t_pass *x, t_symbol *msg, short argc, t_atom *argv)
{
	short		i;
	
	for(i=0; i< x->num_args; i++){
		if(msg == atom_getsym(&x->arguments[i])){
			outlet_anything(x->outlets[i], msg, argc , argv);
			return;
		}
	}
	outlet_anything(x->outlet_overflow, msg, argc , argv);
}


// LIST INPUT
void pass_list(t_pass *x, t_symbol *msg, short argc, t_atom *argv)
{
	short		i;
	
	switch(argv[0].a_type){
		case A_LONG:
			for(i=0; i< x->num_args; i++){
				if(x->arguments[i].a_type == A_LONG){
					if(atom_getlong(argv) == atom_getlong(&x->arguments[i])){
						outlet_list(x->outlets[i], 0L, argc , argv);
						return;
					}
				}
			}
			outlet_list(x->outlet_overflow, 0L, argc , argv);
			break;
		case A_FLOAT:
			for(i=0; i< x->num_args; i++){
				if(x->arguments[i].a_type == A_FLOAT){
					if(atom_getfloat(argv) == atom_getfloat(&x->arguments[i])){
						outlet_list(x->outlets[i], 0L, argc , argv);
						return;
					}
				}
			}
			outlet_list(x->outlet_overflow, 0L, argc , argv);
			break;
		case A_SYM:
			for(i=0; i< x->num_args; i++){
				if(atom_getsym(argv) == atom_getsym(&x->arguments[i])){
					outlet_anything(x->outlets[i], msg, argc , argv);
					return;
				}
			}
			outlet_list(x->outlet_overflow, 0L, argc , argv);
			break;
		default:
			outlet_list(x->outlet_overflow, 0L, argc , argv);
			break;
	}
}
