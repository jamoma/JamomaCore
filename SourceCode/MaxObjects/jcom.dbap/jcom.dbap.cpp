/* 
 * jcom.dbap
 * External for Jamoma: DBAP - Distance Based Amplitude Panning
 * By Trond Lossius, Copyright � 2008
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"

// This seems to be the current restrictions of matrix~
const long MAX_NUM_SOURCES = 250;
const long MAX_NUM_DESTINATIONS = 500;

t_symbol		*ps_dst_position,
				*ps_src_position,
				*ps_src_gain,
				*ps_src_mute;

typedef struct _xyz{
	float		x;										///< x position
	float		y;										///< y position
	float		z;										///< z position
} t_xyz;												///< Cartesian coordinate of a point

typedef struct _hull1{
	float		min;									///< minimum x value
	float		max;									///< maximum x value
} t_hull1;												///< Convex hull in 1 dimension
	
typedef struct _dbap{									///< Data structure for this object 
	t_object	ob;										///< Must always be the first field; used by Max
	t_xyz		src_position[MAX_NUM_SOURCES];			///< Positions of the virtual source
	float		blur[MAX_NUM_SOURCES];					///< Spatial bluriness ratio in percents for each source
	float		src_gain[MAX_NUM_SOURCES];				///< Linear gain for each source, not yet used
	float		src_weight[MAX_NUM_SOURCES][MAX_NUM_DESTINATIONS];	///< Weight for each source for each destination 
	float		src_not_muted[MAX_NUM_SOURCES];				///< Mute and unmute sources
	float		master_gain;							///< Mater gain for all ofr the algorithm
	t_xyz		dst_position[MAX_NUM_DESTINATIONS];		///< Array of speaker positions
	t_xyz		mean_dst_position;						///< Mean position of the field of destination points
	t_hull1		hull1;									///< Convex hull in 1 dimension
	float		variance;								///< Bias-corrected variance of distance from destination points to mean destination point
	long		attr_dimensions;						///< Number of dimensions of the speaker and source system
	float		attr_rolloff;							///< Set rolloff with distance in dB.
	long		attr_num_sources;						///< number of active sources
	long		attr_num_destinations;					///< number of active destinations
	float		a;										///< Constant: Exponent controlling amplitude dependance on distance. Depends on attr_rolloff
	void		*outlet[2];								////< Pointer to outlets. Need one for each outlet
} t_dbap;

// Prototypes for methods: need a method for each incoming message


void *dbap_new(t_symbol *msg, long argc, t_atom *argv);
t_max_err dbap_setstep(t_dbap *x, void *attr, long argc, t_atom *argv);

/** Set spatial blur for nth source. */
void dbap_blur(t_dbap *x, t_symbol *msg, long argc, t_atom *argv);

/** Set spatial blur for all sources. */
void dbap_blurall(t_dbap *x, double f);

/** Set the position of the nth virtual source. */
void dbap_source(t_dbap *x, void *msg, long argc, t_atom *argv);

/** Set the position of the nth speaker. */
void dbap_destination(t_dbap *x, void *msg, long argc, t_atom *argv);

/** Set input gain for nth source. */
void dbap_sourcegain(t_dbap *x, void *msg, long argc, t_atom *argv);

/** Set master gain for all values passed from the object to matrix~. */
void dbap_mastergain(t_dbap *x, double f);

/** Set weight for nth source by passing a list to balance each destination. */
void dbap_sourceweight(t_dbap *x, t_symbol *msg, long argc, t_atom *argv);

/** Mute and unmute sources */
void dbap_sourcemute(t_dbap *x, void *msg, long argc, t_atom *argv);

/** Get info on destination setup ++ */
void dbap_info(t_dbap *x);

/** Display assist strings while patching. */
void dbap_assist(t_dbap *x, void *b, long msg, long arg, char *dst);

/** Set number of dimensions of the system. */
t_max_err dbap_attr_setdimensions(t_dbap *x, void *attr, long argc, t_atom *argv);

/** Set the number of sources of the system. */
t_max_err dbap_attr_setnum_sources(t_dbap *x, void *attr, long argc, t_atom *argv);

/** Set the number of destinations of the system. */
t_max_err dbap_attr_setnum_destinations(t_dbap *x, void *attr, long argc, t_atom *argv);

/** Set spatial blur coefficient */
t_max_err dbap_attr_setblur(t_dbap *x, void *attr, long argc, t_atom *argv);

/** Set rolloff in dB */
t_max_err dbap_attr_setrolloff(t_dbap *x, void *attr, long argc, t_atom *argv);

/** Calculation of exponent coefficient based on rolloff */
void dbap_calculate_a(t_dbap *x);

/** General method for calculation of matrix coefficient for nth source. */
void dbap_calculate(t_dbap *x, long n);

/** Calculate matrix coefficients for nth source: 1D space. */
void dbap_calculate1D(t_dbap *x, long n);

/** Calculate matrix coefficients for nth source: 2D space. */
void dbap_calculate2D(t_dbap *x, long n);

/** Calculate matrix coefficients for nth source: 3D space. */
void dbap_calculate3D(t_dbap *x, long n);

/** Calculate mean position of the destination points. */
void dbap_calculate_mean_dst_position(t_dbap *x);

/** Calculate bias-corrected variance of distance from destination points to mean destination point. */
void dbap_calculate_variance(t_dbap *x);

/** Calculate convex hull of space spanned by destination points. */ 
void dbap_calculate_hull(t_dbap *x);

/** Calculate convex hull of space spanned by destination points: 1D */
void dbap_calculate_hull1D(t_dbap *x);

/** Calculate convex hull of space spanned by destination points: 2D */
void dbap_calculate_hull2D(t_dbap *x);

/** Calculate convex hull of space spanned by destination points: 3D */
void dbap_calculate_hull3D(t_dbap *x);


// Globals
t_class		*this_class;				// Required. Global pointing to this class 



/************************************************************************************/
// Main() Function

int JAMOMA_EXPORT_MAXOBJ main(void)
{	
	t_class *c;

	jamoma_init();
	common_symbols_init();
	ps_src_position = gensym("src_position");
	ps_src_gain = gensym("src_gain");
	ps_src_mute = gensym("src_mute");
	ps_dst_position = gensym("dst_position");

	// Define our class
	c = class_new("jcom.dbap",(method)dbap_new, (method)0L, sizeof(t_dbap), 
		(method)0L, A_GIMME, 0);		

	// Make methods accessible for our class: 
	class_addmethod(c, (method)dbap_blur,				"blur",			A_GIMME,	0);
	class_addmethod(c, (method)dbap_blurall,			"blurall",		A_FLOAT,	0);
	class_addmethod(c, (method)dbap_source,				"src_position",	A_GIMME,	0);
	class_addmethod(c, (method)dbap_destination,		"dst_position",	A_GIMME,	0);
	class_addmethod(c, (method)dbap_sourcegain,			"src_gain",		A_GIMME,	0);
	class_addmethod(c, (method)dbap_sourceweight,		"src_weight",	A_GIMME,	0);
	class_addmethod(c, (method)dbap_mastergain,			"master_gain",	A_FLOAT,	0);
	class_addmethod(c, (method)dbap_sourcemute,			"src_mute",		A_GIMME,	0);
	class_addmethod(c, (method)dbap_assist,				"assist",		A_CANT,		0);
	class_addmethod(c, (method)dbap_info,				"info",			0);
	class_addmethod(c, (method)object_obex_dumpout,		"dumpout",		0);  

	// Add attributes to our class:	
	CLASS_ATTR_LONG(c,		"dimensions",		0,		t_dbap,	attr_dimensions);
	CLASS_ATTR_ACCESSORS(c,	"dimensions",		NULL,	dbap_attr_setdimensions);
	CLASS_ATTR_ENUM(c,		"dimensions",		0,	"1 2 3");

	CLASS_ATTR_LONG(c,		"num_sources",		0,		t_dbap,	attr_num_sources);
	CLASS_ATTR_ACCESSORS(c,	"num_sources",		NULL,	dbap_attr_setnum_sources);
	
	CLASS_ATTR_LONG(c,		"num_destinations",	0,		t_dbap,	attr_num_destinations);
	CLASS_ATTR_ACCESSORS(c,	"num_destinations",	NULL,	dbap_attr_setnum_destinations);

	CLASS_ATTR_FLOAT(c,		"rolloff",			0,		t_dbap,	attr_rolloff);
	CLASS_ATTR_ACCESSORS(c,	"rolloff",			NULL,	dbap_attr_setrolloff);		
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	this_class = c;	
	return 0;
}


/************************************************************************************/
// Object Life
#pragma mark -
#pragma mark object life

void *dbap_new(t_symbol *msg, long argc, t_atom *argv)
{
	t_dbap *x;
	long i,j;
	
	x = (t_dbap *)object_alloc(this_class);	// create the new instance and return a pointer to it
	
	if(x){
    	object_obex_store(x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout
		x->outlet[1] = outlet_new(x, 0);				// Middle outlet: Distance from convex hull
		x->outlet[0] = outlet_new(x, 0);				// Left outlet: Feed to matrix~
		
		// Initializing and setting defaults for attributes.
		x->master_gain = 1.;						// default value
		x->attr_num_sources = 1;					// default value
		x->attr_num_destinations = 1;				// default value
		x->attr_dimensions = 2;						// two-dimensional by default
		x->attr_rolloff = 6;						// 6 dB rolloff by default			
		
		for (i=0; i<MAX_NUM_SOURCES; i++) {
			x->src_position[i].x = 0.;
			x->src_position[i].y = 0.;
			x->src_position[i].z = 0.;
			x->blur[i]	   = 0.000001;
			x->src_gain[i] = 1.0;
			x->src_not_muted[i] = 1.0;
		}
		
		for (i=0; i<MAX_NUM_DESTINATIONS; i++) {
			x->dst_position[i].x = 0.;
			x->dst_position[i].y = 0.;
			x->dst_position[i].z = 0.;
		}

		for(i=0;i<MAX_NUM_SOURCES;i++){
			for(j=0;j<MAX_NUM_SOURCES;j++){
				x->src_weight[i][j] = 1.;
			}
		}

		x->hull1.min = 0.0;
		x->hull1.max = 0.0;
		
		attr_args_process(x, argc, argv);			// handle attribute args
		dbap_calculate_a(x);						// calculate expo0nent coefficiant used for rolloff
		dbap_calculate_variance(x);					// this implisitly also calculate all matrix values
	}
	return (x);										// return the pointer
}



/************************************************************************************/
// Methods bound to input/inlets

#pragma mark -
#pragma mark methods


// set spatial blur for nth source
void dbap_blur(t_dbap *x, t_symbol *msg, long argc, t_atom *argv)
{
	long n;
	float f;
	
	if((argc>=2) && argv) {	
		n = atom_getlong(argv)-1;							// we start counting from 1 for sources
		if ( (n<0) || (n>=MAX_NUM_SOURCES) ) {
			error("Invalid argument(s) for blur");
			return;
		}
		argv++;
		f = atom_getfloat(argv);
		if (f<0.000001) 
			f = 0.000001;	
		x->blur[n] = f;
		dbap_calculate(x, n);
	}
	else
		error("Invalid argument(s) for blur");
}

// set spatial blur for all sources
void dbap_blurall(t_dbap *x, double f)
{
	long i;

	if (f<0.000001) 
		f = 0.000001;		
	for (i=0; i<x->attr_num_sources; i++) {
		x->blur[i] = f;
		dbap_calculate(x, i);
	}
}

// set source position and calculate output
void dbap_source(t_dbap *x, void *msg, long argc, t_atom *argv)
{
	long n;
	
	if (argc >= (x->attr_dimensions + 1)) {
		n = atom_getlong(argv)-1;							// we start counting from 1 for sources
		if ( (n<0) || (n>=MAX_NUM_DESTINATIONS) ) {
			error("Invalid arguments for source.");
			return;
		}
		switch (x->attr_dimensions)
		{
			case 1:
				x->src_position[n].x = atom_getfloat(argv+1);
				break;
			case 2:
				x->src_position[n].x = atom_getfloat(argv+1);
				x->src_position[n].y = atom_getfloat(argv+2);
				break;
			case 3:
				x->src_position[n].x = atom_getfloat(argv+1);
				x->src_position[n].y = atom_getfloat(argv+2);
				x->src_position[n].z = atom_getfloat(argv+3);
				break;
		}
		dbap_calculate(x, n);
	}
	else
		error("Invalid arguments for source.");
}


// set position of a destination
void dbap_destination(t_dbap *x, void *msg, long argc, t_atom *argv)
{
	long n;
	
	if (argc >= (x->attr_dimensions + 1)) {
		n = atom_getlong(argv)-1;							// we start counting from 1 for destinations
		if ( (n<0) || (n>=MAX_NUM_DESTINATIONS) ) {
			error("Invalid arguments for destination.");
			return;
		}
		switch (x->attr_dimensions)
		{
			case 1:
				x->dst_position[n].x = atom_getfloat(argv+1);
				break;
			case 2:
				x->dst_position[n].x = atom_getfloat(argv+1);
				x->dst_position[n].y = atom_getfloat(argv+2);
				break;
			case 3:
				x->dst_position[n].x = atom_getfloat(argv+1);
				x->dst_position[n].y = atom_getfloat(argv+2);
				x->dst_position[n].z = atom_getfloat(argv+3);
				break;
		}
		// The set of destination points has been changed - recalculate variance.
		dbap_calculate_variance(x);		// implicitely updates all matrix values
		dbap_calculate_hull(x);

	}
	else
		error("Invalid arguments for speaker.");
}


void dbap_sourcegain(t_dbap *x, void *msg, long argc, t_atom *argv)
{
	long n;
	float f;
	
	if((argc>=2) && argv) {	
		n = atom_getlong(argv)-1;							// we start counting from 1 for sources
		if ( (n<0) || (n>=MAX_NUM_SOURCES) ) {
			error("Invalid argument(s) for source_gain");
			return;
		}
		argv++;
		f = atom_getfloat(argv);
		if (f<0.0) 
			f = 0.0;	
		x->src_gain[n] = f;
		dbap_calculate(x, n);
	}
	else
		error("Invalid argument(s) for source_gain");
}



void dbap_mastergain(t_dbap *x, double f)
{
	long i;
	
	x->master_gain = f;
	if (x->master_gain<0.)
		x->master_gain = 0;
	
	// Update all matrix values
	for (i=0; i<x->attr_num_sources; i++)
		dbap_calculate(x, i);
}

void dbap_sourceweight(t_dbap *x, t_symbol *msg, long argc, t_atom *argv)
{
	long n;
	long i;
	float f;
	
	if((argc == MAX_NUM_DESTINATIONS+1) && argv) {			// the first argument is the source number
		n = atom_getlong(argv)-1;							// we start counting from 1 for sources
		if ( (n<0) || (n>=MAX_NUM_SOURCES) ) {
			error("Invalid argument(s) for source_weight");
			return;
		}
		for(i=1;i<argc;i++){								// the rest is the list of weights for each destination
			f = atom_getfloat(argv+i);
			if (f<0.0) 
				f = 0.0;	
			x->src_weight[n][i] = f;
		}
	}
	else
		error("Invalid argument(s) for source_weight");
}

void dbap_sourcemute(t_dbap *x, void *msg, long argc, t_atom *argv)
{
	long n;
	
	if((argc>=2) && argv) {	
		n = atom_getlong(argv)-1;							// we start counting from 1 for sources
		if ( (n<0) || (n>=MAX_NUM_SOURCES) ) {
			error("Invalid argument(s) for source_gain");
			return;
		}
		argv++;	
		x->src_not_muted[n] = (atom_getfloat(argv)==0.0);
		dbap_calculate(x, n);
	}
	else
		error("Invalid argument(s) for source_gain");
}


void dbap_info(t_dbap *x)
{
	t_atom		a[4];
	long i;

	for (i=0; i<x->attr_num_sources; i++) {
		atom_setlong(&a[0], i+1);
		atom_setfloat(&a[1], x->src_position[i].x);
		atom_setfloat(&a[2], x->src_position[i].y);
		atom_setfloat(&a[3], x->src_position[i].z);
		object_obex_dumpout(x, ps_src_position, x->attr_dimensions+1, a);
		atom_setfloat(&a[1], x->src_gain[i]);
		object_obex_dumpout(x, ps_src_gain, 2, a);
		atom_setlong(&a[1], (x->src_not_muted[i]==0));
		object_obex_dumpout(x, ps_src_mute, 2, a);
	}
	
	for (i=0; i<x->attr_num_destinations; i++) {
		atom_setlong(&a[0], i+1);
		atom_setfloat(&a[1], x->dst_position[i].x);
		atom_setfloat(&a[2], x->dst_position[i].y);
		atom_setfloat(&a[3], x->dst_position[i].z);
		object_obex_dumpout(x, ps_dst_position, x->attr_dimensions+1, a);
	}
}


// Method for Assistance Messages
void dbap_assist(t_dbap *x, void *b, long msg, long arg, char *dst)	// Display assistance messages
{
	if(msg==1)
	{ 
		switch(arg)
		{
			case 0: 
				strcpy(dst, "set source and speaker positions");
				break;	
		}
	}
	else if(msg==2)
	{
		switch(arg)
		{
			case 0: 
				strcpy(dst, "(list) messages for matrix~");
				break;
			case 1: 
				strcpy(dst, "(list) distance from convex hull");
				break;
			case 2: 
				strcpy(dst, "dumpout");
				break;
		}
	}
}


/************************************************************************************/
// Methods bound to attributes
#pragma mark -
#pragma mark attribute accessors

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


// ATTRIBUTE: number of sources
t_max_err dbap_attr_setnum_sources(t_dbap *x, void *attr, long argc, t_atom *argv)
{
	long n;
	
	if(argc && argv) {	
		n = atom_getlong(argv);
		if (n<0) 
			n = 0;
		if (n>MAX_NUM_SOURCES) 
			n = MAX_NUM_SOURCES;		
		x->attr_num_sources = n;
		// The set of destination points has been changed - recalculate blur radius.
	}	
	return MAX_ERR_NONE;
}


// ATTRIBUTE: number of destinations
t_max_err dbap_attr_setnum_destinations(t_dbap *x, void *attr, long argc, t_atom *argv)
{
	long n;
	
	if(argc && argv) {	
		n = atom_getlong(argv);
		if (n<0) 
			n = 0;
		if (n>MAX_NUM_DESTINATIONS) 
			n = MAX_NUM_DESTINATIONS;		
		x->attr_num_destinations = n;
		// The set of destination points has been changed - recalculate blur radius.
		dbap_calculate_variance(x);
	}	
	return MAX_ERR_NONE;
}


// ATTRIBUTE: rolloff
t_max_err dbap_attr_setrolloff(t_dbap *x, void *attr, long argc, t_atom *argv)
{
	float f;
	
	if(argc && argv) {	
		f = atom_getfloat(argv);
		if (f<=0.0) {
			error("Invalid argument for rolloff. Must be > 0");
			return MAX_ERR_NONE;;
		}	
		x->attr_rolloff = f;
		dbap_calculate_a(x);
	}	
	return MAX_ERR_NONE;
}



/************************************************************************************/
// Methods bound to calculations
#pragma mark -
#pragma mark calculations


void dbap_calculate(t_dbap *x, long n)
{
	// Update all matrix values
	if (x->attr_dimensions==1)
		dbap_calculate1D(x, n);
	else if (x->attr_dimensions==2)
		dbap_calculate2D(x, n);
	else
		dbap_calculate3D(x, n);
}


void dbap_calculate1D(t_dbap *x, long n)
{
	double xPos;						// x-position of the source
	double dist;						// Distance from source to convex hull
	double k;							// Scaling coefficient
	double k2inv;						// Inverse square of the scaling constant k
	double dx;							// Distance vector
	double r2;							// Bluriness ratio 
	double dia[MAX_NUM_DESTINATIONS];	// Distance to ith speaker to the power of x->a.
	t_atom a[3];						// Output array of atoms
	
	
	long i;

	// Calculate distance from convex hull and project position onto convex hull)
	xPos = x->src_position[n].x;
	if (xPos < x->hull1.min) {
		dist = x->hull1.min - xPos;
		xPos = x->hull1.min;
	}
	else if (xPos > x->hull1.max) {
		dist = xPos - x->hull1.max;
		xPos = x->hull1.max;
	}
	else
		dist = 0.0;
	
	atom_setlong(&a[0], n);
	atom_setfloat(&a[1], dist);
	outlet_anything(x->outlet[1], _sym_list, 2, a);
	
	r2 = x->blur[n] * x->variance;
	r2 = r2*r2;
	k2inv = 0;
	for (i=0; i<x->attr_num_destinations; i++) {
		dx = xPos - x->dst_position[i].x;
		dia[i] = pow(dx*dx + r2, 0.5*x->a);
		k2inv = k2inv + 1./(dia[i]*dia[i]);
	}
	k = sqrt(1./k2inv);
	k = k*x->master_gain*x->src_gain[n]*x->src_not_muted[n];
	

	
	for (i=0; i<x->attr_num_destinations; i++) {
		atom_setlong(&a[1], i);
		atom_setfloat(&a[2], k/dia[i]);
		outlet_anything(x->outlet[0], _sym_list, 3, a);
	}	
}


void dbap_calculate2D(t_dbap *x, long n)
{
	float k;							// Scaling coefficient
	float k2inv;						// Inverse square of the scaling constant k
	float dx, dy;						// Distance vector
	float r2;							// Bluriness ratio 
	float dia[MAX_NUM_DESTINATIONS];	// Distance to ith speaker to the power of x->a.
	t_atom a[3];						// Output array of atoms

	
	long i;

	r2 = x->blur[n] * x->variance;
	r2 = r2*r2;
	k2inv = 0;
	for (i=0; i<x->attr_num_destinations; i++) {
		dx = x->src_position[n].x - x->dst_position[i].x;
		dy = x->src_position[n].y - x->dst_position[i].y;
		dia[i] = pow(double(dx*dx + dy*dy + r2), double(0.5*x->a));
		k2inv = k2inv + (x->src_weight[n][i]*x->src_weight[n][i])/(dia[i]*dia[i]);
	}
	k = sqrt(1./k2inv);
	k = k*x->master_gain*x->src_gain[n]*x->src_not_muted[n];

	atom_setlong(&a[0], n);
	
	for (i=0; i<x->attr_num_destinations; i++) {
		atom_setlong(&a[1], i);
		atom_setfloat(&a[2], k/dia[i]);
		outlet_anything(x->outlet[0], _sym_list, 3, a);
	}	
}


void dbap_calculate3D(t_dbap *x, long n)
{
	double k;							// Scaling coefficient
	double k2inv;						// Inverse square of the scaling constant k
	double dx, dy, dz;					// Distance vector
	double r2;							// Bluriness ratio 
	double dia[MAX_NUM_DESTINATIONS];	// Distance to ith speaker to the power of x->a.
	t_atom a[3];						// Output array of atoms
	
	
	long i;
	
	r2 = x->blur[n] * x->variance;
	r2 = r2*r2;
	k2inv = 0;
	for (i=0; i<x->attr_num_destinations; i++) {
		dx = x->src_position[n].x - x->dst_position[i].x;
		dy = x->src_position[n].y - x->dst_position[i].y;
		dz = x->src_position[n].z - x->dst_position[i].z;
		dia[i] = pow(double(dx*dx + dy*dy + dz*dz + r2), double(0.5*x->a));
		k2inv = k2inv + 1./(dia[i]*dia[i]);
	}
	k = sqrt(1./k2inv);
	k = k*x->master_gain*x->src_gain[n]*x->src_not_muted[n];
	
	atom_setlong(&a[0], n);
	
	for (i=0; i<x->attr_num_destinations; i++) {
		atom_setlong(&a[1], i);
		atom_setfloat(&a[2], k/dia[i]);
		outlet_anything(x->outlet[0], _sym_list, 3, a);
	}	
}


void dbap_calculate_a(t_dbap *x)
{
	x->a = log(x->attr_rolloff)/log(2.);
}


void dbap_calculate_mean_dst_position(t_dbap *x)
{
	long i;
	float a,b,c;

	a = 0;
	b = 0;
	c = 0;
	for (i=0; i<x->attr_num_destinations; i++) {
		a += x->dst_position[i].x;
		b += x->dst_position[i].y;
		c += x->dst_position[i].z;
	}
	x->mean_dst_position.x = a/x->attr_num_destinations;
	x->mean_dst_position.y = b/x->attr_num_destinations;
	x->mean_dst_position.z = c/x->attr_num_destinations;
}


void dbap_calculate_variance(t_dbap *x)
{
	long i;
	float dx, dy, dz;
	float d2=0;
	

	dbap_calculate_mean_dst_position(x);

	if (x->attr_dimensions==1) {
		for (i=0; i<x->attr_num_destinations; i++) {
			dx = x->dst_position[i].x - x->mean_dst_position.x;
			d2 += dx*dx;
		}		
	}
	else if (x->attr_dimensions==2) {
		for (i=0; i<x->attr_num_destinations; i++) {
			dx = x->dst_position[i].x - x->mean_dst_position.x;
			dy = x->dst_position[i].y - x->mean_dst_position.y;
			d2 += dx*dx + dy*dy;
		}
	}
	else {
		for (i=0; i<x->attr_num_destinations; i++) {
			dx = x->dst_position[i].x - x->mean_dst_position.x;
			dy = x->dst_position[i].y - x->mean_dst_position.y;
			dz = x->dst_position[i].z - x->mean_dst_position.z;
			d2 += dx*dx + dy*dy + dz*dz;
		}		
	}
	x->variance = sqrt(d2/(x->attr_num_destinations-1));
	
	// Update all matrix values
	for (i=0; i<x->attr_num_sources; i++)
			dbap_calculate(x, i);
}


void dbap_calculate_hull(t_dbap *x)
{
	// Update all matrix values
	if (x->attr_dimensions==1)
		dbap_calculate_hull1D(x);
	else if (x->attr_dimensions==2)
		dbap_calculate_hull2D(x);
	else
		dbap_calculate_hull3D(x);
}



void dbap_calculate_hull1D(t_dbap *x)
{
	long i;
	float min, max;
	
	min = x->dst_position[0].x;
	max = x->dst_position[0].x;
	
	for (i=1; i<x->attr_num_destinations; i++) {
		if (x->dst_position[i].x < min)
			min = x->dst_position[i].x;
		if (x->dst_position[i].x > max)
			max = x->dst_position[i].x;
	}
	x->hull1.min = min;
	x->hull1.max = max;
}



void dbap_calculate_hull2D(t_dbap *x)
{
	// TODO: develop algorithm calculating convex hull in 2 dimensions
}

void dbap_calculate_hull3D(t_dbap *x)
{
	// TODO: develop algorithm calculating convex hull in 3 dimensions
}
