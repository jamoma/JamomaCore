/* 
 * jcom.dbap
 * External for Jamoma: DBAP - Distance Based Amplitude Panning
 * By Trond Lossius, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"



const long MAX_NUM_SPEAKERS = 32;


typedef struct _xyz{
	float		x;										///< x position
	float		y;										///< y position
	float		z;										///< z position
} t_xyz;												///< Cartesian coordinate of a point
	

typedef struct _dbap{									///< Data structure for this object 
	t_object	ob;										///< Must always be the first field; used by Max
	t_xyz		dst_position[MAX_NUM_SPEAKERS];			///< Array of speaker positions
	t_xyz		src_position;							///< Positions of the virtual source
	long		attr_dimensions;						///< Number of dimensions of the speaker and source system
	float		attr_blur;								///< Spatial bluriness ratio
	float		attr_rolloff;							///< Set rolloff with distance in dB.
	long		attr_num_destinations;					///< number of destinations used
	float		a;										///< Constant: Exponent controlling amplitude dependance on distance. Depends on attr_rolloff
	void		*outlet;								////< Pointer to outlet. Need one for each outlet
} t_dbap;

// Prototypes for methods: need a method for each incoming message


void *dbap_new(t_symbol *msg, long argc, t_atom *argv);
t_max_err dbap_setstep(t_dbap *x, void *attr, long argc, t_atom *argv);

/** Set the position of the nth speaker. */
void dbap_speaker(t_dbap *x, void *attr, long argc, t_atom *argv);

/** Set the position of the nth virtual source. */
void dbap_source(t_dbap *x, void *attr, long argc, t_atom *argv);

/** Display assist strings while patching. */
void dbap_assist(t_dbap *x, void *b, long msg, long arg, char *dst);

/** Set number of dimensions of the system. */
t_max_err dbap_attr_setdimensions(t_dbap *x, void *attr, long argc, t_atom *argv);

/** Set the number of speakers of the system. */
t_max_err dbap_attr_setnum_destinations(t_dbap *x, void *attr, long argc, t_atom *argv);

/** Set spatial blur coefficient */
t_max_err dbap_attr_setblur(t_dbap *x, void *attr, long argc, t_atom *argv);

/** Set rolloff in dB */
t_max_err dbap_attr_setrolloff(t_dbap *x, void *attr, long argc, t_atom *argv);

/** Calculate matrix coefficients for most recently received position for the 1D case. */
void dbap_calculate1D(t_dbap *x, long n);

/** Calculate matrix coefficients for most recently received position for the 2D case. */
void dbap_calculate2D(t_dbap *x, long n);

/** Calculate matrix coefficients for most recently received position for the 3D case. */
void dbap_calculate3D(t_dbap *x, long n);




// Globals
t_class		*this_class;				// Required. Global pointing to this class 



/************************************************************************************/
// Main() Function

int main(void)
{	
	long attrflags = 0;
	t_class *c;
	t_object *attr;

	jamoma_init();
	common_symbols_init();

	// Define our class
	c = class_new("jcom.dbap",(method)dbap_new, (method)0L, sizeof(t_dbap), 
		(method)0L, A_GIMME, 0);		

	// Make methods accessible for our class: 
	class_addmethod(c, (method)dbap_speaker,			"destination",	A_GIMME,	0);
	class_addmethod(c, (method)dbap_speaker,			"source",		A_GIMME,	0);
	class_addmethod(c, (method)dbap_assist,				"assist",		A_CANT,		0);  
	class_addmethod(c, (method)object_obex_dumpout,		"dumpout",		0);  

	// Add attributes to our class:	
	CLASS_ATTR_LONG(c,			"dimensions",	0,		t_dbap,	attr_dimensions);
	CLASS_ATTR_ACCESSORS(c,		"dimensions",	NULL,	dbap_attr_setdimensions);
	//jamoma_class_attr_new(c, 	"dimensions", 	_sym_long, (method)dbap_attr_setdimensions, (method)dbap_attr_getdimensions);
	CLASS_ATTR_ENUM(c,			"dimensions",	0,	"1 2 3");

	CLASS_ATTR_LONG(c,			"num_destinations",	0,		t_dbap,	attr_num_destinations);
	CLASS_ATTR_ACCESSORS(c,		"num_destinations",	NULL,	dbap_attr_setnum_destinations);
	//jamoma_class_attr_new(c, 	"num_destination", _sym_long, (method)dbap_attr_setnum_destinations, (method)dbap_attr_getnum_speakers);

	CLASS_ATTR_FLOAT(c,			"blur",			0,		t_dbap,	attr_blur);
	CLASS_ATTR_ACCESSORS(c,		"blur",			NULL,	dbap_attr_setblur);	
	//jamoma_class_attr_new(c, 	"blur",			_sym_float32, (method)dbap_attr_setblur, (method)dbap_attr_getblur);

	CLASS_ATTR_FLOAT(c,			"rolloff",			0,		t_dbap,	attr_rolloff);
	CLASS_ATTR_ACCESSORS(c,		"rolloff",			NULL,	dbap_attr_setrolloff);		
	//jamoma_class_attr_new(c, 	"rolloff",		_sym_float32, (method)dbap_attr_setrolloff, (method)dbap_attr_getrolloff);
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	this_class = c;	
	return 0;
}


/************************************************************************************/
// Object Life

void *dbap_new(t_symbol *msg, long argc, t_atom *argv)
{
	t_dbap *x;
	long i;
	
	x = (t_dbap *)object_alloc(this_class);	// create the new instance and return a pointer to it
	
	if(x){
    	object_obex_store(x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout
		x->outlet = outlet_new(x, 0);				// Create outlet
		
		// Initializing and setting defaults for attributes.
		x->attr_num_destinations = 1;					// default value
		x->attr_dimensions = 2;						// two-dimensional by default
		x->attr_rolloff = 6;						// 6 dB rolloff by default
		x->attr_blur = 0.01;						// %TODO: Calculate rms of distance from mean position of speakers, and use that.
		for (i=0; i<MAX_NUM_SPEAKERS; i++) {
			x->dst_position[i].x = 0.;
			x->dst_position[i].y = 0.;
			x->dst_position[i].z = 0.;
		}
		attr_args_process(x, argc, argv);			// handle attribute args
	}
	return (x);										// return the pointer
}


/************************************************************************************/
// Methods bound to input/inlets


// set position of a speaker
void dbap_speaker(t_dbap *x, void *attr, long argc, t_atom *argv)
{
	long n;
	
	if (argc >= (x->attr_dimensions + 1)) {
		n = atom_getlong(argv);
		if ( (n<0) || (n>=MAX_NUM_SPEAKERS) ) {
			error("Invalid arguments for speaker.");
			return;
		}
		switch (x->attr_dimensions)
		{
			case 1:
				n = atom_getlong(argv);
				x->dst_position[n].x = atom_getfloat(argv+1);
				break;
			case 2:
				n = atom_getlong(argv);
				x->dst_position[n].x = atom_getfloat(argv+1);
				x->dst_position[n].y = atom_getfloat(argv+2);
				break;
			case 3:
				n = atom_getlong(argv);
				x->dst_position[n].x = atom_getfloat(argv+1);
				x->dst_position[n].y = atom_getfloat(argv+2);
				x->dst_position[n].z = atom_getfloat(argv+3);
				break;
		}
	}
	else
		error("Invalid arguments for speaker.");
}


// set source position and calculate output
void dbap_source(t_dbap *x, void *attr, long argc, t_atom *argv)
{
	long n;
	
	if (argc >= (x->attr_dimensions + 1)) {
		n = atom_getlong(argv);
		if ( (n<0) || (n>=MAX_NUM_SPEAKERS) ) {
			error("Invalid arguments for source.");
			return;
		}
		switch (x->attr_dimensions)
		{
			case 1:
				n = atom_getlong(argv);
				x->src_position.x = atom_getfloat(argv+1);
				dbap_calculate1D(x,n);
				break;
			case 2:
				n = atom_getlong(argv);
				x->src_position.x = atom_getfloat(argv+1);
				x->src_position.y = atom_getfloat(argv+2);
				dbap_calculate2D(x,n);
				break;
			case 3:
				n = atom_getlong(argv);
				x->src_position.x = atom_getfloat(argv+1);
				x->src_position.y = atom_getfloat(argv+2);
				x->src_position.z = atom_getfloat(argv+3);
				dbap_calculate3D(x,n);
				break;
		}
	}
	else
		error("Invalid arguments for source.");
}


// Method for Assistance Messages
void dbap_assist(t_dbap *x, void *b, long msg, long arg, char *dst)	// Display assistance messages
{
	if(msg==1)
	{ 
		switch(arg)
		{
			case 0: sprintf(dst, "set source and speaker positions");
				break;	
		}
	}
	else if(msg==2)
	{
		switch(arg)
		{
			case 0: sprintf(dst, "(list) messages for matrix~"); break;
		}
	}
}


// ATTRIBUTE: dimensions (1-3)
t_max_err dbap_attr_setdimensions(t_dbap *x, void *attr, long argc, t_atom *argv)
{
	long n;

	if(argc && argv) {
		n = atom_getlong(argv);
		if (n<1) n = 1;
		if (n>3) n = 3;
		x->attr_dimensions = n;
	}
	return MAX_ERR_NONE;
}



// ATTRIBUTE: number of speakers
t_max_err dbap_attr_setnum_destinations(t_dbap *x, void *attr, long argc, t_atom *argv)
{
	long n;
	
	if(argc && argv) {	
		n = atom_getlong(argv);
		if (n<0) 
			n = 0;
		if (n>MAX_NUM_SPEAKERS) 
			n = MAX_NUM_SPEAKERS;		
		x->attr_num_destinations = n;
	}	
	return MAX_ERR_NONE;
}



// ATTRIBUTE: spatial bluriness
t_max_err dbap_attr_setblur(t_dbap *x, void *attr, long argc, t_atom *argv)
{
	float f;
	
	if(argc && argv) {	
		f = atom_getfloat(argv);
		if (f<0.01) 
			f = 0.01;	
		x->attr_blur = f;
	}	
	return MAX_ERR_NONE;
}




// ATTRIBUTE: rolloff
t_max_err dbap_attr_setrolloff(t_dbap *x, void *attr, long argc, t_atom *argv)
{
	float f;
	
	post("Setting rollof");
	if(argc && argv) {	
		f = atom_getfloat(argv);
		if (f<=0.0) {
			error("Invalid argument for rolloff. Must be > 0");
			return MAX_ERR_NONE;;
		}	
		x->attr_rolloff = f;
		x->a = log(x->attr_rolloff)/log(2.);
	}	
	return MAX_ERR_NONE;
}



/************************************************************************************/
// Calculations


void dbap_calculate1D(t_dbap *x, long n)
{
	
}


void dbap_calculate2D(t_dbap *x, long n)
{
	float k;						// Scaling coefficient
	float k2inv;					// Inverse square of the scaling constant k
	float dx, dy;					// Distance vector
	float r2;						// Bluriness ratio 
	float dia[MAX_NUM_SPEAKERS];	// Distance to ith speaker to the power of x->a.
	t_atom a[3];					// Output array of atoms

	
	long i;

	r2 = x->attr_blur*x->attr_blur;
	k2inv = 0;
	for (i=0; i<x->attr_num_destinations; i++) {
		dx = x->src_position.x - x->dst_position[i].x;
		dy = x->src_position.y - x->dst_position[i].y;
		dia[i] = pow(dx*dx + dy*dy + r2, 0.5*x->a);
		k2inv = k2inv + 1./(dia[i]*dia[i]);
	}
	k = sqrt(1./k2inv);

	atom_setlong(&a[0], n);
	
	for (i=0; i<x->attr_num_destinations; i++) {
		atom_setlong(&a[1], i);
		atom_setfloat(&a[2], k/dia[i]);
		outlet_anything(x->outlet, _sym_list, 3, a);
	}	
}


void dbap_calculate3D(t_dbap *x, long n)
{
	
}