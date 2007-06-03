/* 
 * jcom.round
 * External for Jamoma: round numbers
 * By Tim Place, Copyright � 2005
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ext.h"					// Max Header
#include "ext_strings.h"			// String Functions
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API
#include "ext_obex.h"				// Max Object Extensions (attributes) Header

#define MAX_LISTLENGTH 256


// Data Structure for this object
typedef struct _round{				// Data structure for this object 
	t_object	ob;					// Must always be the first field; used by Max 
	void		*obex;
	void 		*outlet;			// Pointer to outlet. need one for each outlet 
} t_round;

// Prototypes for methods: need a method for each incoming message
void *round_new(void);
void round_float(t_round *x, double value);
void round_int(t_round *x, long value);
void round_list(t_round *x, t_symbol *msg, long argc, t_atom *argv);
void round_symbol(t_round *x, t_symbol *msg, long argc, t_atom *argv);
void round_assist(t_round *round, void *b, long m, long a, char *s);

// Globals
t_class		*this_class;				// Required. Global pointing to this class 

/************************************************************************************/
// Main() Function

int main(void)				// main recieves a copy of the Max function macros table
{
	t_class *c;
	
	common_symbols_init();

	// Define our class
	c = class_new("jcom.round",(method)round_new, (method)0L, (short)sizeof(t_round), (method)0L, 0, 0);
	class_obexoffset_set(c, calcoffset(t_round, obex));

	// Make methods accessible for our class: 
	class_addmethod(c, (method)round_int,				"int",		A_LONG,	0L);
 	class_addmethod(c, (method)round_float, 			"float",	A_FLOAT, 0L);
	class_addmethod(c, (method)round_list,				"list",		A_GIMME, 0L);
	class_addmethod(c, (method)round_symbol,			"anything", A_GIMME, 0L);	
	class_addmethod(c, (method)round_assist, 			"assist",	A_CANT, 0L); 
    class_addmethod(c, (method)object_obex_dumpout, 	"dumpout",	A_CANT,0);  
    class_addmethod(c, (method)object_obex_quickref,	"quickref", A_CANT, 0);

	// Finalize our class
	class_register(CLASS_BOX, c);
	this_class = c;
	return 0;
}


/************************************************************************************/
// Object Life

void *round_new(void)
{
	t_round *x;

	x = (t_round *)object_alloc(this_class);	// create the new instance and return a pointer to it
	if(x){
    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
		x->outlet = outlet_new(x, 0);			//Create the outlet
	}
	return(x);									// must return a pointer to the new instance 
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void round_assist(t_round *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1)		// Inlets
		strcpy(dst, "(int/float) number to round");
	else if(msg==2) // Outlets
		strcpy(dst, "(int/float) round number");
}


// INT input
void round_int(t_round *x, long value)
{
	outlet_int(x->outlet, value);
}


// FLOAT input
void round_float(t_round *x, double value)
{
	long out;
	
	if(value > 0)
		out = ((long)(value + 0.5));
	else
		out = ((long)(value - 0.5));

	outlet_int(x->outlet, out);
}


// LIST method
void round_list(t_round *x, t_symbol *msg, long argc, t_atom *argv)
{
	long i, out;
	double value;
	t_atom arguments[MAX_LISTLENGTH];
	
	for (i=0; i<argc; i++) {
		switch(argv[i].a_type){
			case A_LONG:
				atom_setlong(&(arguments[i]), atom_getlong(argv+i));
				break;
			case A_FLOAT:
				value = atom_getfloat(argv+i);
				if(value > 0.)
					out = ((long)(value + 0.5));
				else
					out = ((long)(value - 0.5));
				atom_setlong(&(arguments[i]), out);
				break;
			case A_SYM:
				arguments[i] = argv[i];
				break;
		}
	}
	outlet_anything(x->outlet, msg, argc , arguments);
}


// ANYTHING method
void round_symbol(t_round *x, t_symbol *msg, long argc, t_atom *argv)
{
	long i, out;
	double value;
	t_atom arguments[MAX_LISTLENGTH];
	
	for (i=0; i<argc; i++) {
		switch(argv[i].a_type){
			case A_LONG:
				atom_setlong(&(arguments[i]), atom_getlong(argv+i));
				break;
			case A_FLOAT:
				value = atom_getfloat(argv+i);
				if(value > 0.)
					out = ((long)(value + 0.5));
				else
					out = ((long)(value - 0.5));
				atom_setlong(&(arguments[i]), out);
				break;
			case A_SYM:
				arguments[i] = argv[i];
				break;
		}
	}
	outlet_anything(x->outlet, msg, argc , arguments);
}
