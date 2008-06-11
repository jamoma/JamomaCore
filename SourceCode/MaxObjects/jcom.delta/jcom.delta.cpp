/* 
 * jcom.delta (previously names tl.delta)
 * External for Jamoma: calculate 1st order difference
 * By Trond Lossius, Copyright © 2001-06
 * 20031227 initial port to OSX compiled by jasch <jasch@kat.ch>
 * 20060813 ported to Jamoma
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */
	

/*
	<---MAXREF
	
		/maxref/object/name
			jcom.delta

		/maxref/object/digest
			Calculate difference between incomming numbers

		/maxref/object/description
			<o>jcom.delta</o> calculates the difference between the last incomming value x[n]
			and the previous value received:<br/>
			delta = x[n]-x[n-1] 



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
			jcom.delta.gif
			
		/maxref/example/caption
			Calculate difference between the last two numbers received.


		
		/maxref/seealso/object/name
			jcom.delta2
		
		/maxref/seealso/object/description
			Calculate the 2nd order difference of incomming numbers.
		
		/maxref/seealso/object/name
			jcom.velocity

		/maxref/seealso/object/description
			Calculate velocity (rate of change per second) for incomming values.		
		
	MAXREF--->
*/

#include "Jamoma.h";

t_symbol	*ps_delta,
			*ps_delta2,
			*ps_velocity;



#define nonzero(x)				((x > 0) ? x : 1.)

typedef struct _delta{			///< Data structure for this object 
	t_object	ob;				///< Must always be the first field; used by Max
	float		x0;				///< Most recerntly received value
	float		x1;				///< Previous value
	float		x2;				///< 2nd last value received
	float		delta;			///< 1st order differential
	float		delta2;			///< 2nd order differential
	long		lasttime;		///< Time code for previous value received
	char		clearflag;		///< Flag indicating that history has been cleared
	t_symbol	*attr_mode;		///< ATTRIBUTE: What mode is the object running in?
	void		*outlet;		///< Pointer to outlet. Need one for each outlet 
} t_delta;

// Prototypes for methods: need a method for each incoming message
void *delta_new(t_symbol *s, long argc, t_atom *argv);
void delta_bang(t_delta *x);
void delta_int(t_delta *x, long n);
void delta_float(t_delta *x, double f);
void delta_clear(t_delta *x);
void delta_set(t_delta *x, Symbol *s, long ac, Atom *setval);
void delta_assist(t_delta *x, void *b, long msg, long arg, char *dst);
void delta_attr_setmode(t_delta *x, void *attr, long argc, t_atom *argv);

// Globals
t_class		*this_class;				// Required. Global pointing to this class 



/************************************************************************************/
// Main() Function

int main(void)
{	
	t_class *c;
	
	jamoma_init();
common_symbols_init();
		
	ps_delta	= gensym("delta");
	ps_delta2	= gensym("delta2");
	ps_velocity = gensym("velocity");

	// Define our class
	c = class_new("jcom.delta",(method)delta_new, (method)0L, sizeof(t_delta), (method)0L, A_GIMME, 0);			

	// Make methods accessible for our class: 
	class_addmethod(c, (method)delta_bang,				"bang",		A_CANT,		0);
	class_addmethod(c, (method)delta_int,				"int",		A_LONG,		0);
 	class_addmethod(c, (method)delta_float, 			"float",	A_FLOAT,	0);		
	class_addmethod(c, (method)delta_assist, 			"assist",	A_CANT,		0); 
    class_addmethod(c, (method)delta_set,				"set",		A_GIMME,	0);  
    class_addmethod(c, (method)delta_clear,				"clear",	0);
	class_addmethod(c, (method)object_obex_dumpout, 	"dumpout",	A_CANT,		0);

	// ATTRIBUTE: mode	
	CLASS_ATTR_SYM(c,		"mode", 0, t_delta, attr_mode);				// create attribute
	CLASS_ATTR_ENUM(c,		"mode", 0, "delta delta2 velocity");		// options for inspector
	CLASS_ATTR_ACCESSORS(c, "mode", 0L, delta_attr_setmode);			// need custom setter method
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	this_class = c;
	return 0;
}

#pragma mark -
#pragma mark Object life
/************************************************************************************/
// Object Life

void *delta_new(t_symbol *s, long argc, t_atom *argv)
{
	t_delta *x;	
	x = (t_delta *)object_alloc(this_class);	// create the new instance and return a pointer to it
	if(x){
		// create inlets and outlets		
    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
		x->outlet = floatout(x);				// create the outlet
		
		x->attr_mode = ps_delta;				// set default attribute
		attr_args_process(x, argc, argv);		// handle attribute args
		
		delta_clear(x);							// initilaize instance
	}
	return (x);
}


#pragma mark -
#pragma mark methods
/************************************************************************************/
// Methods bound to input/inlets


void delta_attr_setmode(t_delta *x, void *attr, long argc, t_atom *argv)
{
	t_symbol *arg = atom_getsym(argv);

	if (arg == ps_delta)
		x->attr_mode = ps_delta;
	else if (arg == ps_velocity)
		x->attr_mode = ps_velocity;
	else if (arg == ps_delta2)
		x->attr_mode = ps_delta2;
	else {
		object_error((t_object *)x, "wrong argument for the mode attribute. Set to delta");
		x->attr_mode = ps_delta;
	}
}


// BANG input
void delta_bang(t_delta *x)
{
	long thistime;
	float vel;
	
	// mode: 1st order difference
	if (x->attr_mode==ps_delta)
		outlet_float(x->outlet, x->delta);
	// mode: 2nd order difference
	else if (x->attr_mode==ps_delta2)
		outlet_float(x->outlet, x->delta2);
	// mode: velocity
	else if (x->attr_mode==ps_velocity)
	{
		thistime = gettime();	
		vel = (1000 * (x->x0 - x->x1) ) / (nonzero(thistime - x->lasttime));
		x->lasttime = thistime;
		outlet_float(x->outlet, vel);
	}
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
		x->x1 = f;
		x->x2 = f;
		x->clearflag = 0;
	}

	// mode: 1st order difference
	if (x->attr_mode==ps_delta)
	{
		x->delta = f - x->x1;
		x->x1 = f;			
	}
	// mode: 2nd order difference
	else if (x->attr_mode==ps_delta2)
	{
		x->delta2 = f - 2*x->x1 + x->x2;
		x->x2 = x->x1;
		x->x1 = f;
	}
	// mode: velocity	
	else if (x->attr_mode==ps_velocity)
	{
		x->x1 = x->x0;
		x->x0 = f;
	}
	delta_bang(x);
}


// SET input
void delta_set(t_delta *x, Symbol *s, long ac, Atom *setval)
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
		x->x1 = f;
		x->delta = 0;
		x->clearflag = 0;
	}
	else {
		x->delta = f - x->x1;
		x->x1 = f;
	}
	return;
	
	err:
		error("jcom.delta: Wrong argument for set");
}


// CLEAR input
void delta_clear(t_delta *x)
{
	x->clearflag = 1;
	x->delta = 0;
	x->delta2 = 0;
	x->lasttime = gettime();
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
