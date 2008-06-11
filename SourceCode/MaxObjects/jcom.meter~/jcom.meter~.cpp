/* 
	jcom.meter~
	External for Jamoma: signal level meter
	By Tim Place, Copyright © 2005
	Modifications for Compiling on Windows by Thomas Grill, 2005
	Re-write for Max 5 by Tim Place, 2008
	
	License: This code is licensed under the terms of the GNU LGPL
	http://www.gnu.org/licenses/lgpl.html 
  */

#include "ext.h"
#include "ext_obex.h"
#include "ext_user.h"
#include "ext_common.h"
#include "jpatcher_api.h"	// jpatcher_api.h must come before z_dsp.h (in Jamoma.h)
#include "jgraphics.h"
#include "Jamoma.h"
#include "TTBlue.h"


// Constants
const double kPollIntervalDefault = 150;
const double kPollIntervalMinimum = 50;
const double kPollIntervalMaximum = 5000;
const double kHeightDefault = 13;
const double kHeightMinimum = 1;
const double kHeightMaximum = 400;
const double kWidthDefault = 80;
const double kWidthMinimum = 1;
const double kWidthMaximum = 1200;
const double kOrientationVectical = 1;
const double kOrientationHorizontal = 0;
const double kMinimumChangeForRedraw = 0.00001;


// Instance definition
typedef struct _meter{
	t_pxjbox	obj;
	t_symbol*	attrMode;			// TODO: options are 'fast' and 'pretty' -- fast mode doesn't scale properly when zooming a patcher, etc. but it's faster
	char		attrDefeat;			// disable the meter
	char		attrNumChannels;	// TODO: number of audio channels to display
	float		attrInterval;		// TODO: make the polling interval dynamic
	t_jrgba		attrBgColor;
	t_jrgba		attrBorderColor;
	TTFloat32	envelope;			// the result of the amplitude analysis [0.0, 1.0]
	TTFloat32	newEnvelope;
	TTFloat32	peak;				// the loudest sample since the last reset
	t_jsurface*	gradientSurface;	///< precalculated and drawn gradient for the size of this instance
	t_rect		gradientRect;
	void*		clock;	
} t_meter;


// prototypes
void*		meter_new(t_symbol *s, long argc, t_atom *argv);
void		meter_free(t_meter *x);
t_max_err	meter_notify(t_meter *x, t_symbol *s, t_symbol *msg, void *sender, void *data);
void		meter_assist(t_meter *x, void *b, long m, long a, char *s);
void		meter_bang(t_meter *x);
void		meter_int(t_meter *x, long value);
void		meter_float(t_meter *x, double value);
void		meter_clock(t_meter *x);
t_int*		meter_perform(t_int *w);
void		meter_dsp(t_meter *x, t_signal **sp, short *count);
void		meter_paint(t_meter *x, t_object *view);
void*		meter_oksize(t_meter *x, t_rect *newrect);
void		meterCacheSurface(t_meter* x);


// globals
static t_class*	s_meter_class;


// implementation
#if 0
#pragma mark -
#pragma mark Class Definition
#endif 0

int main(void)
{
	t_class *c = class_new("jcom.meter~", (method)meter_new, (method)meter_free, sizeof(t_meter), (method)NULL, A_GIMME, 0L);
	
	c->c_flags |= CLASS_FLAG_NEWDICTIONARY; // use dictionary constructor
	jbox_initclass(c, 0);
	class_dspinitjbox(c);

	jamoma_init();
common_symbols_init();
	
	class_addmethod(c, (method)meter_bang,		"bang",			0);
	class_addmethod(c, (method)meter_int,		"int",			A_LONG, 0);
	class_addmethod(c, (method)meter_float,		"float",		A_FLOAT, 0);	
	class_addmethod(c, (method)meter_dsp,		"dsp",			A_CANT, 0);
	class_addmethod(c, (method)meter_paint,		"paint",		A_CANT, 0);
	class_addmethod(c, (method)meter_oksize,	"oksize",		A_CANT, 0);
	class_addmethod(c, (method)meter_bang,		"mousedown",	A_CANT, 0);
	class_addmethod(c, (method)meter_notify,	"notify",		A_CANT, 0);
	class_addmethod(c, (method)meter_assist,	"assist",		A_CANT, 0);
	
//	CLASS_ATTR_FLOAT(c,					"interval",			0,	t_meter, attrInterval);
//	CLASS_ATTR_FILTER_CLIP(c,			"interval",			kPollIntervalMinimum, kPollIntervalMaximum);
//	CLASS_ATTR_DEFAULT_SAVE(c,			"interval",			0,	"150");
//	CLASS_ATTR_LABEL(c,					"interval",			0,	"Refresh Interval in Milliseconds");
		
//	CLASS_ATTR_RGBA(c,					"bordercolor",		0,	t_meter, attrBorderColor);
//	CLASS_ATTR_STYLE_LABEL(c,			"bordercolor",		0,	"rgba",	"Border Color");
//	CLASS_ATTR_DEFAULT_SAVE_PAINT(c,	"bordercolor",		0,	"0.2 0.2 0.2 1.");
	
	CLASS_ATTR_DEFAULT(c,				"patching_rect",	0,	"0. 0. 100. 12.");
//	CLASS_ATTR_DEFAULT_SAVE_PAINT(c,	"bgcolor",			0,	"0.1 0.1 0.1 1.0");
	
	class_register(CLASS_BOX, c);
	s_meter_class = c;		
	return 0;
}




#if 0
#pragma mark -
#pragma mark Life Cycle
#endif 0

void *meter_new(t_symbol *s, long argc, t_atom *argv)
{
	t_meter*	x;
	t_jbox*		box;
	long		flags;
	
	t_dictionary *d=NULL;
	
	if (!(d=object_dictionaryarg(argc,argv)))
		return NULL;
	
	x = (t_meter *)object_alloc(s_meter_class);
	
	flags = 0 
		| JBOX_DRAWFIRSTIN 
		| JBOX_NODRAWBOX
		| JBOX_DRAWINLAST
	//	| JBOX_TRANSPARENT	
	//	| JBOX_NOGROW
	//	| JBOX_GROWY
		| JBOX_GROWBOTH
	//	| JBOX_HILITE
	//	| JBOX_BACKGROUND
	//	| JBOX_DRAWBACKGROUND
	//	| JBOX_NOFLOATINSPECTOR
	//	| JBOX_TEXTFIELD
	//	| JBOX_MOUSEDRAGDELTA
	//	| JBOX_TEXTFIELD
	;
	
	box = (t_jbox *)x;
	jbox_new(box, flags, argc, argv);
	x->obj.z_box.b_firstin = (t_object*)x;
	dsp_setupjbox((t_pxjbox *)x, 1);
	x->clock = clock_new(x, (method)meter_clock);
			
	attr_dictionary_process(x,d);
	jbox_ready((t_jbox *)x);
	return x;
}


void meter_free(t_meter *x)
{	
	notify_free((t_object *)x);
	dsp_freejbox((t_pxjbox *)x);
	jgraphics_surface_destroy(x->gradientSurface);
	object_free((t_object *)x->clock);
	jbox_free((t_jbox *)x);
}


#if 0
#pragma mark -
#pragma mark Methods
#endif 0

t_max_err meter_notify(t_meter *x, t_symbol *s, t_symbol *msg, void *sender, void *data)
{
	t_symbol*	name;
	
	if(msg == _sym_attr_modified){
		name = (t_symbol *)object_method((t_object *)data, _sym_getname);
		if(name == _sym_bgcolor)
			jbox_redraw((t_jbox*)x);
	}
	
	jbox_notify((t_jbox *)x, s, msg, sender, data);
	return MAX_ERR_NONE;
}


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
	x->peak = 0;
	jbox_redraw((t_jbox*)x);
}


void meter_int(t_meter *x, long value)
{
	meter_float(x,(double)value);
}

void meter_float(t_meter *x, double value)
{
	x->envelope = value;
	jbox_redraw((t_jbox*)x);
}


void meter_clock(t_meter *x)
{	
	double delta = fabs(x->newEnvelope - x->envelope);
	
	// Only re-draw if there was a change of some significance
	if(delta > kMinimumChangeForRedraw){	
		x->envelope = x->newEnvelope;
		jbox_redraw((t_jbox *)x);
	}
	else
		x->envelope = x->newEnvelope;

	x->newEnvelope = 0;

	if(sys_getdspstate()) {							// if dsp is on then we schedule another tick
		if(x->attrDefeat == 0)
			clock_delay(x->clock, kPollIntervalDefault);
	}
}


#if 0
#pragma mark -
#pragma mark Signal Processing
#endif 0

t_int *meter_perform(t_int *w)
{
	t_meter		*x = (t_meter *)(w[1]);
	t_float		*input = (float *)(w[2]);
	long 		n = (long)(w[3]);
	float 		currentvalue;
	
	if(x->obj.z_disabled)
		goto out;

	while(n--){
		currentvalue = ((*input) < 0)?-(*input):*input; // get the current sample's absolute value
		if(currentvalue > x->newEnvelope) 				// if it's a new peak amplitude...
			x->newEnvelope = currentvalue;
		input++; 										// increment pointer in the vector
	}
out:
	return w+4;
}


void meter_dsp(t_meter *x, t_signal **sp, short *count)
{
	if(count[0]){
		dsp_add(meter_perform, 3, x, sp[0]->s_vec, sp[0]->s_n);
		clock_delay(x->clock, kPollIntervalDefault); 			// start the clock
		x->peak = 0;
	}
}


#if 0
#pragma mark -
#pragma mark User Interface
#endif 0

void *meter_oksize(t_meter *x, t_rect *newrect)
{
	TTClip(newrect->width, kWidthMinimum, kWidthMaximum);
	TTClip(newrect->height, kHeightMinimum, kHeightMaximum);
	meterCacheSurface(x);	// Now draw the gradient and cache it in our surface
	return (void*)1;
}


void meterCacheSurface(t_meter* x)
{
	t_jrgba	color;
	t_jbox*	box = (t_jbox*)x;
	int		i, j;
	
	x->gradientRect.x = 0;
	x->gradientRect.y = 0;
	x->gradientRect.width = box->b_patching_rect.width * 0.96;
	x->gradientRect.height = box->b_patching_rect.height;	

	if(x->gradientSurface)
		jgraphics_surface_destroy(x->gradientSurface);
	
	x->gradientSurface = jgraphics_image_surface_create(JGRAPHICS_FORMAT_ARGB32, x->gradientRect.width, x->gradientRect.height);
	
	color.red = 0.0;
	color.green = 1.0;
	color.blue = 0.0;
	color.alpha = 1.0;

	//TODO: switch orientations
	for(i=0; i < x->gradientRect.width; i++){
		color.red = i / x->gradientRect.width;	
		for(j=0; j < x->gradientRect.height; j++)
			jgraphics_image_surface_set_pixel(x->gradientSurface, i, j, color);
	}
}


void meter_paint(t_meter *x, t_object *view)
{
	t_rect			rect;
	t_jgraphics*	g;
	double			level = TTClip(x->envelope, 0.0f, 1.0f);
	double			position;
	double			peakPosition;
	t_jrgba			c;
	
	if(level > 0.0)
		level = pow(level, kGainMidiPowerInv);	// this is taken from the midi conversion in the Gain Dataspace
	
	g = (t_jgraphics*) patcherview_get_jgraphics(view);		// obtain graphics context
	jbox_get_rect_for_view((t_object *)x, view, &rect);		// this is the box rectangle -- but we draw relative to 0 0, and thus only care about width & height
	rect.x = 0;
	rect.y = 0;
	position = rect.width * level * 0.96;
	peakPosition = rect.width * x->peak * 0.96;

	if(level > x->peak)
		x->peak = level;
						
	// TODO: Can we export this from the kernel???	
	//	jgraphics_image_surface_draw_fast(g, x->gradientSurface);
	jgraphics_image_surface_draw(g, x->gradientSurface, x->gradientRect, rect);
	
	c.red = c.green = c.blue = 0.1;
	c.alpha = 1.0;
	jgraphics_set_source_jrgba(g, &c);
	jgraphics_rectangle_fill_fast(g, position, 0, rect.width-position, rect.height);

	if(x->envelope > 1.0 || x->peak > 1.0){
		c.red = 1.0;
		c.green = c.blue = 0.0;
		c.alpha = 1.0;
		jgraphics_set_source_jrgba(g, &c);
		jgraphics_rectangle_fill_fast(g, rect.width - (rect.width * .04), 0, rect.width * .04, rect.height);
	}
	else{
		c.red = peakPosition / x->gradientRect.width;
		c.green = 1.0;
		c.blue = 0.0;
		jgraphics_set_source_jrgba(g, &c);
		// TODO: Can we export this from the kernel???	
		// jgraphics_line_draw_fast(g, rect.width * level * 0.96, 0, rect.width * level * 0.96, rect.height, 1.0);
		jgraphics_move_to(g, peakPosition, 0.0);
		jgraphics_line_to(g, peakPosition, rect.height);
		jgraphics_set_line_width(g, 1.0);
		jgraphics_stroke(g);
	}
}

