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
	psRollOff				= gensym("rolloff");
	psSourcePosition		= gensym("source_position");
	psSourceGain			= gensym("source_gain");
	psSourceMute			= gensym("src_mute");
	psSourceBlur			= gensym("blur");
	psDestinationPosition	= gensym("destination_position");
	psDimensions			= gensym("dimensions");
	psNumberOfSources		= gensym("num_sources");
	psNumberOfDestinations	= gensym("num_destinations");

	// Define our class
	c = class_new("jcom.dbapBformat",(method)dbapBformatNew, (method)0L, sizeof(t_dbapBformat), 
		(method)0L, A_GIMME, 0);		

	// Make methods accessible for our class: 
	class_addmethod(c, (method)dbapBformatBlur,				"blur",				A_GIMME,	0);
	class_addmethod(c, (method)dbapBformatBlurAll,			"blurall",			A_FLOAT,	0);
	class_addmethod(c, (method)dbapBformatSource,			"source_position",	A_GIMME,	0);
	class_addmethod(c, (method)dbapBformatDestination,		"destination_position",	A_GIMME,	0);
	class_addmethod(c, (method)dbapBformatSourceGain,		"source_gain",		A_GIMME,	0);
	class_addmethod(c, (method)dbapBformatSourceWeight,		"source_weight",		A_GIMME,	0);
	class_addmethod(c, (method)dbapBformatMasterGain,		"master_gain",		A_FLOAT,	0);
	class_addmethod(c, (method)dbapBformatSourceMute,		"src_mute",			A_GIMME,	0);

	class_addmethod(c, (method)dbapBformatHull,				"hull",				A_LONG,		0);

	class_addmethod(c, (method)dbapBformatView,				"view",				A_GIMME,	0);
	class_addmethod(c, (method)dbapBformatViewUpdate,		"view_update",		A_LONG,		0);
	class_addmethod(c, (method)dbapBformatViewMatrixSize,	"view_size",		A_LONG, A_LONG,	0);
	class_addmethod(c, (method)dbapBformatViewStart,		"view_start",		A_GIMME,	0);
	class_addmethod(c, (method)dbapBformatViewEnd,			"view_end",			A_GIMME,	0);

	class_addmethod(c, (method)dbapBformatAssist,			"assist",			A_CANT,		0);
	class_addmethod(c, (method)dbapBformatInfo,				"info",				0);
	class_addmethod(c, (method)object_obex_dumpout,			"dumpout",			0);

	// Add attributes to our class:	
	CLASS_ATTR_LONG(c,		"dimensions",		0,		t_dbapBformat,	attrDimensions);
	CLASS_ATTR_ACCESSORS(c,	"dimensions",		NULL,	dbapBformatAttrSetDimensions);
	CLASS_ATTR_ENUM(c,		"dimensions",		0,	"1 2 3");

	CLASS_ATTR_LONG(c,		"num_sources",		0,		t_dbapBformat,	attrNumberOfSources);
	CLASS_ATTR_ACCESSORS(c,	"num_sources",		NULL,	dbapBformatAttrSetNumberOfSources);
	
	CLASS_ATTR_LONG(c,		"num_destinations",	0,		t_dbapBformat,	attrNumberOfDestinations);
	CLASS_ATTR_ACCESSORS(c,	"num_destinations",	NULL,	dbapBformatAttrSetNumberOfDestinations);

	CLASS_ATTR_FLOAT(c,		"rolloff",			0,		t_dbapBformat,	attrRollOff);
	CLASS_ATTR_ACCESSORS(c,	"rolloff",			NULL,	dbapBformatAttrSetRollOff);
	
	//CLASS_ATTR_FLOAT(c,		"omni",				0,		t_dbapBformat,	attr_order_omni);
	//CLASS_ATTR_ACCESSORS(c,	"omni",				NULL,	dbabBbformatAttrSetOmniOrder);
	
	//CLASS_ATTR_FLOAT(c,		"first",			0,		t_dbapBformat,	attr_order_first);
	//CLASS_ATTR_ACCESSORS(c,	"first",			NULL,	dbapBformatAttrSetFirstOrder);
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	this_class = c;	
	return 0;
}


/************************************************************************************/
// Object Life
#pragma mark -
#pragma mark object life

void *dbapBformatNew(t_symbol *msg, long argc, t_atom *argv)
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
		x->masterGain = 1.;						// default value
		x->attrNumberOfSources = 1;					// default value
		x->attrNumberOfDestinations = 1;				// default value
		x->attrDimensions = 2;						// two-dimensional by default
		x->attrRollOff = 6;						// 6 dB rolloff by default

		x->attrViewMatrixUpdate = false;
		atom_setsym(&x->lastView[0],gensym("all"));
		atom_setlong(&x->lastView[1],1);

		x->attrViewMatrixSize[0] = 80;					// x size of the view matrix
		x->attrViewMatrixSize[1] = 60;					// y size of the view matrix

		x->attrViewMatrixStart.x = 0.;					// default value
		x->attrViewMatrixStart.y = 0.;					// default value
		x->attrViewMatrixStart.z = 0.;					// default value
		x->attrViewMatrixEnd.x = 22.;					// according to the dbapBformat maxhelp space
		x->attrViewMatrixEnd.y = 15.;					// according to the dbapBformat maxhelp space
		x->attrViewMatrixEnd.z = 0.;					// according to the dbapBformat maxhelp space

		for (i=0; i<MAX_SIZE_VIEW_X; i++) {
			for (j=0; j<MAX_SIZE_VIEW_Y; j++) {
				x->viewMatrix[i][j] = 0;
			}
		}
		
		for (i=0; i<MAX_NUM_SOURCES; i++) {
			x->sourcePosition[i].x = 0.;
			x->sourcePosition[i].y = 0.;
			x->sourcePosition[i].z = 0.;
			x->blur[i]	   = 0.000001;
			x->sourceGain[i] = 1.0;
			x->sourceNotMuted[i] = 1.0;
		}
		
		for (i=0; i<MAX_NUM_DESTINATIONS; i++) {
			x->destinationPosition[i].x = 0.;
			x->destinationPosition[i].y = 0.;
			x->destinationPosition[i].z = 0.;
		}

		for (i=0;i<MAX_NUM_WEIGHTED_SOURCES;i++) {
			for (j=0;j<MAX_NUM_WEIGHTED_DESTINATIONS;j++) {
				x->sourceWeight[i][j] = 1.;
			}
		}

		x->hullActive = false;

		x->hullInOneDimension.min = 0.0;
		x->hullInOneDimension.max = 0.0;

		x->hullInTwoDimensions.num_dst = 0;
		
		attr_args_process(x, argc, argv);			// handle attribute args
		dbapBformatCalculateA(x);						// calculate expo0nent coefficiant used for rolloff
		dbapBformatCalculateVariance(x);					// this implisitly also calculate all matrix values
	}
	return (x);										// return the pointer
}



/********************************************************************************************/
// Methods bound to input/inlets

#pragma mark -
#pragma mark methods


// set spatial blur for nth source
void dbapBformatBlur(t_dbapBformat *x, t_symbol *msg, long argc, t_atom *argv)
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
		dbapBformatCalculate(x, n);
		dbapBformatUpdateView(x);
	}
	else
		error("Invalid argument(s) for blur");
}

// set spatial blur for all sources
void dbapBformatBlurAll(t_dbapBformat *x, double f)
{
	long i;

	if (f<0.000001) 
		f = 0.000001;		
	for (i=0; i<x->attrNumberOfSources; i++) {
		x->blur[i] = f;
		dbapBformatCalculate(x, i);
	}
	dbapBformatUpdateView(x);
}

// set source position and calculate output
void dbapBformatSource(t_dbapBformat *x, void *msg, long argc, t_atom *argv)
{
	long n;
	
	if (argc >= (x->attrDimensions + 1)) {
		n = atom_getlong(argv)-1;							// we start counting from 1 for sources
		if ( (n<0) || (n>=MAX_NUM_DESTINATIONS) ) {
			error("Invalid arguments for source.");
			return;
		}
		switch (x->attrDimensions)
		{
			case 1:
				x->sourcePosition[n].x = atom_getfloat(argv+1);
				break;
			case 2:
				x->sourcePosition[n].x = atom_getfloat(argv+1);
				x->sourcePosition[n].y = atom_getfloat(argv+2);
				break;
			case 3:
				x->sourcePosition[n].x = atom_getfloat(argv+1);
				x->sourcePosition[n].y = atom_getfloat(argv+2);
				x->sourcePosition[n].z = atom_getfloat(argv+3);
				break;
		}
		dbapBformatCalculate(x, n);
	}
	else
		error("Invalid arguments for source.");
}


// set position of a destination
void dbapBformatDestination(t_dbapBformat *x, void *msg, long argc, t_atom *argv)
{
	long n;
	
	if (argc >= (x->attrDimensions + 1)) {
		n = atom_getlong(argv)-1;							// we start counting from 1 for destinations
		if ( (n<0) || (n>=MAX_NUM_DESTINATIONS) ) {
			error("Invalid arguments for destination.");
			return;
		}
		switch (x->attrDimensions)
		{
			case 1:
				x->destinationPosition[n].x = atom_getfloat(argv+1);
				break;
			case 2:
				x->destinationPosition[n].x = atom_getfloat(argv+1);
				x->destinationPosition[n].y = atom_getfloat(argv+2);
				break;
			case 3:
				x->destinationPosition[n].x = atom_getfloat(argv+1);
				x->destinationPosition[n].y = atom_getfloat(argv+2);
				x->destinationPosition[n].z = atom_getfloat(argv+3);
				break;
		}
		// The set of destination points has been changed - recalculate variance.
		dbapBformatCalculateVariance(x);						// implicitely updates all matrix values
		if (x->hullActive) dbapBformatCalculateHull(x,n);		// implicitely updates the hull
		dbapBformatUpdateView(x);							// implicitely updates the view
	}
	else
		error("Invalid arguments for speaker.");
}


void dbapBformatSourceGain(t_dbapBformat *x, void *msg, long argc, t_atom *argv)
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
		x->sourceGain[n] = f;
		dbapBformatCalculate(x, n);
	}
	else
		error("Invalid argument(s) for source_gain");
}



void dbapBformatMasterGain(t_dbapBformat *x, double f)
{
	long i;
	
	x->masterGain = f;
	if (x->masterGain<0.)
		x->masterGain = 0;
	
	// Update all matrix values
	for (i=0; i<x->attrNumberOfSources; i++)
		dbapBformatCalculate(x, i);
}

void dbapBformatSourceWeight(t_dbapBformat *x, t_symbol *msg, long argc, t_atom *argv)
{
	long source, i;
	float weight;
	
	if (argc && argv) {			
		
		if (atom_gettype(argv) == A_LONG) {						// the first argument is the source number
			source = atom_getlong(argv)-1;						// we start counting from 1 for sources
		
			if ((source < 0)||(source >= x->attrNumberOfSources)) {
				object_error((t_object*)x, "sourceWeight : the source n°%d doesn't exist", source);
				return;
			}
		}
		else {
			object_error((t_object*)x, "sourceWeight : no source id");
			return;
		}
		
		for (i=0; i<x->attrNumberOfDestinations; i++) {				// the rest is the list of weights for each destination
			
			if (i+1 < argc) {
				if (atom_gettype(&argv[i+1]) == A_LONG)
					weight = (float)atom_getlong(&argv[i+1]);
				
				if (atom_gettype(&argv[i+1]) == A_FLOAT)
					weight = atom_getfloat(&argv[i+1]);
			}
			else
				weight = 0.0;									// if the list is smaller than the sourceWeight array, fill sourceWeight with 0.0
			
			if (weight < 0.0) 
				weight = 0.0;
			
			x->sourceWeight[source][i] = weight;
		}
		
		dbapBformatCalculate(x, source);
		dbapBformatCalculateHull(x, source);
		dbapBformatUpdateView(x);
	}
	else
		object_error((t_object*)x, "sourceWeight : needs arguments");
}

void dbapBformatSourceMute(t_dbapBformat *x, void *msg, long argc, t_atom *argv)
{
	long n;
	
	if ((argc>=2) && argv) {	
		n = atom_getlong(argv)-1;							// we start counting from 1 for sources
		if ( (n<0) || (n>=MAX_NUM_SOURCES) ) {
			error("Invalid argument(s) for source_gain");
			return;
		}
		argv++;	
		x->sourceNotMuted[n] = (atom_getfloat(argv)==0.0);
		dbapBformatCalculate(x, n);
	}
	else
		error("Invalid argument(s) for source_gain");
}

/** Turn on/off the calculation of distance to hull */
void dbapBformatHull(t_dbapBformat *x, long f)
{
	bool refresh = false;

	x->hullActive = f > 0;

	// Is the hull has been built ?
	if (x->hullActive) {
		if (x->attrDimensions == 1) {
			if ((x->hullInOneDimension.min == 0.)&&(x->hullInOneDimension.max == 0.)) refresh = true;
		}
		else if (x->attrDimensions == 2) {
			if (x->hullInTwoDimensions.num_dst == 0) refresh = true;
			}
	}
	if (refresh) dbapBformatCalculateHull(x,1);	//It's the same hull for all sources
											//TODO : a hull for each source
}

/** Display a hitmap view of the dbapBformat for a destination and a source weight config or all (on the info outlet ?) */
void dbapBformatView(t_dbapBformat *x, void *msg, long argc, t_atom *argv)
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
			dbapBformatCalculateView(x,dst,src);
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
				for (i=0; i<x->attrNumberOfDestinations; i++) {
					if (x->sourceWeight[src][i] > 0)
						dbapBformatCalculateView(x,i,src);
				}
			}
		}
		dbapBformatOutputView(x);

		// then we reset the matrix
		for (i=0; i<MAX_SIZE_VIEW_X; i++) {
			for (j=0; j<MAX_SIZE_VIEW_Y; j++) {
				x->viewMatrix[i][j] = 0;
			}
		}
		
		// and we store the view for a later update process
		x->lastView[0] = argv[0];
		x->lastView[1] = argv[1];
	}
	else
		error("Invalid argument(s) for view");
}

/** Turn on/off the auto wiev updating */
void dbapBformatViewUpdate(t_dbapBformat *x, long io)
{
	x->attrViewMatrixUpdate = io > 0;
}

/** Set the size of hitmap view window */
void dbapBformatViewMatrixSize(t_dbapBformat *x, long sizeX, long sizeY) {
	
	if ((sizeX > 0)&&(sizeY > 0)&&(sizeX <= MAX_SIZE_VIEW_X)&&(sizeY <= MAX_SIZE_VIEW_Y)) {
		x->attrViewMatrixSize[0] = sizeX;
		x->attrViewMatrixSize[1] = sizeY;
		dbapBformatUpdateView(x);
	}
	else					
		error("Invalid argument(s) for viewMatrixSize");
}

/** Set the start point of the hitmap view window */
void dbapBformatViewStart(t_dbapBformat *x, void *msg, long argc, t_atom *argv) {

	if ((argc == x->attrDimensions) && argv) {
		if (atom_gettype(argv) == A_FLOAT)
			x->attrViewMatrixStart.x = atom_getfloat(argv);
		else {
			dbapBformatUpdateView(x);
			return;
		}
			
		if (atom_gettype(argv+1) == A_FLOAT)
			x->attrViewMatrixStart.y = atom_getfloat(argv+1);
		else {
			dbapBformatUpdateView(x);
			return;
		}
			
		if (atom_gettype(argv+2) == A_FLOAT)
			x->attrViewMatrixStart.z = atom_getfloat(argv+2);
		else {
			dbapBformatUpdateView(x);
			return;
		}
	}
	else
		error("Invalid argument(s) for view_start");
}

/** Set the end point of the hitmap view window */
void dbapBformatViewEnd(t_dbapBformat *x, void *msg, long argc, t_atom *argv) {

	if ((argc == x->attrDimensions) && argv) {
		if (atom_gettype(argv) == A_FLOAT)
			x->attrViewMatrixEnd.x = atom_getfloat(argv);
		else {
			dbapBformatUpdateView(x);
			return;
		}
			
		if (atom_gettype(argv+1) == A_FLOAT)
			x->attrViewMatrixEnd.y = atom_getfloat(argv+1);
		else {
			dbapBformatUpdateView(x);
			return;
		}
			
		if (atom_gettype(argv+2) == A_FLOAT)
			x->attrViewMatrixEnd.z = atom_getfloat(argv+2);
		else {
			dbapBformatUpdateView(x);
			return;
		}
	}
	else
		error("Invalid argument(s) for view_end");
}

void dbapBformatInfo(t_dbapBformat *x)
{
	t_atom		a[4];
	long i;

	atom_setfloat(&a[0], x->attrRollOff);
	object_obex_dumpout(x, psRollOff, 1, a);

	atom_setlong(&a[0], x->attrDimensions);
	object_obex_dumpout(x, psDimensions, 1, a);
	
	atom_setlong(&a[0], x->attrNumberOfSources);
	object_obex_dumpout(x, psNumberOfSources, 1, a);
	
	for (i=0; i<x->attrNumberOfSources; i++) {
		atom_setlong(&a[0], i+1);
		atom_setfloat(&a[1], x->sourcePosition[i].x);
		atom_setfloat(&a[2], x->sourcePosition[i].y);
		atom_setfloat(&a[3], x->sourcePosition[i].z);
		object_obex_dumpout(x, psSourcePosition, x->attrDimensions+1, a);
		atom_setfloat(&a[1], x->sourceGain[i]);
		object_obex_dumpout(x, psSourceGain, 2, a);
		atom_setlong(&a[1], (x->sourceNotMuted[i]==0));
		object_obex_dumpout(x, psSourceMute, 2, a);
		atom_setfloat(&a[1], x->blur[i]);
		object_obex_dumpout(x, psSourceBlur, 1, a);
	}
	
	atom_setlong(&a[0], x->attrNumberOfDestinations);
	object_obex_dumpout(x, psNumberOfDestinations, 1, a);
	
	for (i=0; i<x->attrNumberOfDestinations; i++) {
		atom_setlong(&a[0], i+1);
		atom_setfloat(&a[1], x->destinationPosition[i].x);
		atom_setfloat(&a[2], x->destinationPosition[i].y);
		atom_setfloat(&a[3], x->destinationPosition[i].z);
		object_obex_dumpout(x, psDestinationPosition, x->attrDimensions+1, a);
	}
}


// Method for Assistance Messages
void dbapBformatAssist(t_dbapBformat *x, void *b, long msg, long arg, char *dst)	// Display assistance messages
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
t_max_err dbapBformatAttrSetDimensions(t_dbapBformat *x, void *attr, long argc, t_atom *argv)
{
	long n;

	if (argc && argv) {
		n = atom_getlong(argv);
		if (n<1) n = 1;
		if (n>3) n = 3;
		x->attrDimensions = n;
	}
	return MAX_ERR_NONE;
}


// ATTRIBUTE: number of sources
t_max_err dbapBformatAttrSetNumberOfSources(t_dbapBformat *x, void *attr, long argc, t_atom *argv)
{
	long n;
	
	if (argc && argv) {	
		n = atom_getlong(argv);
		if (n<0) 
			n = 0;
		if (n>MAX_NUM_SOURCES) 
			n = MAX_NUM_SOURCES;		
		x->attrNumberOfSources = n;
		// The set of destination points has been changed - recalculate blur radius.
	}	
	return MAX_ERR_NONE;
}

// ATTRIBUTE: number of destinations
t_max_err dbapBformatAttrSetNumberOfDestinations(t_dbapBformat *x, void *attr, long argc, t_atom *argv)
{
	long n;
	
	if (argc && argv) {	
		n = atom_getlong(argv);
		if (n<0) 
			n = 0;
		if (n>MAX_NUM_DESTINATIONS)
			n = MAX_NUM_DESTINATIONS;		
		x->attrNumberOfDestinations = n;
		// The set of destination points has been changed - recalculate blur radius.
		dbapBformatCalculateVariance(x);
	}	
	return MAX_ERR_NONE;
}


// ATTRIBUTE: rolloff
t_max_err dbapBformatAttrSetRollOff(t_dbapBformat *x, void *attr, long argc, t_atom *argv)
{
	float f;
	long i;
	
	if (argc && argv) {	
		f = atom_getfloat(argv);
		if (f<=0.0) {
			error("Invalid argument for rolloff. Must be > 0");
			return MAX_ERR_NONE;;
		}	
		x->attrRollOff = f;
		dbapBformatCalculateA(x);
		dbapBformatUpdateView(x);
		// Update all matrix values
		for (i=0; i<x->attrNumberOfSources; i++)
			dbapBformatCalculate(x, i);
	}
	return MAX_ERR_NONE;
}



/************************************************************************************/
// Methods bound to calculations
#pragma mark -
#pragma mark calculations


void dbapBformatCalculate(t_dbapBformat *x, long n)
{
	// Update all matrix values
	if (x->attrDimensions==1)
		dbapBformatCalculate1D(x, n);
	else if (x->attrDimensions==2)
		dbapBformatCalculate2D(x, n);
	else
		dbapBformatCalculate3D(x, n);
}


void dbapBformatCalculate1D(t_dbapBformat *x, long n)
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

	xPos = x->sourcePosition[n].x;

	// Calculate distance from convex hull and project position onto convex hull)
	if (x->hullActive) {
		if (xPos < x->hullInOneDimension.min) {
			dist = x->hullInOneDimension.min - xPos;
			xPos = x->hullInOneDimension.min;
		}
		else if (xPos > x->hullInOneDimension.max) {
			dist = xPos - x->hullInOneDimension.max;
			xPos = x->hullInOneDimension.max;
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
	for (i=0; i<x->attrNumberOfDestinations; i++) {
		dx = xPos - x->destinationPosition[i].x;
		dia[i] = pow(dx*dx + r2, 0.5*x->a);
		k2inv = k2inv + 1./(dia[i]*dia[i]);
	}
	k = sqrt(1./k2inv);
	k = k*x->masterGain*x->sourceGain[n]*x->sourceNotMuted[n];
	
	atom_setlong(&a[0], n);
	for (i=0; i<x->attrNumberOfDestinations; i++) {
		atom_setlong(&a[1], i);
		atom_setfloat(&a[2], k/dia[i]);
		outlet_anything(x->outlet[0], _sym_list, 3, a);
	}	
}


void dbapBformatCalculate2D(t_dbapBformat *x, long n)
{
	float k;							// Scaling coefficient
	float k2inv;						// Inverse square of the scaling constant k
	float dx, dy;						// Distance vector
	float r2;							// Bluriness ratio 
	float dia[MAX_NUM_DESTINATIONS];	// Distance to ith speaker to the power of x->a.
	float sdia[MAX_NUM_DESTINATIONS];	// Squared Distance to ith speaker (without bluriness ratio)
	long iC,iN;							// index of the the dest C and N dest in destinationPosition[]
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
	for (i=0; i<x->attrNumberOfDestinations; i++) {
		dx = x->sourcePosition[n].x - x->destinationPosition[i].x;
		dy = x->sourcePosition[n].y - x->destinationPosition[i].y;
		dia[i] = pow(double(dx*dx + dy*dy + r2), double(0.5*x->a));
		if (x->hullActive) sdia[i] = dx*dx + dy*dy;
		
		k2inv = k2inv + (x->sourceWeight[n][i]*x->sourceWeight[n][i])/(dia[i]*dia[i]);
	}

	if (x->hullActive) {
		// Find the closest border in the hull
		min_dist = 10000.;
		out = -1.;
		for (j=0; j<x->hullInTwoDimensions.num_dst; j++) {
			// index in the destinationPosition[]
			iC = x->hullInTwoDimensions.destinationIndex[j];
			iN = x->hullInTwoDimensions.destinationIndex[(j+1)%x->hullInTwoDimensions.num_dst];
			// squared distance of the source S to the dest C and N
			sSC = sdia[iC];
			sSN = sdia[iN];
			// squared distance of the border
			sCN = x->hullInTwoDimensions.dst2next[j];
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
					P.x = (kCN/2) * (x->destinationPosition[iN].x - x->destinationPosition[iC].x) + x->destinationPosition[iC].x;
					P.y = (kCN/2) * (x->destinationPosition[iN].y - x->destinationPosition[iC].y) + x->destinationPosition[iC].y;
					// distance of SP
					dx = x->sourcePosition[n].x - P.x;
					dy = x->sourcePosition[n].y - P.y;
					dist = sqrt(dx*dx + dy*dy);
				}
			}

			// is the source out of the hull ?
			v = (x->destinationPosition[iN].x - x->destinationPosition[iC].x)*(x->sourcePosition[n].y - x->destinationPosition[iC].y);
			v -= (x->destinationPosition[iN].y - x->destinationPosition[iC].y)*(x->sourcePosition[n].x - x->destinationPosition[iC].x);
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
	k = k*x->masterGain*x->sourceGain[n]*x->sourceNotMuted[n];

	atom_setlong(&a[0], n);
	for (i=0; i<x->attrNumberOfDestinations; i++) {
		atom_setlong(&a[1], i);
		atom_setfloat(&a[2], x->sourceWeight[n][i]*k/dia[i]);
		outlet_anything(x->outlet[0], _sym_list, 3, a);
	}
}

void dbapBformatCalculate3D(t_dbapBformat *x, long n)
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
	for (i=0; i<x->attrNumberOfDestinations; i++) {
		dx = x->sourcePosition[n].x - x->destinationPosition[i].x;
		dy = x->sourcePosition[n].y - x->destinationPosition[i].y;
		dz = x->sourcePosition[n].z - x->destinationPosition[i].z;
		dia[i] = pow(double(dx*dx + dy*dy + dz*dz + r2), double(0.5*x->a));
		k2inv = k2inv + 1./(dia[i]*dia[i]);
	}
	k = sqrt(1./k2inv);
	k = k*x->masterGain*x->sourceGain[n]*x->sourceNotMuted[n];
	
	atom_setlong(&a[0], n);
	
	for (i=0; i<x->attrNumberOfDestinations; i++) {
		atom_setlong(&a[1], i);
		atom_setfloat(&a[2], k/dia[i]);
		outlet_anything(x->outlet[0], _sym_list, 3, a);
	}	
}


void dbapBformatCalculateA(t_dbapBformat *x)
{
	x->a = log(pow(10., (x->attrRollOff / 20.)))/log(2.);
}


void dbapBformatCalculateMeanDestinationPosition(t_dbapBformat *x)
{
	long i;
	float a,b,c;

	a = 0;
	b = 0;
	c = 0;
	for (i=0; i<x->attrNumberOfDestinations; i++) {
		a += x->destinationPosition[i].x;
		b += x->destinationPosition[i].y;
		c += x->destinationPosition[i].z;
	}
	x->meanDestinationPosition.x = a/x->attrNumberOfDestinations;
	x->meanDestinationPosition.y = b/x->attrNumberOfDestinations;
	x->meanDestinationPosition.z = c/x->attrNumberOfDestinations;
}


void dbapBformatCalculateVariance(t_dbapBformat *x)
{
	long i;
	float dx, dy, dz;
	float d2=0;
	

	dbapBformatCalculateMeanDestinationPosition(x);

	if (x->attrDimensions==1) {
		for (i=0; i<x->attrNumberOfDestinations; i++) {
			dx = x->destinationPosition[i].x - x->meanDestinationPosition.x;
			d2 += dx*dx;
		}		
	}
	else if (x->attrDimensions==2) {
		for (i=0; i<x->attrNumberOfDestinations; i++) {
			dx = x->destinationPosition[i].x - x->meanDestinationPosition.x;
			dy = x->destinationPosition[i].y - x->meanDestinationPosition.y;
			d2 += dx*dx + dy*dy;
		}
	}
	else {
		for (i=0; i<x->attrNumberOfDestinations; i++) {
			dx = x->destinationPosition[i].x - x->meanDestinationPosition.x;
			dy = x->destinationPosition[i].y - x->meanDestinationPosition.y;
			dz = x->destinationPosition[i].z - x->meanDestinationPosition.z;
			d2 += dx*dx + dy*dy + dz*dz;
		}		
	}
	x->variance = sqrt(d2/(x->attrNumberOfDestinations-1));
	
	// Update all matrix values
	for (i=0; i<x->attrNumberOfSources; i++)
			dbapBformatCalculate(x, i);
}


void dbapBformatCalculateHull(t_dbapBformat *x, long n)
{
	// Update all matrix values
	if (x->attrDimensions==1)
		dbapBformatCalculateHullInOneDimensionD(x, n);
	else if (x->attrDimensions==2)
		dbapBformatCalculateHullInTwoDimensionsD(x, n);
	else
		dbapBformatCalculateHull3D(x, n);
}



void dbapBformatCalculateHullInOneDimensionD(t_dbapBformat *x, long n)
{
	long i;
	float min, max;
	
	min = x->destinationPosition[0].x;
	max = x->destinationPosition[0].x;
	
	for (i=1; i<x->attrNumberOfDestinations; i++) {
		if (x->destinationPosition[i].x < min)
			min = x->destinationPosition[i].x;
		if (x->destinationPosition[i].x > max)
			max = x->destinationPosition[i].x;
	}
	x->hullInOneDimension.min = min;
	x->hullInOneDimension.max = max;
}

// TODO : a way to select dst
// TODO : put the algorithm in hullInTwoDimensions.cpp (keep it here while isn't tested to use post())
void dbapBformatCalculateHullInTwoDimensionsD(t_dbapBformat *x, long n)
{
	t_H2D h2;			// the data structure used to perform calculation
	long i,j;
	float dx,dy;		// to calculate the lenght of each border of the hull
	long m;				// Index of lowest so far

	//post("h2D : Start ********************************************");
	if (x->attrNumberOfDestinations < 2) return;
	else h2.nb_point = x->attrNumberOfDestinations;

	// Store dst coordinate to prepare algorithm
	for (i = 0; i<x->attrNumberOfDestinations; i++) {
		h2.point[i].v[X] = (double) x->destinationPosition[i].x;
		h2.point[i].v[Y] = (double) x->destinationPosition[i].y;
		h2.point[i].vnum = i+1;
		h2.point[i].del = false;
	}

	// Find the lowest and rightmost Point
	m = 0;
	for (i = 1; i<x->attrNumberOfDestinations; i++) {
		if ((h2.point[i].v[Y] <  h2.point[m].v[Y]) || ((h2.point[i].v[Y] == h2.point[m].v[Y]) && (h2.point[i].v[X] > h2.point[m].v[X]))) {
			m = i;
		}
	}


	// Debug
	//post("h2D : The lowest and rigthmost point is %d", m+1);

	// Swap point[0] and point[m]
	Swap(h2.point,0,m);

	// add p0 to each point[i] (to get it during Compare without use a qsort_s)
	for (i = 0; i<x->attrNumberOfDestinations; i++) {
		h2.point[i].p0[0] = h2.point[0].v[0];
		h2.point[i].p0[1] = h2.point[0].v[1];
	}

	// debug
	//dbapBformatHullInTwoDimensions_postpoint(x, h2);

	qsort(
      &h2.point[1],					// pointer to 1st elem
      x->attrNumberOfDestinations-1,	// number of elems
      sizeof(t_structPoint),		// size of each elem
      Compare						// -1,0,+1 compare function
	);

	// count nb_delete ('cause we can't do that in Compare)
	h2.nb_delete = 0;
	for (i = 1; i<x->attrNumberOfDestinations; i++) {
		if (h2.point[i].del) h2.nb_delete++;
	}

	// debug
	//post("nb_del = %d",h2.nb_delete);

	// Remove all elements from point marked deleted
	if (h2.nb_delete > 0) {
		i = 0;
		j = 0;
		while (i < x->attrNumberOfDestinations) {
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

	// store result in x->hullInTwoDimensions
	i = 0;
	if (h2.stack) {
		while (h2.stack) {
			// Debug
			//post("vnum = %d, x = %f, y = %f", h2.stack->p->vnum,h2.stack->p->v[X],h2.stack->p->v[Y]);
			
			x->hullInTwoDimensions.destinationIndex[i] = (h2.stack->p->vnum)-1;
			
			// calculate the lenght of each border of the hull
			if (i>0) {
				dx = x->destinationPosition[x->hullInTwoDimensions.destinationIndex[i-1]].x - x->destinationPosition[x->hullInTwoDimensions.destinationIndex[i]].x;
				dy = x->destinationPosition[x->hullInTwoDimensions.destinationIndex[i-1]].y - x->destinationPosition[x->hullInTwoDimensions.destinationIndex[i]].y;
				x->hullInTwoDimensions.dst2next[i-1] = dx*dx + dy*dy;
				//post("dist[%d %d] = %f", x->hullInTwoDimensions.destinationIndex[i-1]+1,x->hullInTwoDimensions.destinationIndex[i]+1,sqrt(x->hullInTwoDimensions.dst2next[i-1]));
			}
			
			h2.stack = h2.stack->next;
			i++;
		}
		x->hullInTwoDimensions.num_dst = i;
		// for the last border
		dx = x->destinationPosition[x->hullInTwoDimensions.destinationIndex[i-1]].x - x->destinationPosition[x->hullInTwoDimensions.destinationIndex[0]].x;
		dy = x->destinationPosition[x->hullInTwoDimensions.destinationIndex[i-1]].y - x->destinationPosition[x->hullInTwoDimensions.destinationIndex[0]].y;
		x->hullInTwoDimensions.dst2next[i-1] = dx*dx + dy*dy;
		//post("dist[%d %d] = %f", x->hullInTwoDimensions.destinationIndex[i-1]+1,x->hullInTwoDimensions.destinationIndex[0]+1,sqrt(x->hullInTwoDimensions.dst2next[i-1]));

	} // else do nothing

	// debug
	//for (i=0; i<x->hullInTwoDimensions.num_dst; i++) {
	//	post("id = %d",x->hullInTwoDimensions.destinationIndex[i]+1);
	//}
}

// Print point[] (debugging)
void dbapBformatHullInTwoDimensions_postpoint(t_dbapBformat *x, t_H2D h2)
{
	long i;
	post("H2D : %d points", h2.nb_point);
	for (i = 0; i<x->attrNumberOfDestinations; i++)
		if (!h2.point[i].del)
			post("vnum = %d, x = %f, y = %f", 
			h2.point[i].vnum, h2.point[i].v[X], h2.point[i].v[Y]);
}

void dbapBformatCalculateHull3D(t_dbapBformat *x, long n)
{
	// TODO: develop algorithm calculating convex hull in 3 dimensions
}

void dbapBformatCalculateView(t_dbapBformat *x, long dst, long src)
{
	// Update all matrix values
	if (x->attrDimensions==1)
		dbapBformatCalculateView1D(x, dst, src);
	else if (x->attrDimensions==2)
		dbapBformatCalculateView2D(x, dst, src);
	else
		dbapBformatCalculateView3D(x, dst, src);
}

/** If the attrViewMatrixUpdate is true : calculate the last view */
void dbapBformatUpdateView(t_dbapBformat *x) {
	if (x->attrViewMatrixUpdate)
		defer_low(x,(method) dbapBformatView, gensym("view"), 2, x->lastView);
}

void dbapBformatCalculateView1D(t_dbapBformat *x, long dst, long src)
{
	post("TODO: 1D render view");
}

void dbapBformatCalculateView2D(t_dbapBformat *x, long dst, long src)
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

	div_x = (x->attrViewMatrixEnd.x - x->attrViewMatrixStart.x)/x->attrViewMatrixSize[0];
	div_y = (x->attrViewMatrixEnd.y - x->attrViewMatrixStart.y)/x->attrViewMatrixSize[1];

	// For each pixel of the view window
	for (i=0; i<x->attrViewMatrixSize[0]; i++) {
		for (j=0 ; j<x->attrViewMatrixSize[1]; j++) {

			temp_src.x = x->attrViewMatrixStart.x + i * div_x;
			temp_src.y = x->attrViewMatrixStart.y + j * div_y;
			
			//> dbapBformat calculation for the temp source
			//> calculation of the mean of amplitudes
			
			r2 = x->blur[src] * x->variance;
			r2 = r2*r2;
			k2inv = 0;

			for (d=0; d<x->attrNumberOfDestinations; d++) {
				dx = temp_src.x - x->destinationPosition[d].x;
				dy = temp_src.y - x->destinationPosition[d].y;
				dia[d] = pow(double(dx*dx + dy*dy + r2), double(0.5*x->a));
				k2inv = k2inv + (x->sourceWeight[src][d]*x->sourceWeight[src][d])/(dia[d]*dia[d]);
			}
			k = sqrt(1./k2inv);

			// squared response [0::1]
			pix =  k*x->sourceWeight[src][dst]/ dia[dst];
			pix *= pix;

			// keep the max
			m_j = x->attrViewMatrixSize[1]-j-1;   // jit.matrix style
			if (x->viewMatrix[i][m_j] < (unsigned char)(pix * 255.))
				x->viewMatrix[i][m_j] = (unsigned char)(pix * 255.);
		}
	}
}

void dbapBformatCalculateView3D(t_dbapBformat *x, long dst, long src)
{
	post("TODO: 3D render view");
}

void dbapBformatOutputView(t_dbapBformat *x)
{
	t_atom a[3]; // Output array of atoms
	t_atom e[1]; // Output bang after
	long i,j;

	// For each pixel of the view window
	for (i=0; i<x->attrViewMatrixSize[0]; i++) {
		for (j=0; j<x->attrViewMatrixSize[1]; j++) {
			atom_setlong(&a[0], i);
			atom_setlong(&a[1], j);
			atom_setlong(&a[2], x->viewMatrix[i][j]);
			//object_obex_dumpout(x, gensym("view"), 3, a);	// on info outlet (?)
			outlet_anything(x->outlet[2], gensym("view"), 3, a);
		}
	}
	atom_setsym(&e[0],gensym("bang"));
	//object_obex_dumpout(x, gensym("view"), 1, e);	// on info outlet (?)
	outlet_anything(x->outlet[2], gensym("view"), 1, e);
}