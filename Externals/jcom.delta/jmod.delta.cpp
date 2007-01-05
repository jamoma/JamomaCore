/* 
 * jmod.delta (previously names tl.delta)
 * External for Jamoma: calculate 1st order difference
 * By Trond Lossius, Copyright © 2001-06
 * 20031227 initial port to OSX compiled by jasch <jasch@kat.ch>
 * 20060813 ported to Jamoma
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */



#include "ext.h"				// Max Header
#include "ext_strings.h"		// String Functions
#include "commonsyms.h"			// Common symbols used by the Max 4.5 API
#include "ext_obex.h"			// Max Object Extensions (attributes) Header

typedef struct _delta{			// Data structure for this object 
	t_object	ob;				// Must always be the first field; used by Max
	void		*obex;
	float		prev;			// Previous value
	float		delta;			// delta step
	char		clearflag;
	void		*outlet;			// Pointer to outlet. need one for each outlet 
} t_delta;

// Prototypes for methods: need a method for each incoming message
void *delta_new(void);
void delta_bang(t_delta *x);
void delta_int(t_delta *x, long n);
void delta_float(t_delta *x, double f);
void delta_clear(t_delta *x);
void delta_set(t_delta *x, Symbol *s, short ac, Atom *setval);
void delta_assist(t_delta *x, void *b, long msg, long arg, char *dst);



// Globals
t_class		*this_class;				// Required. Global pointing to this class 



/************************************************************************************/
// Main() Function

int main(void)
{	
	t_class *c;
	
	common_symbols_init();

	// Define our class
	c = class_new("jmod.delta",(method)delta_new, (method)0L, (short)sizeof(t_delta), (method)0L, 0, 0);
	class_obexoffset_set(c, calcoffset(t_delta, obex));				

	// Make methods accessible for our class: 
	class_addmethod(c, (method)delta_bang,				"bang",		A_CANT,		0);
	class_addmethod(c, (method)delta_int,				"int",		A_LONG,		0);
 	class_addmethod(c, (method)delta_float, 			"float",	A_FLOAT,	0);		
	class_addmethod(c, (method)delta_assist, 			"assist",	A_CANT,		0); 
    class_addmethod(c, (method)delta_set,				"set",		A_GIMME,	0);  
    class_addmethod(c, (method)delta_clear,				"clear",	0);
	class_addmethod(c, (method)object_obex_dumpout, 	"dumpout",	A_CANT,		0);  
    class_addmethod(c, (method)object_obex_quickref,	"quickref", A_CANT,		0);
	//finder_addclass("All Objects","jmod.delta");	
	//finder_addclass("Arith/Logic/Bitwise","jmod.delta");
	//post("tl.delta © 2001-03 Trond Lossius");
	
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	this_class = c;
	return 0;
}


/************************************************************************************/
// Object Life

void *delta_new(void)
{
	t_delta *x;
	
	x = (t_delta *)object_alloc(this_class);	// create the new instance and return a pointer to it
	if(x){
    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
		x->outlet = floatout(x);				// create the outlet
		delta_clear(x);							// initilaize instance
	}
	return (x);
}


/************************************************************************************/
// Methods bound to input/inlets


// BANG input
void delta_bang(t_delta *x)
{
	outlet_float(x->outlet, x->delta);
}


// INT input
void delta_int(t_delta *x, long n)
{
	double f;
	
	f = (double)n;
	delta_float(x,f);
}


// FLOAT input
void delta_float(t_delta *x, double f)
{
	if (x->clearflag) {
		x->prev = f;
		x->delta = 0;
		x->clearflag = 0;
	}
	else {
		x->delta = f - x->prev;
		x->prev = f;
	}
	delta_bang(x);
}


// SET input
void delta_set(t_delta *x, Symbol *s, short ac, Atom *setval)
{
	float f;
	
	if (ac) {
		if (setval->a_type==A_LONG)
			f = (float)setval->a_w.w_long;
		else if (setval->a_type==A_FLOAT)
			f = setval->a_w.w_float;
		else goto err;
	}
	else
		f=0;
	if (x->clearflag) {
		x->prev = f;
		x->delta = 0;
		x->clearflag = 0;
	}
	else {
		x->delta = f - x->prev;
		x->prev = f;
	}
	return;
	
	err:
		error("jmod.delta: Wrong argument for set");
}


// CLEAR input
void delta_clear(t_delta *x)
{
	x->clearflag = 1;
	x->delta = 0;
}


// Method for Assistance Messages
void delta_assist(t_delta *x, void *b, long msg, long arg, char *dst)	// Display assistance messages
{
	if(msg==1)
	{ 
		switch(arg)
		{
			case 0: sprintf(dst, "(int/float) function value");
			break;	
		}
	}
	else if(msg==2)
	{
		sprintf(dst, "(float) delta value");
	}
}
