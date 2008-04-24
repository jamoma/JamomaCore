/* tl.delta2.c -- 2nd order difference ------- */
/* (C) Trond Lossius/BEK 2001 				*/
/* Last revision: 2001-03-21 				*/
/* 20031227 modified for OSX compiling by jasch <jasch@kat.ch> */

/* 
 * jcom.delta2 (previously names tl.delta2)
 * External for Jamoma: calculate 2nd order difference
 * By Trond Lossius, Copyright © 2001-06
 * 20031227 initial port to OSX compiled by jasch <jasch@kat.ch>
 * 20060813 ported to Jamoma
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"

typedef struct _delta2{			// Data structure for this object 
	struct	object ob;			// Must always be the first field; used by Max
	void	*obex;
	float	prev;				// Previous value
	float	prev2;				// 2nd last value received
	float	delta2;				// 2nd order differential
	char	clearflag;
	void	*outlet;			// Pointer to outlet. Need one for each outlet
} t_delta2;


// Prototypes for methods: need a method for each incoming message
void *delta2_new(void);
void delta2_bang(t_delta2 *x);
void delta2_int(t_delta2 *x, long n);
void delta2_float(t_delta2 *x, double f);
void delta2_clear(t_delta2 *x);
void delta2_set(t_delta2 *x, Symbol *s, short ac, Atom *setval);
void delta2_assist(t_delta2 *x, void *b, long msg, long arg, char *dst);


// Globals
t_class		*this_class;		// Required. Global pointing to this class


/************************************************************************************/
// Main() Function

int main(void)
{
	t_class *c;
	
	jamoma_init();

	// Define our class
	c = class_new("jcom.delta2",(method)delta2_new, (method)0L, (short)sizeof(t_delta2), (method)0L, 0, 0);
	class_obexoffset_set(c, calcoffset(t_delta2, obex));			
		
	// Make methods accessible for our class: 
	class_addmethod(c, (method)delta2_bang,				"bang",		A_CANT,		0);
	class_addmethod(c, (method)delta2_int,				"int",		A_LONG,		0);
 	class_addmethod(c, (method)delta2_float, 			"float",	A_FLOAT,	0);		
	class_addmethod(c, (method)delta2_assist, 			"assist",	A_CANT,		0); 
    class_addmethod(c, (method)delta2_set,				"set",		A_GIMME,	0);  
    class_addmethod(c, (method)delta2_clear,			"clear",	0);
	class_addmethod(c, (method)object_obex_dumpout, 	"dumpout",	A_CANT,		0);  
    class_addmethod(c, (method)object_obex_quickref,	"quickref", A_CANT,		0);
	
	//finder_addclass("All Objects","jcom.delta2");	
	//finder_addclass("Arith/Logic/Bitwise","jcom.delta2");
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	this_class = c;
	return 0;
}


/************************************************************************************/
// Object Life

void *delta2_new(void)
{
	t_delta2 *x;
	
	
	x = (t_delta2 *)object_alloc(this_class);	// create the new instance and return a pointer to it
	if(x){
    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
		x->outlet = floatout(x);				// create the outlet
		delta2_clear(x);							// initilaize instance
	}	
	return (x);
}


/************************************************************************************/
// Methods bound to input/inlets


// BANG input
void delta2_bang(t_delta2 *x)
{
	outlet_float(x->outlet, x->delta2);
}
// INT input
void delta2_int(t_delta2 *x, long n)
{
	double f;
	
	f = (double)n;
	delta2_float(x,f);
}


// FLOAT input
void delta2_float(t_delta2 *x, double f)
{
	switch (x->clearflag) {
		case 0:
			x->delta2 = f - 2*x->prev + x->prev2;
			x->prev2 = x->prev;
			x->prev = f;
			break;
		case 1:
			x->prev = f;
			x->clearflag--;
			break;
		case 2:
			x->prev2 = f;
			x->clearflag--;
			break;
	}
	delta2_bang(x);
}


// SET input
void delta2_set(t_delta2 *x, Symbol *s, short ac, Atom *setval)
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
	switch (x->clearflag) {
		case 0:
			x->delta2 = f - 2*x->prev + x->prev2;
			x->prev2 = x->prev;
			x->prev = f;
			break;
		case 1:
			x->prev = f;
			x->clearflag--;
			break;
		case 2:
			x->prev2 = f;
			x->clearflag--;
			break;
	}
	return;
	
	err:
		error("jcom.delta2: Wrong argument for set");
}


// CLEAR input
void delta2_clear(t_delta2 *x)
{
	x->clearflag = 2;
	x->delta2 = 0;
}


// Method for Assistance Messages
void delta2_assist(t_delta2 *x, void *b, long msg, long arg, char *dst)	// Display assistance messages
{
	if(msg==1){ 
	sprintf(dst, "(int/float) function value");
	}
	else if(msg==2){
	sprintf(dst, "(float) 2nd order difference");
	}
}