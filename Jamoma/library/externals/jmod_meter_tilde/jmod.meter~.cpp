// External Object for Jamoma: signal level meter 
// By Timothy Place
// Modifications for Compiling on Windows by Thomas Grill
// Copyright © 2005
// License: GNU LGPL

// define 
#ifdef WIN_VERSION
#define USE_QTML
#endif

#include "ext.h"				// Max Header
#include "ext_user.h"
#include "ext_common.h"			// includes the MIN macro
#include "z_dsp.h"				// MSP Header
#include "ext_strings.h"		// String Functions
#include "commonsyms.h"			// Common symbols used by the Max 4.5 API
#include "ext_obex.h"			// Max Object Extensions (attributes) Header
#include <math.h>

#ifdef USE_QTML
#include "ext_qtstubs.h"
#define patcher_setport(x) (XQT_patcher_setport(x))
#define box_nodraw(x) (XQT_box_nodraw(x))
#define box_enddraw(x) (XQT_box_enddraw(x))
#define SetPort(gp) (XQT_patcher_restoreport(gp))
#define patcher_restoreport(gp) (XQT_patcher_restoreport(gp))
#endif

// Macros and Constants
#define RES_ID			10120		// ID of our SICN resources
#define MAXWIDTH 		1024L		// maximum width and height of user object in pixels
#define MAXHEIGHT		512L		//		(defines maximum offscreen canvas allocation)
#define MINWIDTH 		20L			// minimum width and height
#define MINHEIGHT		2L			//		...
#define DEFWIDTH 		100			// default width and height
#define DEFHEIGHT		10			//		...
#define POLL_INTERVAL	150			// metro time

// Data Structure for our object
typedef struct {
	t_pxbox		my_box;				// required box structure for all audio ui externs
	void		*obex;				// max 4.5 object extensions
	void		*qelem;				// queue element to defer drawing commands
	void		*clock;				// clock for polling the audio analysis results
	
	Rect 		rect;				// for comparing with x_box.b_rect in the update() method
	
	float		envelope;			// the result of the amplitude analysis [0.0, 1.0]
	float		peak;				// the loudest sample since the last reset
	short		peak_position;
	short		peak_level;
	
	long		attr_defeat;		// turn off the meters
} t_meter;

// Prototypes for our methods:
void *meter_new(t_symbol *s, short argc, t_atom *argv);					// Object life...
void *meter_menu(void *p, long x, long y, long font);
void meter_free(t_meter *x);
void meter_assist(t_meter *x, void *b, long msg, long arg, char *dst);	// Max Methods...
void meter_bang(t_meter *x);
void meter_float(t_meter *x, double value);
void meter_int(t_meter *x, long value);
void meter_tick(t_meter *x);
t_int *meter_perform(t_int *w);
void meter_dsp(t_meter *x, t_signal **sp, short *count);
void meter_update(t_meter *x);											// UI Methods...
void meter_click(t_meter *x, Point pt, short modifiers);
void meter_psave(t_meter *x, void *w);
void meter_qfn(t_meter *x);												// Draw Routines...
void meter_draw(t_meter *x);
t_max_err attr_set_defeat(t_meter *x, void *attr, long argc, t_atom *argv);

// Globals
t_class *meter_class;

/************************************************************************************/
// Main() Function

void main(void)
{	
	long attrflags = 0;
	t_class *c;
	t_object *attr;
	
	common_symbols_init();

	c = class_new("jmod.meter~",(method)meter_new, (method)meter_free, (short)sizeof(t_meter), (method)meter_menu, A_GIMME, 0);
	class_obexoffset_set(c, calcoffset(t_meter, obex));

	class_addmethod(c, (method)meter_click,		"click", A_CANT, 0L);
 	class_addmethod(c, (method)meter_update, 	"update", A_CANT, 0L);
 	class_addmethod(c, (method)meter_psave,		"psave", A_CANT, 0L);	
	class_addmethod(c, (method)meter_assist, 	"assist", A_CANT, 0L); 
	class_addmethod(c, (method)meter_bang, 		"bang", 0L);
	class_addmethod(c, (method)meter_float,		"float", A_FLOAT, 0L);
	class_addmethod(c, (method)meter_int,		"int", A_LONG, 0L);
 	class_addmethod(c, (method)meter_dsp, 		"dsp", A_CANT, 0L);		

	attr = attr_offset_new("defeat", _sym_long, attrflags,
		(method)0L,(method)attr_set_defeat, calcoffset(t_meter, attr_defeat));
	class_addattr(c, attr);

	class_dspinitbox(c);									// Setup object's class to work with MSP

	// Finalize our class
	class_register(CLASS_BOX, c);
	meter_class = c;
}


/************************************************************************************/
// Object Life

// when the UI external is read-in from a patcher file...
void *meter_new(t_symbol *s, short argc, t_atom *argv)
{
	t_meter *x;
	void *patcher;
	long x_coord, y_coord, width, height;
	//short bw, bh, flags;
	short flags;
	
	x = (t_meter*)object_alloc(meter_class);
	if(x){
		dsp_setupbox((t_pxbox *)x, 1);
	
		patcher = argv[0].a_w.w_obj;					// patcher
		x_coord = argv[1].a_w.w_long;					// x coord
		y_coord = argv[2].a_w.w_long;					// y coord
		width = argv[3].a_w.w_long;						// width
		height = argv[4].a_w.w_long;					// height
			
		width = CLIP(width, MINWIDTH, MAXWIDTH); 		// constrain to min and max size
		height = CLIP(height, MINHEIGHT, MAXHEIGHT);	// constrain to min and max size
		
		// set flags with which our t_box struct will be initialized:
		//	F_DRAWFIRSTIN - Draw the first inlet
		//	F_NODRAWBOX - don't draw the box
		//	F_GROWBOTH - can grow independently in both width and height
		//	F_DRAWINLAST - draws inlets after box draws
		//	F_SAVVY - tells Max any queue function you make calls box_enddraw()
		flags = F_DRAWFIRSTIN | F_NODRAWBOX | F_GROWBOTH | F_DRAWINLAST | F_SAVVY;
	
		// now actually initialize the t_box structure
		box_new((t_box *)x, (t_patcher *)patcher, flags, x_coord, y_coord, x_coord + width, y_coord + height);

		// Reassign the box's firstin field to point to our new object
		x->my_box.z_box.b_firstin = (void *)x;
		
		// Cache rect for comparisons when the user decides to re-size the object
		x->rect = x->my_box.z_box.b_rect;

		// Create our queue element for defering calls to the draw function
		x->qelem = qelem_new(x, (method)meter_qfn);

		// Create clock routine for polling the audio result
		x->clock = clock_new(x, (method)meter_tick);

		// Set defaults
		x->envelope = 0;
		x->peak = 0;
		
		// Finish it up...
		box_ready((t_box *)x);
	}
	else
		error("jmod.meter~ - could not create instance");
	return(x);
}


// if the user selects our object from the toolbar/menu, we supply the _new method with default values
void *meter_menu(void *p, long x, long y, long font)
{
	t_atom argv[5];		// reduced to 5 on 24 nov 2004
	
	SETOBJ(argv, (t_object *)p);				// patcher
	SETLONG(argv+1, x);							// x coord
	SETLONG(argv+2, y);							// y coord
	SETLONG(argv+3, DEFWIDTH);					// width
	SETLONG(argv+4, DEFHEIGHT);					// height
	
	return meter_new(gensym("jmod.meter~"), 5, argv);
}


// delete
void meter_free(t_meter *x)
{
	dsp_freebox((t_pxbox *)x);			// a version of dsp_free() for ui objects
	qelem_free(x->qelem);				// delete our qelem
	freeobject((t_object *)x->clock);	// delete our clock
	box_free((t_box *)x);				// free the ui box
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void meter_assist(t_meter *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 						// Inlet
		strcpy(dst, "Input");
	else if(msg==2){ 				// Outlets
		switch(arg){
			case 0: strcpy(dst, "Output"); break;
			//case 1: strcpy(dst, "Attribute Stuff"); break;
 		}
 	}		
}


// Method: bang - clear the peak hold and redraw
void meter_bang(t_meter *x)
{
	x->peak = 0;	// reset the peak hold
	qelem_set(x->qelem);
}


// Method: float - can be used instead of a signal
void meter_float(t_meter *x, double value)
{
	x->envelope = value;
	qelem_set(x->qelem);
}

// cast to float...
void meter_int(t_meter *x, long value)
{
	meter_float(x, (double)value);
}

// Attribute: defeat
t_max_err attr_set_defeat(t_meter *x, void *attr, long argc, t_atom *argv)
{
	x->attr_defeat = atom_getlong(argv);
	if(x->attr_defeat == 0) 
		clock_delay(x->clock, POLL_INTERVAL); 	// start the clock

	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// Method: triggered by our clock
void meter_tick(t_meter *x)
{
	qelem_set(x->qelem); 							// draw the meters

	if(sys_getdspstate()) {							// if dsp is on then we schedule another tick
		if(x->attr_defeat == 0)
			clock_delay(x->clock, POLL_INTERVAL); 	// schedule the clock
	}
}


// Method: perform signal processing
t_int *meter_perform(t_int *w)
{
	t_meter		*x = (t_meter *)(w[1]);
	t_float		*input = (float *)(w[2]);
	long 		n = (long)(w[3]);
	float 		currentvalue;

	while(n--){
		currentvalue = ((*input) < 0)?-(*input):*input; // get the current sample's absolute value
		if(currentvalue > x->envelope) 					// if it's a new peak amplitude...
			x->envelope = currentvalue;
		input++; 										// increment pointer in the vector
	}
	return (w+4);
}		


// Method: compile dsp chain
void meter_dsp(t_meter *x, t_signal **sp, short *count)
{		
	if(count[0]){
		dsp_add(meter_perform, 3, x, sp[0]->s_vec, sp[0]->s_n);
		clock_delay(x->clock, POLL_INTERVAL); 			// start the clock
		x->peak = 0;
	}
}


/************************************************************************************/
// Required UI Object Methods

// Sent when our object needs to be redrawn
//	(this is already at low priority and does not need to be deferred)
void meter_update(t_meter *x)
{
	short width_old = x->rect.right - x->rect.left;
	short height_old = x->rect.bottom - x->rect.top;
	short width_new = x->my_box.z_box.b_rect.right - x->my_box.z_box.b_rect.left;
	short height_new = x->my_box.z_box.b_rect.bottom - x->my_box.z_box.b_rect.top;

	if(height_new != height_old || width_new != width_old) {
		width_new = CLIP(width_new, MINWIDTH, MAXWIDTH); // constrain to min and max size
		height_new = CLIP(height_new, MINHEIGHT, MAXHEIGHT);
		box_size(&x->my_box, width_new, height_new);	// this function actually resizes out t_box structure
		x->rect = x->my_box.z_box.b_rect;
		
		//xgui_allocoffscreen(x); // (existing offsceen is disposed inside)
	}

	GrafPtr	gp = patcher_setport(x->my_box.z_box.b_patcher);
    meter_draw(x);
    patcher_restoreport(gp); 
}


// If the user clicks on the object
void meter_click(t_meter *x, Point pt, short modifiers)
{ 
	meter_bang(x);		// reset the peak hold
}


// Save our UI object's location and appearance with the patcher...
void meter_psave(t_meter *x, void *w)
{
	Rect r = x->my_box.z_box.b_rect;
	t_atom argv[16];
	short inc = 0;
	
	SETSYM(argv,gensym("#P"));
	if (x->my_box.z_box.b_hidden) {	// i.e. if it's hidden when the patcher is locked
		SETSYM(argv+1,gensym("hidden"));
		inc = 1;
	}
	SETSYM(argv+1+inc, gensym("user"));
	SETSYM(argv+2+inc, ob_sym(x));
	SETLONG(argv+3+inc, r.left);			// x
	SETLONG(argv+4+inc, r.top);				// y
	SETLONG(argv+5+inc, r.right - r.left);	// width
	SETLONG(argv+6+inc, r.bottom - r.top);	// height
	
	binbuf_insert(w, 0L, 7+inc, argv);
}


/************************************************************************************/
// Drawing Routines

// The deferred routine called by our Qelem
void meter_qfn(t_meter *x)
{
	GrafPtr gp = patcher_setport(x->my_box.z_box.b_patcher);

	if(gp){				// if the pointer is valid...
		if(!box_nodraw((t_box *)x)){
			meter_draw(x);
			box_enddraw((t_box *) x);
		}
	}
	SetPort(gp);
}


// The actual drawing routine
void meter_draw(t_meter *x)   
{ 
	GrafPtr		curPort;
	GDHandle	curDevice; 
	RGBColor	frgb, old_color; 
	Rect		rect_ui = x->my_box.z_box.b_rect;
	Rect		rect_temp;
	short		i; 
	short		width_ui = x->my_box.z_box.b_rect.right - x->my_box.z_box.b_rect.left;
	short		height_ui = x->my_box.z_box.b_rect.bottom - x->my_box.z_box.b_rect.top;
	short		width_green = 0.96 * width_ui;		// 96% of total width
	short		width_red = width_ui - width_green;	// 4% of total width
	short		left = x->my_box.z_box.b_rect.left;
	float		level;
	short		position;

	GetGWorld((CGrafPtr *)&curPort, &curDevice);
	GetForeColor(&old_color);
	PenMode(srcCopy);

	frgb.blue = 0;
	frgb.green = 65535;

	rect_temp.top = x->my_box.z_box.b_rect.top;
	rect_temp.bottom = x->my_box.z_box.b_rect.bottom;

	level = CLIP(x->envelope, 0.0, 1.0);		// get the amplitude
	
	if(level >= 1.0){
		x->peak = 1.0;
		// Draw Green
		for(i=0; i<width_green; i++){
			rect_temp.left = left + i;
			rect_temp.right = rect_temp.left + 1;

			frgb.red = (i * 65535) / width_green;	
			RGBForeColor(&frgb);
			PaintRect(&rect_temp);
		}

		rect_temp.left = left + i;
		rect_temp.right = left + width_ui;

		// Draw Red
		frgb.green = 0;
		RGBForeColor(&frgb);
		PaintRect(&rect_temp);

		goto out;
	}
	if(level >= 0.0) {
		level = CLIP(20. * (log10(level)), -96.0, 0.0);	// convert to decibels
		level = -(96 - (exp((level) * 0.0344014267) * 96));
		position = (width_green) + (level * 0.0104166667 * width_green);

		// Draw Green
		for(i=0; i<position; i++){
			frgb.red = (i * 65535) / width_green;	
			RGBForeColor(&frgb);
			MoveTo(left+i, rect_temp.top);
			Line(0, height_ui);
		}
		rect_temp.left = left + i;
		rect_temp.right = left + width_ui;

		// Draw Gray
		frgb.red = 8000;
		frgb.green = 8000;
		frgb.blue = 8000;
		RGBForeColor(&frgb);
		PaintRect(&rect_temp);
	}
	else{
		// Draw Gray
		frgb.red = 8000;
		frgb.green = 8000;
		frgb.blue = 8000;
		RGBForeColor(&frgb);
		PaintRect(&rect_ui);
	}
	
	// Peak Hold
	if(x->envelope > x->peak){
		x->peak = x->envelope;
		x->peak_position = position;
		x->peak_level = level;
	}

	if((x->peak > 0) && (x->peak <1)){	// Green Range
		rect_temp.left = x->peak_position + left;
		rect_temp.right = rect_temp.left + 1;
		frgb.green = 65535;
		frgb.red = x->peak_level * 5653.5;
		RGBForeColor(&frgb);
		PaintRect(&rect_temp);
	}
	else if(x->peak > 0){				// Red Range
		rect_temp.left = left + width_green;
		rect_temp.right = x->my_box.z_box.b_rect.right;
		frgb.red = 65535;
		frgb.green = 0;
		frgb.blue = 0;
		RGBForeColor(&frgb);
		PaintRect(&rect_temp);
	}
	
out:
	x->envelope = 0;								// reset the amplitude tracker

	PenNormal();
	RGBForeColor(&old_color);	
}



