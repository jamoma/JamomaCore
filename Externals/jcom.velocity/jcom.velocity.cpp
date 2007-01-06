/* 
 * jmod.velocity (previously names tl.velocity)
 * (1000*(x[n]-x[n-1]))/Æt
 * By Trond Lossius, Copyright © 2001-06
 * 20031227 modified for OSX compiling by jasch <jasch@kat.ch>
 * 20060813 ported to Jamoma
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ext.h"				// Max Header
#include "ext_strings.h"		// String Functions
#include "commonsyms.h"			// Common symbols used by the Max 4.5 API
#include "ext_obex.h"			// Max Object Extensions (attributes) Header

#define nonzero(x)				((x > 0) ? x : 1.)

typedef struct _velocity{		// Data structure for this object 
	t_object	ob;				// Must always be the first field; used by Max
	void		*obex;
	float xn;					// Most recent value received
	float xn1;					// Previous value received
	long lasttime;				// Time code for previous value received
	void *outlet;				// Pointer to outlet, need one for each outlet
} t_velocity;


// Prototypes for methods: need a method for each incoming message
void *velocity_new(Symbol *s, short ac, Atom *arg);
void velocity_bang(t_velocity *x);
void velocity_int(t_velocity *x, long n);
void velocity_float(t_velocity *x, double f);
void velocity_set(t_velocity *x, Symbol *s, short ac, Atom *setval);
void velocity_assist(t_velocity *x, void *b, long m, long a, char *s);

// Globals
t_class		*this_class;				// Required. Global pointing to this class 


/************************************************************************************/
// Main() Function
int main(void)
{	
	t_class *c;
	
	common_symbols_init();
	
	// Define our class
	c = class_new("jmod.velocity",(method)velocity_new, (method)0L, (short)sizeof(t_velocity), (method)0L, A_GIMME, 0);
	class_obexoffset_set(c, calcoffset(t_velocity, obex));				

	// Make methods accessible for our class: 
	class_addmethod(c, (method)velocity_bang,			"bang",		A_CANT,		0);
	class_addmethod(c, (method)velocity_int,			"int",		A_LONG,		0);
 	class_addmethod(c, (method)velocity_float, 			"float",	A_FLOAT,	0);		
	class_addmethod(c, (method)velocity_assist, 		"assist",	A_CANT,		0); 
    class_addmethod(c, (method)velocity_set,			"set",		A_GIMME,	0);  
	class_addmethod(c, (method)object_obex_dumpout, 	"dumpout",	A_CANT,		0);  
    class_addmethod(c, (method)object_obex_quickref,	"quickref", A_CANT,		0);

	//finder_addclass("All Objects","jmod.velocity");		//a helping hand...
	//finder_addclass("Arith/Logic/Bitwise","jmod.velocity");

	// Finalize our class
	class_register(CLASS_BOX, c);
	this_class = c;
	return 0;
}


/************************************************************************************/
// Object Life
void *velocity_new(Symbol *s, short ac, Atom *arg)
{
	t_velocity *x;
	
	x = (t_velocity *)object_alloc(this_class);	// create the new instance and return a pointer to it
	if(x){
    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout
		
		x->outlet = floatout(x);				// create the outlet
		
		if (ac)									// initialize
		{
			if (arg->a_type==A_LONG)
				x->xn = (float)arg->a_w.w_long;
			else if (arg->a_type==A_FLOAT) 
				x->xn = arg->a_w.w_float;
			else
				x->xn = 0;
		} else
		{
			x->xn = 0;
		}
		x->lasttime = gettime();
	}
	return(x);									// return pointer to instance
}


/************************************************************************************/
// Methods bound to input/inlets


// BANG input
void velocity_bang(t_velocity *x)
{
	long thistime;
	float vel;
	
	thistime = gettime();	
	vel = (1000 * (x->xn - x->xn1) ) / (nonzero(thistime - x->lasttime));
	x->lasttime = thistime;
	outlet_float(x->outlet, vel);
}


// INT input
void velocity_int(t_velocity *x, long n)
{
	x->xn1 = x->xn;
	x->xn = (float)n;
	velocity_bang(x);
}


// FLOAT input
void velocity_float(t_velocity *x, double f)
{
	x->xn1 = x->xn;
	x->xn = f;
	velocity_bang(x);
}


// SET input
void velocity_set(t_velocity *x, Symbol *s, short ac, Atom *setval)
{
	if (ac)
	{
		if (setval->a_type==A_LONG)
		{
			x->xn1 = x->xn;
			x->xn = (double)setval->a_w.w_long;
		}else if (setval->a_type==A_FLOAT)
		{
			x->xn1 = x->xn;
			x->xn = setval->a_w.w_float;
		}
	}else{
		x->xn1 = x->xn;
		x->xn = 0;
	}
	x->lasttime = gettime();
}


// Method for Assistance Messages
void velocity_assist(t_velocity *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1)
	{ 
		switch(arg)
		{
			case 0: sprintf(dst, "(int/float) most recent value ")
			;break;
		}
	}
	else if(msg==2)
	{
		sprintf(dst, "(float) velocity");
	}
}