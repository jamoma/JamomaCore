// External Object for Jamoma: signal level meter 
// By Timothy Place, Copyright © 2005
// License: GNU LGPL

#include "ext.h"				// Max Header
#include "ext_common.h"			// includes the MIN macro
#include "ext_strings.h"		// String Functions
#include "commonsyms.h"			// Common symbols used by the Max 4.5 API
#include "ext_obex.h"			// Max Object Extensions (attributes) Header
#include "ext_user.h"
#include "ext_wind.h"

// Macros and Constants
#define RES_ID		10120		// ID of our SICN resources
#define MAXWIDTH 	1024L		// maximum width and height of user object in pixels
#define MAXHEIGHT	512L		//		(defines maximum offscreen canvas allocation)
#define MINWIDTH 	64L			// minimum width and height
#define MINHEIGHT	5L			//		...
#define DEFWIDTH 	200			// default width and height
#define DEFHEIGHT	12			//		...

// Data Structure for our object
typedef struct meter{
	t_box		x_box;			// required box structure for all ui externs
	void		*obex;			// max 4.5 object extensions
	void		*qelem;			// queue element to defer drawing commands
	
	
	Rect 		rect;			// for comparing with x_box.b_rect in the update() method
} t_meter;

// Prototypes for our methods:
void *meter_new(t_symbol *s, short argc, t_atom *argv);					// Object life...
void *meter_menu(void *p, long x, long y, long font);
void meter_free(t_meter *x);
void meter_assist(t_meter *x, void *b, long msg, long arg, char *dst);	// Max Methods...
void meter_bang(t_meter *x);
void meter_update(t_meter *x);											// UI Methods...
void meter_click(t_meter *x, Point pt, short modifiers);
void meter_psave(t_meter *x, void *w);
void meter_qfn(t_meter *x);												// Draw Routines...
void meter_draw(t_meter *x);

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

	class_addmethod(c, (method)meter_click,		"click", A_LONG, 0L);
 	class_addmethod(c, (method)meter_update, 	"update", A_FLOAT, 0L);
 	class_addmethod(c, (method)meter_psave,		"psave", A_CANT, 0L);	
	class_addmethod(c, (method)meter_assist, 	"assist", A_CANT, 0L); 
	class_addmethod(c, (method)meter_bang, 		"bang", 0L); 

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
		x->x_box.b_firstin = (void *)x;
		
		// Cache rect for comparisons when the user decides to re-size the object
		x->rect = x->x_box.b_rect;

		// Create our queue element for defering calls to the draw function
		x->qelem = qelem_new(x, (method)meter_qfn);
		
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
	qelem_free(x->qelem);
	box_free((box *)x);
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


// Method: bang
void meter_bang(t_meter *x)
{
	qelem_set(x->qelem);
}


/************************************************************************************/
// Required UI Object Methods

// Sent when our object needs to be redrawn
//	(this is already at low priority and does not need to be deferred)
void meter_update(t_meter *x)
{
	short width_old = x->rect.right - x->rect.left;
	short height_old = x->rect.bottom - x->rect.top;
	short width_new = x->x_box.b_rect.right - x->x_box.b_rect.left;
	short height_new = x->x_box.b_rect.bottom - x->x_box.b_rect.top;

	if(/*!x->x_offscreen ||*/ height_new != height_old || width_new != width_old) {
		width_new = CLIP(width_new, MINWIDTH, MAXWIDTH); // constrain to min and max size
		height_new = CLIP(height_new, MINHEIGHT, MAXHEIGHT);
		box_size(&x->x_box, width_new, height_new);	// this function actually resizes out t_box structure
		x->rect = x->x_box.b_rect;
		
		//xgui_allocoffscreen(x); // (existing offsceen is disposed inside)
	}
	meter_draw(x);
}


// If the user clicks on the object
void meter_click(t_meter *x, Point pt, short modifiers)
{ 
	;	// Ignore the clicks for the time being - maybe clear the peak hold in the future...
}


// Save our UI object's location and appearance with the patcher...
void meter_psave(t_meter *x, void *w)
{
	Rect r = x->x_box.b_rect;
	t_atom argv[16];
	short inc = 0;
	
	SETSYM(argv,gensym("#P"));
	if (x->x_box.b_hidden) {	// i.e. if it's hidden when the patcher is locked
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
	GrafPtr	gp = patcher_setport(x->x_box.b_patcher);
	
	if(gp){				// if the pointer is valid...
		if(!box_nodraw((t_box *)x)){
			meter_draw(x);
			box_enddraw((t_box *)x);
		}
	}
	SetPort(gp);
}


// The actual drawing routine
void meter_draw(t_meter *x)
{
	GrafPtr		curPort;
	GDHandle	curDevice;
	RGBColor	frgb;
	Rect		rect_ui = x->x_box.b_rect;
	Rect		rect_temp;
	short		i;
	short		width_ui = x->x_box.b_rect.right - x->x_box.b_rect.left;
	short		left = x->x_box.b_rect.left;
	//float		ratio;
	
	GetGWorld((CGrafPtr *)&curPort, &curDevice);
	PenMode(srcCopy);
	
	frgb.blue = 0;
	frgb.green = 65535;
	rect_temp.top = x->x_box.b_rect.top;
	rect_temp.bottom = x->x_box.b_rect.bottom;

	for(i=0; i<width_ui; i++){
		rect_temp.left = left + i;
		rect_temp.right = rect_temp.left + 1;
		frgb.red = (i * 65535) / width_ui;
		
		RGBForeColor(&frgb);
		PaintRect(&rect_temp);
	}
}

