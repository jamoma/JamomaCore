/* 
 * jcom.dbapBformat
 * External for Jamoma: DBAP - Distance Based Amplitude Panning
 * By Trond Lossius, Copyright 2008
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "Jamoma.h"
#include "dbapBformat.h"

// Globals
t_class		*this_class;				// Required. Global pointing to this class 

/************************************************************************************/
// Main() Function

int JAMOMA_EXPORT_MAXOBJ main(void)
{	
	t_class *c;

	jamoma_init();
	common_symbols_init();
	ps_rolloff = gensym("rolloff");
	ps_src_position = gensym("src_position");
	ps_src_gain = gensym("src_gain");
	ps_src_mute = gensym("src_mute");
	ps_src_blur = gensym("blur");
	ps_dst_position = gensym("dst_position");
	ps_dimensions = gensym("dimensions");
	ps_num_sources = gensym("num_sources");
	ps_num_destinations = gensym("num_destinations");


	// Define our class
	c = class_new("jcom.dbapBformat",(method)dbapBformat_new, (method)0L, sizeof(t_dbapBformat), 
		(method)0L, A_GIMME, 0);		

	// Make methods accessible for our class: 
	class_addmethod(c, (method)dbapBformat_blur,				"blur",			A_GIMME,	0);
	class_addmethod(c, (method)dbapBformat_blurall,				"blurall",		A_FLOAT,	0);
	class_addmethod(c, (method)dbapBformat_source,				"src_position",	A_GIMME,	0);
	class_addmethod(c, (method)dbapBformat_destination,			"dst_position",	A_GIMME,	0);
	class_addmethod(c, (method)dbapBformat_sourcegain,			"src_gain",		A_GIMME,	0);
	class_addmethod(c, (method)dbapBformat_sourceweight,		"src_weight",	A_GIMME,	0);
	class_addmethod(c, (method)dbapBformat_mastergain,			"master_gain",	A_FLOAT,	0);
	class_addmethod(c, (method)dbapBformat_sourcemute,			"src_mute",		A_GIMME,	0);

	class_addmethod(c, (method)dbapBformat_hull,				"hull",			A_LONG,		0);

	class_addmethod(c, (method)dbapBformat_view,				"view",			A_GIMME,	0);
	class_addmethod(c, (method)dbapBformat_view_update,			"view_update",	A_LONG,		0);
	class_addmethod(c, (method)dbapBformat_view_size,			"view_size",	A_LONG, A_LONG,	0);
	class_addmethod(c, (method)dbapBformat_view_start,			"view_start",	A_GIMME,	0);
	class_addmethod(c, (method)dbapBformat_view_end,			"view_end",		A_GIMME,	0);

	class_addmethod(c, (method)dbapBformat_assist,				"assist",		A_CANT,		0);
	class_addmethod(c, (method)dbapBformat_info,				"info",			0);
	class_addmethod(c, (method)object_obex_dumpout,		"dumpout",		0);

	// Add attributes to our class:	
	CLASS_ATTR_LONG(c,		"dimensions",		0,		t_dbapBformat,	attr_dimensions);
	CLASS_ATTR_ACCESSORS(c,	"dimensions",		NULL,	dbapBformat_attr_setdimensions);
	CLASS_ATTR_ENUM(c,		"dimensions",		0,	"1 2 3");

	CLASS_ATTR_LONG(c,		"num_sources",		0,		t_dbapBformat,	attr_num_sources);
	CLASS_ATTR_ACCESSORS(c,	"num_sources",		NULL,	dbapBformat_attr_setnum_sources);
	
	CLASS_ATTR_LONG(c,		"num_destinations",	0,		t_dbapBformat,	attr_num_destinations);
	CLASS_ATTR_ACCESSORS(c,	"num_destinations",	NULL,	dbapBformat_attr_setnum_destinations);

	CLASS_ATTR_FLOAT(c,		"rolloff",			0,		t_dbapBformat,	attr_rolloff);
	CLASS_ATTR_ACCESSORS(c,	"rolloff",			NULL,	dbapBformat_attr_setrolloff);
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	this_class = c;	
	return 0;
}


/************************************************************************************/
// Object Life
#pragma mark -
#pragma mark object life

void *dbapBformat_new(t_symbol *msg, long argc, t_atom *argv)
{
	t_dbapBformat *x;
	long i,j;
	
	x = (t_dbapBformat *)object_alloc(this_class);	// create the new instance and return a pointer to it
	
	if (x) {
    	object_obex_store(x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout
		x->outlet[2] = outlet_new(x, 0);				// Third outlet: Visualization data
		x->outlet[1] = outlet_new(x, 0);				// Middle outlet: Distance from convex hull
		x->outlet[0] = outlet_new(x, 0);				// Left outlet: Feed to matrix~
		
		// Initializing and setting defaults for attributes.
		x->master_gain = 1.;						// default value
		x->attr_num_sources = 1;					// default value
		x->attr_num_destinations = 1;				// default value
		x->attr_dimensions = 2;						// two-dimensional by default
		x->attr_rolloff = 6;						// 6 dB rolloff by default

		x->attr_view_update = false;
		atom_setsym(&x->last_view[0],gensym("all"));
		atom_setlong(&x->last_view[1],1);

		x->attr_view_size[0] = 80;					// x size of the view matrix
		x->attr_view_size[1] = 60;					// y size of the view matrix

		x->attr_view_start.x = 0.;					// default value
		x->attr_view_start.y = 0.;					// default value
		x->attr_view_start.z = 0.;					// default value
		x->attr_view_end.x = 22.;					// according to the dbapBformat maxhelp space
		x->attr_view_end.y = 15.;					// according to the dbapBformat maxhelp space
		x->attr_view_end.z = 0.;					// according to the dbapBformat maxhelp space

		for (i=0; i<MAX_SIZE_VIEW_X; i++) {
			for (j=0; j<MAX_SIZE_VIEW_Y; j++) {
				x->view_matrix[i][j] = 0;
			}
		}
		
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

		for (i=0;i<MAX_NUM_WEIGHTED_SOURCES;i++) {
			for (j=0;j<MAX_NUM_WEIGHTED_DESTINATIONS;j++) {
				x->src_weight[i][j] = 1.;
			}
		}

		x->hull_io = false;

		x->hull1.min = 0.0;
		x->hull1.max = 0.0;

		x->hull2.num_dst = 0;
		
		attr_args_process(x, argc, argv);			// handle attribute args
		dbapBformat_calculate_a(x);						// calculate expo0nent coefficiant used for rolloff
		dbapBformat_calculate_variance(x);					// this implisitly also calculate all matrix values
	}
	return (x);										// return the pointer
}



/********************************************************************************************/
// Methods bound to input/inlets

#pragma mark -
#pragma mark methods


// set spatial blur for nth source
void dbapBformat_blur(t_dbapBformat *x, t_symbol *msg, long argc, t_atom *argv)
{
	long n;
	float f;
	
	if ((argc>=2) && argv) {	
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
		dbapBformat_calculate(x, n);
		dbapBformat_update_view(x);
	}
	else
		error("Invalid argument(s) for blur");
}

// set spatial blur for all sources
void dbapBformat_blurall(t_dbapBformat *x, double f)
{
	long i;

	if (f<0.000001) 
		f = 0.000001;		
	for (i=0; i<x->attr_num_sources; i++) {
		x->blur[i] = f;
		dbapBformat_calculate(x, i);
	}
	dbapBformat_update_view(x);
}

// set source position and calculate output
void dbapBformat_source(t_dbapBformat *x, void *msg, long argc, t_atom *argv)
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
		dbapBformat_calculate(x, n);
	}
	else
		error("Invalid arguments for source.");
}


// set position of a destination
void dbapBformat_destination(t_dbapBformat *x, void *msg, long argc, t_atom *argv)
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
		dbapBformat_calculate_variance(x);						// implicitely updates all matrix values
		if (x->hull_io) dbapBformat_calculate_hull(x,n);		// implicitely updates the hull
		dbapBformat_update_view(x);							// implicitely updates the view
	}
	else
		error("Invalid arguments for speaker.");
}


void dbapBformat_sourcegain(t_dbapBformat *x, void *msg, long argc, t_atom *argv)
{
	long n;
	float f;
	
	if ((argc>=2) && argv) {	
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
		dbapBformat_calculate(x, n);
	}
	else
		error("Invalid argument(s) for source_gain");
}



void dbapBformat_mastergain(t_dbapBformat *x, double f)
{
	long i;
	
	x->master_gain = f;
	if (x->master_gain<0.)
		x->master_gain = 0;
	
	// Update all matrix values
	for (i=0; i<x->attr_num_sources; i++)
		dbapBformat_calculate(x, i);
}

void dbapBformat_sourceweight(t_dbapBformat *x, t_symbol *msg, long argc, t_atom *argv)
{
	long source, i;
	float weight;
	
	if (argc && argv) {			
		
		if (atom_gettype(argv) == A_LONG) {						// the first argument is the source number
			source = atom_getlong(argv)-1;						// we start counting from 1 for sources
		
			if ((source < 0)||(source >= x->attr_num_sources)) {
				object_error((t_object*)x, "src_weight : the source n°%d doesn't exist", source);
				return;
			}
		}
		else {
			object_error((t_object*)x, "src_weight : no source id");
			return;
		}
		
		for (i=0; i<x->attr_num_destinations; i++) {				// the rest is the list of weights for each destination
			
			if (i+1 < argc) {
				if (atom_gettype(&argv[i+1]) == A_LONG)
					weight = (float)atom_getlong(&argv[i+1]);
				
				if (atom_gettype(&argv[i+1]) == A_FLOAT)
					weight = atom_getfloat(&argv[i+1]);
			}
			else
				weight = 0.0;									// if the list is smaller than the src_weight array, fill src_weight with 0.0
			
			if (weight < 0.0) 
				weight = 0.0;
			
			x->src_weight[source][i] = weight;
		}
		
		dbapBformat_calculate(x, source);
		dbapBformat_calculate_hull(x, source);
		dbapBformat_update_view(x);
	}
	else
		object_error((t_object*)x, "src_weight : needs arguments");
}

void dbapBformat_sourcemute(t_dbapBformat *x, void *msg, long argc, t_atom *argv)
{
	long n;
	
	if ((argc>=2) && argv) {	
		n = atom_getlong(argv)-1;							// we start counting from 1 for sources
		if ( (n<0) || (n>=MAX_NUM_SOURCES) ) {
			error("Invalid argument(s) for source_gain");
			return;
		}
		argv++;	
		x->src_not_muted[n] = (atom_getfloat(argv)==0.0);
		dbapBformat_calculate(x, n);
	}
	else
		error("Invalid argument(s) for source_gain");
}

/** Turn on/off the calculation of distance to hull */
void dbapBformat_hull(t_dbapBformat *x, long f)
{
	bool refresh = false;

	x->hull_io = f > 0;

	// Is the hull has been built ?
	if (x->hull_io) {
		if (x->attr_dimensions == 1) {
			if ((x->hull1.min == 0.)&&(x->hull1.max == 0.)) refresh = true;
		}
		else if (x->attr_dimensions == 2) {
			if (x->hull2.num_dst == 0) refresh = true;
			}
	}
	if (refresh) dbapBformat_calculate_hull(x,1);	//It's the same hull for all sources
											//TODO : a hull for each source
}

/** Display a hitmap view of the dbapBformat for a destination and a source weight config or all (on the info outlet ?) */
void dbapBformat_view(t_dbapBformat *x, void *msg, long argc, t_atom *argv)
{
	long dst, src,i ,j;
	t_symbol *all;

	if ((argc==2) && argv) {
		if ((atom_gettype(argv) == A_LONG) && (atom_gettype(argv+1) == A_LONG)) {
			dst = atom_getlong(argv)-1;							// we start counting from 1 for destinations
			src = atom_getlong(argv+1)-1;						// we start counting from 1 for sources
			if ((src<0) || (src>=MAX_NUM_SOURCES) || (dst<0) || (dst>=MAX_NUM_DESTINATIONS)) {
				error("Invalid argument(s) for view");
				return;
			}
			dbapBformat_calculate_view(x,dst,src);
		}
		else {
			if ((atom_gettype(argv) == A_SYM) && (atom_gettype(argv+1) == A_LONG)) {
				all = atom_getsym(argv);
				src = atom_getlong(argv+1)-1;					// we start counting from 1 for sources
				if ((src<0) || (src>=MAX_NUM_SOURCES) || (all != gensym("all"))) {
					error("Invalid argument(s) for view");
					return;
				}
				
				// Calculation for each non-zero weighted dst
				for (i=0; i<x->attr_num_destinations; i++) {
					if (x->src_weight[src][i] > 0)
						dbapBformat_calculate_view(x,i,src);
				}
			}
		}
		dbapBformat_output_view(x);

		// then we reset the matrix
		for (i=0; i<MAX_SIZE_VIEW_X; i++) {
			for (j=0; j<MAX_SIZE_VIEW_Y; j++) {
				x->view_matrix[i][j] = 0;
			}
		}
		
		// and we store the view for a later update process
		x->last_view[0] = argv[0];
		x->last_view[1] = argv[1];
	}
	else
		error("Invalid argument(s) for view");
}

/** Turn on/off the auto wiev updating */
void dbapBformat_view_update(t_dbapBformat *x, long io)
{
	x->attr_view_update = io > 0;
}

/** Set the size of hitmap view window */
void dbapBformat_view_size(t_dbapBformat *x, long sizeX, long sizeY) {
	
	if ((sizeX > 0)&&(sizeY > 0)&&(sizeX <= MAX_SIZE_VIEW_X)&&(sizeY <= MAX_SIZE_VIEW_Y)) {
		x->attr_view_size[0] = sizeX;
		x->attr_view_size[1] = sizeY;
		dbapBformat_update_view(x);
	}
	else					
		error("Invalid argument(s) for view_size");
}

/** Set the start point of the hitmap view window */
void dbapBformat_view_start(t_dbapBformat *x, void *msg, long argc, t_atom *argv) {

	if ((argc == x->attr_dimensions) && argv) {
		if (atom_gettype(argv) == A_FLOAT)
			x->attr_view_start.x = atom_getfloat(argv);
		else {
			dbapBformat_update_view(x);
			return;
		}
			
		if (atom_gettype(argv+1) == A_FLOAT)
			x->attr_view_start.y = atom_getfloat(argv+1);
		else {
			dbapBformat_update_view(x);
			return;
		}
			
		if (atom_gettype(argv+2) == A_FLOAT)
			x->attr_view_start.z = atom_getfloat(argv+2);
		else {
			dbapBformat_update_view(x);
			return;
		}
	}
	else
		error("Invalid argument(s) for view_start");
}

/** Set the end point of the hitmap view window */
void dbapBformat_view_end(t_dbapBformat *x, void *msg, long argc, t_atom *argv) {

	if ((argc == x->attr_dimensions) && argv) {
		if (atom_gettype(argv) == A_FLOAT)
			x->attr_view_end.x = atom_getfloat(argv);
		else {
			dbapBformat_update_view(x);
			return;
		}
			
		if (atom_gettype(argv+1) == A_FLOAT)
			x->attr_view_end.y = atom_getfloat(argv+1);
		else {
			dbapBformat_update_view(x);
			return;
		}
			
		if (atom_gettype(argv+2) == A_FLOAT)
			x->attr_view_end.z = atom_getfloat(argv+2);
		else {
			dbapBformat_update_view(x);
			return;
		}
	}
	else
		error("Invalid argument(s) for view_end");
}

void dbapBformat_info(t_dbapBformat *x)
{
	t_atom		a[4];
	long i;

	atom_setfloat(&a[0], x->attr_rolloff);
	object_obex_dumpout(x, ps_rolloff, 1, a);

	atom_setlong(&a[0], x->attr_dimensions);
	object_obex_dumpout(x, ps_dimensions, 1, a);
	
	atom_setlong(&a[0], x->attr_num_sources);
	object_obex_dumpout(x, ps_num_sources, 1, a);
	
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
		atom_setfloat(&a[1], x->blur[i]);
		object_obex_dumpout(x, ps_src_blur, 1, a);
	}
	
	atom_setlong(&a[0], x->attr_num_destinations);
	object_obex_dumpout(x, ps_num_destinations, 1, a);
	
	for (i=0; i<x->attr_num_destinations; i++) {
		atom_setlong(&a[0], i+1);
		atom_setfloat(&a[1], x->dst_position[i].x);
		atom_setfloat(&a[2], x->dst_position[i].y);
		atom_setfloat(&a[3], x->dst_position[i].z);
		object_obex_dumpout(x, ps_dst_position, x->attr_dimensions+1, a);
	}
}


// Method for Assistance Messages
void dbapBformat_assist(t_dbapBformat *x, void *b, long msg, long arg, char *dst)	// Display assistance messages
{
	if (msg==1)
	{ 
		switch(arg)
		{
			case 0: 
				strcpy(dst, "set source and speaker positions");
				break;	
		}
	}
	else if (msg==2)
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
				strcpy(dst, "(list) visualization data");
				break;
			case 3: 
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
t_max_err dbapBformat_attr_setdimensions(t_dbapBformat *x, void *attr, long argc, t_atom *argv)
{
	long n;

	if (argc && argv) {
		n = atom_getlong(argv);
		if (n<1) n = 1;
		if (n>3) n = 3;
		x->attr_dimensions = n;
	}
	return MAX_ERR_NONE;
}


// ATTRIBUTE: number of sources
t_max_err dbapBformat_attr_setnum_sources(t_dbapBformat *x, void *attr, long argc, t_atom *argv)
{
	long n;
	
	if (argc && argv) {	
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
t_max_err dbapBformat_attr_setnum_destinations(t_dbapBformat *x, void *attr, long argc, t_atom *argv)
{
	long n;
	
	if (argc && argv) {	
		n = atom_getlong(argv);
		if (n<0) 
			n = 0;
		if (n>MAX_NUM_DESTINATIONS)
			n = MAX_NUM_DESTINATIONS;		
		x->attr_num_destinations = n;
		// The set of destination points has been changed - recalculate blur radius.
		dbapBformat_calculate_variance(x);
	}	
	return MAX_ERR_NONE;
}


// ATTRIBUTE: rolloff
t_max_err dbapBformat_attr_setrolloff(t_dbapBformat *x, void *attr, long argc, t_atom *argv)
{
	float f;
	long i;
	
	if (argc && argv) {	
		f = atom_getfloat(argv);
		if (f<=0.0) {
			error("Invalid argument for rolloff. Must be > 0");
			return MAX_ERR_NONE;;
		}	
		x->attr_rolloff = f;
		dbapBformat_calculate_a(x);
		dbapBformat_update_view(x);
		// Update all matrix values
		for (i=0; i<x->attr_num_sources; i++)
			dbapBformat_calculate(x, i);
	}
	return MAX_ERR_NONE;
}



/************************************************************************************/
// Methods bound to calculations
#pragma mark -
#pragma mark calculations


void dbapBformat_calculate(t_dbapBformat *x, long n)
{
	// Update all matrix values
	if (x->attr_dimensions==1)
		dbapBformat_calculate1D(x, n);
	else if (x->attr_dimensions==2)
		dbapBformat_calculate2D(x, n);
	else
		dbapBformat_calculate3D(x, n);
}


void dbapBformat_calculate1D(t_dbapBformat *x, long n)
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

	xPos = x->src_position[n].x;

	// Calculate distance from convex hull and project position onto convex hull)
	if (x->hull_io) {
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
	}
	
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
	
	atom_setlong(&a[0], n);
	for (i=0; i<x->attr_num_destinations; i++) {
		atom_setlong(&a[1], i);
		atom_setfloat(&a[2], k/dia[i]);
		outlet_anything(x->outlet[0], _sym_list, 3, a);
	}	
}


void dbapBformat_calculate2D(t_dbapBformat *x, long n)
{
	float k;							// Scaling coefficient
	float k2inv;						// Inverse square of the scaling constant k
	float dx, dy;						// Distance vector
	float r2;							// Bluriness ratio 
	float dia[MAX_NUM_DESTINATIONS];	// Distance to ith speaker to the power of x->a.
	float sdia[MAX_NUM_DESTINATIONS];	// Squared Distance to ith speaker (without bluriness ratio)
	long iC,iN;							// index of the the dest C and N dest in dst_position[]
	float sSC,sSN,sCN;					// squared Distance of the Source to C and N and [CN]
	t_xyz P;							// Projection point of Source on [CN], pointer to coord of S, C and N
	float kCN, dist, min_dist;
	float v, out;						// is the source out of the hull ? (-1 inside, 1 outside)
	long id_min;						// id of the closest dest
	long i,j;
	t_atom a[3];						// Output array of atoms

	r2 = x->blur[n] * x->variance;
	r2 = r2*r2;
	k2inv = 0;
	for (i=0; i<x->attr_num_destinations; i++) {
		dx = x->src_position[n].x - x->dst_position[i].x;
		dy = x->src_position[n].y - x->dst_position[i].y;
		dia[i] = pow(double(dx*dx + dy*dy + r2), double(0.5*x->a));
		if (x->hull_io) sdia[i] = dx*dx + dy*dy;
		
		k2inv = k2inv + (x->src_weight[n][i]*x->src_weight[n][i])/(dia[i]*dia[i]);
	}

	if (x->hull_io) {
		// Find the closest border in the hull
		min_dist = 10000.;
		out = -1.;
		for (j=0; j<x->hull2.num_dst; j++) {
			// index in the dst_position[]
			iC = x->hull2.id_dst[j];
			iN = x->hull2.id_dst[(j+1)%x->hull2.num_dst];
			// squared distance of the source S to the dest C and N
			sSC = sdia[iC];
			sSN = sdia[iN];
			// squared distance of the border
			sCN = x->hull2.dst2next[j];
			kCN = (sSC + sCN - sSN)/sCN;

			if (kCN<0) {
				dist = sqrt(sSC);
			}
			else {
				if (kCN>2) {
					dist = sqrt(sSN);
				}
				else {
					// the projection of the source on [CN] : <CP> = kCN * <CN>
					P.x = (kCN/2) * (x->dst_position[iN].x - x->dst_position[iC].x) + x->dst_position[iC].x;
					P.y = (kCN/2) * (x->dst_position[iN].y - x->dst_position[iC].y) + x->dst_position[iC].y;
					// distance of SP
					dx = x->src_position[n].x - P.x;
					dy = x->src_position[n].y - P.y;
					dist = sqrt(dx*dx + dy*dy);
				}
			}

			// is the source out of the hull ?
			v = (x->dst_position[iN].x - x->dst_position[iC].x)*(x->src_position[n].y - x->dst_position[iC].y);
			v -= (x->dst_position[iN].y - x->dst_position[iC].y)*(x->src_position[n].x - x->dst_position[iC].x);
			if (v>0) out = 1.;

			if (dist < min_dist) {
				min_dist = dist;
				if (sSC < sSN) id_min = iC;
				else  id_min = iN;
			}
		}

		atom_setlong(&a[0],n+1);							// src (index starts at one for users
		atom_setfloat(&a[1],out*min_dist);					// dist to hull
		atom_setlong(&a[2],id_min+1);						// id of the closest dst in the hull 
		outlet_anything(x->outlet[1], _sym_list, 3, a);
	}

	k = sqrt(1./k2inv);
	k = k*x->master_gain*x->src_gain[n]*x->src_not_muted[n];

	atom_setlong(&a[0], n);
	for (i=0; i<x->attr_num_destinations; i++) {
		atom_setlong(&a[1], i);
		atom_setfloat(&a[2], x->src_weight[n][i]*k/dia[i]);
		outlet_anything(x->outlet[0], _sym_list, 3, a);
	}
}

void dbapBformat_calculate3D(t_dbapBformat *x, long n)
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


void dbapBformat_calculate_a(t_dbapBformat *x)
{
	x->a = log(pow(10., (x->attr_rolloff / 20.)))/log(2.);
}


void dbapBformat_calculate_mean_dst_position(t_dbapBformat *x)
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


void dbapBformat_calculate_variance(t_dbapBformat *x)
{
	long i;
	float dx, dy, dz;
	float d2=0;
	

	dbapBformat_calculate_mean_dst_position(x);

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
			dbapBformat_calculate(x, i);
}


void dbapBformat_calculate_hull(t_dbapBformat *x, long n)
{
	// Update all matrix values
	if (x->attr_dimensions==1)
		dbapBformat_calculate_hull1D(x, n);
	else if (x->attr_dimensions==2)
		dbapBformat_calculate_hull2D(x, n);
	else
		dbapBformat_calculate_hull3D(x, n);
}



void dbapBformat_calculate_hull1D(t_dbapBformat *x, long n)
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

// TODO : a way to select dst
// TODO : put the algorithm in hull2.cpp (keep it here while isn't tested to use post())
void dbapBformat_calculate_hull2D(t_dbapBformat *x, long n)
{
	t_H2D h2;			// the data structure used to perform calculation
	long i,j;
	float dx,dy;		// to calculate the lenght of each border of the hull
	long m;				// Index of lowest so far

	//post("h2D : Start ********************************************");
	if (x->attr_num_destinations < 2) return;
	else h2.nb_point = x->attr_num_destinations;

	// Store dst coordinate to prepare algorithm
	for (i = 0; i<x->attr_num_destinations; i++) {
		h2.point[i].v[X] = (double) x->dst_position[i].x;
		h2.point[i].v[Y] = (double) x->dst_position[i].y;
		h2.point[i].vnum = i+1;
		h2.point[i].del = false;
	}

	// Find the lowest and rightmost Point
	m = 0;
	for (i = 1; i<x->attr_num_destinations; i++) {
		if ((h2.point[i].v[Y] <  h2.point[m].v[Y]) || ((h2.point[i].v[Y] == h2.point[m].v[Y]) && (h2.point[i].v[X] > h2.point[m].v[X]))) {
			m = i;
		}
	}


	// Debug
	//post("h2D : The lowest and rigthmost point is %d", m+1);

	// Swap point[0] and point[m]
	Swap(h2.point,0,m);

	// add p0 to each point[i] (to get it during Compare without use a qsort_s)
	for (i = 0; i<x->attr_num_destinations; i++) {
		h2.point[i].p0[0] = h2.point[0].v[0];
		h2.point[i].p0[1] = h2.point[0].v[1];
	}

	// debug
	//dbapBformat_hull2_postpoint(x, h2);

	qsort(
      &h2.point[1],					// pointer to 1st elem
      x->attr_num_destinations-1,	// number of elems
      sizeof(t_structPoint),		// size of each elem
      Compare						// -1,0,+1 compare function
	);

	// count nb_delete ('cause we can't do that in Compare)
	h2.nb_delete = 0;
	for (i = 1; i<x->attr_num_destinations; i++) {
		if (h2.point[i].del) h2.nb_delete++;
	}

	// debug
	//post("nb_del = %d",h2.nb_delete);

	// Remove all elements from point marked deleted
	if (h2.nb_delete > 0) {
		i = 0;
		j = 0;
		while (i < x->attr_num_destinations) {
			if (!h2.point[i].del) {		// if not marked for deletion
				if (i != j) {
					Copy(h2.point,i,j);	// Copy point[i] to point[j]
					Delete(h2.point,i);	// Delete point[i]
				}
				j++;
			}
			else Delete(h2.point,i);	// else Delete point[i]
			i++;
		}
		h2.nb_point = j;
	}

	// Debug
	//post("h2D : %d points sorted by angle",h2.nb_point);
	
	h2.stack = Graham(h2);	// return NULL if it fails
	
	// Debug
	//post("h2D : Hull");

	// store result in x->hull2
	i = 0;
	if (h2.stack) {
		while (h2.stack) {
			// Debug
			//post("vnum = %d, x = %f, y = %f", h2.stack->p->vnum,h2.stack->p->v[X],h2.stack->p->v[Y]);
			
			x->hull2.id_dst[i] = (h2.stack->p->vnum)-1;
			
			// calculate the lenght of each border of the hull
			if (i>0) {
				dx = x->dst_position[x->hull2.id_dst[i-1]].x - x->dst_position[x->hull2.id_dst[i]].x;
				dy = x->dst_position[x->hull2.id_dst[i-1]].y - x->dst_position[x->hull2.id_dst[i]].y;
				x->hull2.dst2next[i-1] = dx*dx + dy*dy;
				//post("dist[%d %d] = %f", x->hull2.id_dst[i-1]+1,x->hull2.id_dst[i]+1,sqrt(x->hull2.dst2next[i-1]));
			}
			
			h2.stack = h2.stack->next;
			i++;
		}
		x->hull2.num_dst = i;
		// for the last border
		dx = x->dst_position[x->hull2.id_dst[i-1]].x - x->dst_position[x->hull2.id_dst[0]].x;
		dy = x->dst_position[x->hull2.id_dst[i-1]].y - x->dst_position[x->hull2.id_dst[0]].y;
		x->hull2.dst2next[i-1] = dx*dx + dy*dy;
		//post("dist[%d %d] = %f", x->hull2.id_dst[i-1]+1,x->hull2.id_dst[0]+1,sqrt(x->hull2.dst2next[i-1]));

	} // else do nothing

	// debug
	//for (i=0; i<x->hull2.num_dst; i++) {
	//	post("id = %d",x->hull2.id_dst[i]+1);
	//}
}

// Print point[] (debugging)
void dbapBformat_hull2_postpoint(t_dbapBformat *x, t_H2D h2)
{
	long i;
	post("H2D : %d points", h2.nb_point);
	for (i = 0; i<x->attr_num_destinations; i++)
		if (!h2.point[i].del)
			post("vnum = %d, x = %f, y = %f", 
			h2.point[i].vnum, h2.point[i].v[X], h2.point[i].v[Y]);
}

void dbapBformat_calculate_hull3D(t_dbapBformat *x, long n)
{
	// TODO: develop algorithm calculating convex hull in 3 dimensions
}

void dbapBformat_calculate_view(t_dbapBformat *x, long dst, long src)
{
	// Update all matrix values
	if (x->attr_dimensions==1)
		dbapBformat_calculate_view1D(x, dst, src);
	else if (x->attr_dimensions==2)
		dbapBformat_calculate_view2D(x, dst, src);
	else
		dbapBformat_calculate_view3D(x, dst, src);
}

/** If the attr_view_update is true : calculate the last view */
void dbapBformat_update_view(t_dbapBformat *x) {
	if (x->attr_view_update)
		defer_low(x,(method) dbapBformat_view, gensym("view"), 2, x->last_view);
}

void dbapBformat_calculate_view1D(t_dbapBformat *x, long dst, long src)
{
	post("TODO: 1D render view");
}

void dbapBformat_calculate_view2D(t_dbapBformat *x, long dst, long src)
{
	float k;							// Scaling coefficient
	float k2inv;						// Inverse square of the scaling constant k
	float dx, dy;						// Distance vector
	float r2;							// Bluriness ratio 
	float dia[MAX_NUM_DESTINATIONS];	// Distance to ith speaker to the power of x->a.
	float div_x, div_y;	
	float pix;
	long i,j,m_j,d;
	t_xyz temp_src;

	div_x = (x->attr_view_end.x - x->attr_view_start.x)/x->attr_view_size[0];
	div_y = (x->attr_view_end.y - x->attr_view_start.y)/x->attr_view_size[1];

	// For each pixel of the view window
	for (i=0; i<x->attr_view_size[0]; i++) {
		for (j=0 ; j<x->attr_view_size[1]; j++) {

			temp_src.x = x->attr_view_start.x + i * div_x;
			temp_src.y = x->attr_view_start.y + j * div_y;
			
			//> dbapBformat calculation for the temp source
			//> calculation of the mean of amplitudes
			
			r2 = x->blur[src] * x->variance;
			r2 = r2*r2;
			k2inv = 0;

			for (d=0; d<x->attr_num_destinations; d++) {
				dx = temp_src.x - x->dst_position[d].x;
				dy = temp_src.y - x->dst_position[d].y;
				dia[d] = pow(double(dx*dx + dy*dy + r2), double(0.5*x->a));
				k2inv = k2inv + (x->src_weight[src][d]*x->src_weight[src][d])/(dia[d]*dia[d]);
			}
			k = sqrt(1./k2inv);

			// squared response [0::1]
			pix =  k*x->src_weight[src][dst]/ dia[dst];
			pix *= pix;

			// keep the max
			m_j = x->attr_view_size[1]-j-1;   // jit.matrix style
			if (x->view_matrix[i][m_j] < (unsigned char)(pix * 255.))
				x->view_matrix[i][m_j] = (unsigned char)(pix * 255.);
		}
	}
}

void dbapBformat_calculate_view3D(t_dbapBformat *x, long dst, long src)
{
	post("TODO: 3D render view");
}

void dbapBformat_output_view(t_dbapBformat *x)
{
	t_atom a[3]; // Output array of atoms
	t_atom e[1]; // Output bang after
	long i,j;

	// For each pixel of the view window
	for (i=0; i<x->attr_view_size[0]; i++) {
		for (j=0; j<x->attr_view_size[1]; j++) {
			atom_setlong(&a[0], i);
			atom_setlong(&a[1], j);
			atom_setlong(&a[2], x->view_matrix[i][j]);
			//object_obex_dumpout(x, gensym("view"), 3, a);	// on info outlet (?)
			outlet_anything(x->outlet[2], gensym("view"), 3, a);
		}
	}
	atom_setsym(&e[0],gensym("bang"));
	//object_obex_dumpout(x, gensym("view"), 1, e);	// on info outlet (?)
	outlet_anything(x->outlet[2], gensym("view"), 1, e);
}