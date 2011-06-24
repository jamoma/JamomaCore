/* 
 * jcom.push (previously names tl.push)
 * By Trond Lossius, Copyright 2011
 * 
 * Simple physical modelling: Push an object about within a confined space
 * Can be used for e.g. trajectories
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */
	

/*
	<---MAXREF
	
		/maxref/object/name
			jcom.push

		/maxref/object/digest
			Calculate difference between incomming numbers

		/maxref/object/description
			<o>jcom.push</o> calculates the difference between the last incomming value x[n]
			and the previous value received:<br/>
			push = x[n]-x[n-1] 



		/maxref/metadata/author
			Trond Lossius

		/maxref/metadata/tag
			Jamoma Max Math



		/maxref/inletlist/0
			Calculate Difference, int, float

		/maxref/outletlist/0
			Delta Value

		/maxref/outletlist/1		
			Dumpout



		/maxref/argument/
			None



		/maxref/message/float
			Caculate difference using between this and the previous number received.

		/maxref/message/int
			Converted to float


		
		/maxref/example/image	
			jcom.push.gif
			
		/maxref/example/caption
			Calculate difference between the last two numbers received.


		
		/maxref/seealso/object/name
			jcom.push2
		
		/maxref/seealso/object/description
			Calculate the 2nd order difference of incomming numbers.
		
		/maxref/seealso/object/name
			jcom.velocity

		/maxref/seealso/object/description
			Calculate velocity (rate of change per second) for incomming values.		
		
	MAXREF--->
*/

#include "Jamoma.h"

#define nonzero(x)				((x > 0) ? x : 1.)
#define MAXDIMENSIONS			3

typedef struct _push{								///< Data structure for this object 
	t_object	ob;									///< Must always be the first field; used by Max
	int			attrDimensions;						///< The number of dimensions used
	float		previousPosition[MAXDIMENSIONS];	///< The previous position
	float		previousVelocity[MAXDIMENSIONS];	///< The previous velocity
	float		attrFriction;						///< Friction coefficient
	float		force[MAXDIMENSIONS];				///< Force applied on the object
	void		*outlet;							///< Pointer to outlet. Need one for each outlet
} t_push;

// Prototypes for methods: need a method for each incoming message
void *push_new(void);
void push_bang(t_push *x);
void push_force(t_push *x, t_symbol *s, long argc, t_atom *argv);
void push_clear(t_push *x);
void push_assist(t_push *x, void *b, long msg, long arg, char *dst);

// Globals
t_class		*this_class;				// Required. Global pointing to this class 



/************************************************************************************/
// Main() Function

int JAMOMA_EXPORT_MAXOBJ main(void)
{	
	t_class *c;
	
	jamoma_init();
	common_symbols_init();

	// Define our class
	c = class_new("jcom.push",(method)push_new, (method)0L, sizeof(t_push), (method)0L, 0L, 0);			

	// Make methods accessible for our class: 
	class_addmethod(c, (method)push_bang,				"bang",		A_CANT,		0);
	class_addmethod(c, (method)push_force,				"force",	A_GIMME,	0);
	class_addmethod(c, (method)push_clear,				"clear",	0);
	class_addmethod(c, (method)push_assist, 			"assist",	A_CANT,		0); 
	class_addmethod(c, (method)object_obex_dumpout, 	"dumpout",	A_CANT,		0);
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	this_class = c;
	return 0;
}

#pragma mark -
#pragma mark Object life
/************************************************************************************/
// Object Life

void *push_new(void)
{
	t_push *x;	
	x = (t_push *)object_alloc(this_class);	// create the new instance and return a pointer to it
	if (x) {
		// create inlets and outlets		
    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout
		x->outlet = floatout(x);			// velocity
		x->attrFriction = 0.1;
		push_clear(x);						// initilaize instance
	}
	return (x);
}


#pragma mark -
#pragma mark methods
/************************************************************************************/
// Methods bound to input/inlets


// BANG input
void push_bang(t_push *x)
{
	int i;
	float position[MAXDIMENSIONS];
	t_atom a[MAXDIMENSIONS];
	
	for (i=0; i<MAXDIMENSIONS; i++) {
		position[i] = x->previousPosition[i] + (1.0-x->attrFriction)*x->previousVelocity[i] + x->force[i];
		x->previousVelocity[i] = position[i] - x->previousPosition[i];
		x->previousPosition[i] = position[i];
		atom_setfloat(&a[i], position[i]);
		x->force[i] = 0; 		// Force is reset to zero when it has been applied
	}
	outlet_anything(x->outlet, _sym_list, MAXDIMENSIONS, a);
}


// FORCE input
void push_force(t_push *x, t_symbol *s, long argc, t_atom *argv)
{
	int i;
	
	if (argc==MAXDIMENSIONS) {
		for (i=0; i<MAXDIMENSIONS; i++) {
			x->force[i] = atom_getfloat(argv);
			argv++;
		}
	}
	else {
		post("jcom.push: Wrong number of elements for list");
		return;
	}
}


// CLEAR input
void push_clear(t_push *x)
{
	int i;
	
	for (i=0; i< MAXDIMENSIONS; i++) {
		x->previousPosition[i] = 0.0;
		x->previousVelocity[i] = 0.0;
		x->force[i] = 0.0;
	}
	push_bang(x);
}


// Method for Assistance Messages
void push_assist(t_push *x, void *b, long msg, long arg, char *dst)	// Display assistance messages
{
	if (msg==1)
	{ 
		switch(arg)
		{
			case 0:
				strcpy(dst, "(list) force applied to object");
				break;	
		}
	}
	else if (msg==2)
	{
		switch(arg)
		{
			case 0:
				strcpy(dst, "(list) resulting position of object");
				break;
			case 1:
				strcpy(dst, "dumpout");
				break;
		}
	}
}
