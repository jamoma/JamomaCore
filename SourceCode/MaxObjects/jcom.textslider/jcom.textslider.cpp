/* 
	jcom.textslider
	A slider displaying text and value
	By Trond Lossius, Copyright © 2008
	Based on jcom.meter~ by Tim Place, ©2005
	
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
typedef struct _textslider{
	t_pxjbox	obj;
	char		attrDefeat;			// disable the textslider
	
	t_jrgba		attrBgColor;		///< Background color
	t_jrgba		attrFgColor;		///< Forground color
	t_jrgba		attrBorderColor;	///< Border color
	t_jrgba		attrTextColor;		///< Text color
	
	float		attrValue;			///< The slider value
	float		attrRange[2];		///< ATTRIBUTE: low, high
	void		*outlet;			///< Outlet
} t_textslider;


// prototypes
void*		textslider_new(t_symbol *s, long argc, t_atom *argv);
void		textslider_free(t_textslider *x);
t_max_err	textslider_notify(t_textslider *x, t_symbol *s, t_symbol *msg, void *sender, void *data);
void		textslider_assist(t_textslider *x, void *b, long m, long a, char *s);
void		textslider_bang(t_textslider *x);
void		textslider_int(t_textslider *x, long value);
void		textslider_float(t_textslider *x, double value);
t_max_err	textslider_getRange(t_textslider *x, void *attr, long *argc, t_atom **argv);
t_max_err	textslider_setRange(t_textslider *x, void *attr, long argc, t_atom *argv);
void		textslider_mousedown(t_textslider *x, t_object *patcherview, t_pt px, long modifiers);
void		textslider_mousedragdelta(t_textslider *x, t_object *patcherview, t_pt pt, long modifiers);
void		textslider_mouseup(t_textslider *x, t_object *patcherview);
void		textslider_paint(t_textslider *x, t_object *view);
void*		textslider_oksize(t_textslider *x, t_rect *newrect);


// globals
static t_class*	s_textslider_class;


// implementation
#if 0
#pragma mark -
#pragma mark Class Definition
#endif 0

int main(void)
{
	t_class *c = class_new("jcom.textslider", (method)textslider_new, (method)textslider_free, sizeof(t_textslider), (method)NULL, A_GIMME, 0L);
	
	c->c_flags |= CLASS_FLAG_NEWDICTIONARY; // use dictionary constructor
	jbox_initclass(c, 0);
	
	jamoma_init();
	common_symbols_init();
	
	class_addmethod(c, (method)textslider_bang,				"bang",				0);
	class_addmethod(c, (method)textslider_int,				"int",				A_LONG, 0);
	class_addmethod(c, (method)textslider_float,			"float",			A_FLOAT, 0);	
	class_addmethod(c, (method)textslider_paint,			"paint",			A_CANT, 0);
	class_addmethod(c, (method)textslider_oksize,			"oksize",			A_CANT, 0);
	class_addmethod(c, (method)textslider_mousedown,		"mousedown",		A_CANT, 0);
	class_addmethod(c, (method)textslider_mousedragdelta,	"mousedragdelta",	A_CANT, 0);
	class_addmethod(c, (method)textslider_mouseup,			"mouseup",			A_CANT, 0);
	class_addmethod(c, (method)textslider_notify,			"notify",			A_CANT, 0);
	class_addmethod(c, (method)textslider_assist,			"assist",			A_CANT, 0);

	
	
	CLASS_ATTR_RGBA(c,						"bgcolor",		0,	t_textslider,	attrBgColor);
	CLASS_ATTR_DEFAULTNAME_SAVE_PAINT(c,	"bgcolor",		0,	"0.7 0.7 0.7 1.0");
	CLASS_ATTR_STYLE(c,						"bgcolor",		0,	"rgba");

	CLASS_ATTR_RGBA(c,						"fgcolor",		0,	t_textslider,	attrFgColor);
	CLASS_ATTR_DEFAULTNAME_SAVE_PAINT(c,	"fgcolor",		0,	"0.95 0.95 0.95 1.0");
	CLASS_ATTR_STYLE(c,						"fgcolor",		0,	"rgba");	
	
	CLASS_ATTR_RGBA(c,						"bordercolor",	0,	t_textslider,	attrBorderColor);
	CLASS_ATTR_DEFAULTNAME_SAVE_PAINT(c,	"bordercolor",	0,	"0.7 0.7 0.7 1.0");
	CLASS_ATTR_STYLE(c,						"bordercolor",	0,	"rgba");
	
	CLASS_ATTR_RGBA(c,						"textcolor",	0,	t_textslider,	attrTextColor);
	CLASS_ATTR_DEFAULTNAME_SAVE_PAINT(c,	"textcolor",	0,	"0.0 0.0 0.0 1.0");
	CLASS_ATTR_STYLE(c,						"textcolor",	0,	"rgba");
	
	CLASS_ATTR_DEFAULT(c,					"patching_rect",	0,	"0. 0. 100. 12.");
	CLASS_ATTR_MIN(c,						"patching_size",	0,	"1. 1.");

	CLASS_ATTR_FLOAT_ARRAY(c,				"range",		0,	t_textslider,	attrRange, 2);
	CLASS_ATTR_LABEL(c,						"range",		0,	"Range");
	CLASS_ATTR_DEFAULT(c,					"range",		0,	"0.0 1.0");
	CLASS_ATTR_SAVE(c,						"range",		0);
	CLASS_ATTR_ACCESSORS(c,					"range",		textslider_getRange, textslider_setRange);
	
	class_register(CLASS_BOX, c);
	s_textslider_class = c;		
	return 0;
}




#if 0
#pragma mark -
#pragma mark Life Cycle
#endif 0

void *textslider_new(t_symbol *s, long argc, t_atom *argv)
{
	t_textslider*	x;
	t_jbox*		box;
	long		flags;
	
	t_dictionary *d=NULL;
	
	if (!(d=object_dictionaryarg(argc,argv)))
		return NULL;
	
	x = (t_textslider *)object_alloc(s_textslider_class);
	
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

	x->outlet = outlet_new(x, 0);
	x->attrRange[0] = 0.;
	x->attrRange[1] = 1.;

	attr_dictionary_process(x,d);
	jbox_ready((t_jbox *)x);
	return x;
}


void textslider_free(t_textslider *x)
{	
	notify_free((t_object *)x);
	jbox_free((t_jbox *)x);
}


#if 0
#pragma mark -
#pragma mark Methods
#endif 0

t_max_err textslider_notify(t_textslider *x, t_symbol *s, t_symbol *msg, void *sender, void *data)
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
void textslider_assist(t_textslider *x, void *b, long msg, long arg, char *dst)
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


// Method: bang - output current value
void textslider_bang(t_textslider *x)
{
	// jbox_redraw((t_jbox*)x); I don't think it's necsessary to redraw here...
	outlet_float(x->outlet, x->attrValue);
}


void textslider_int(t_textslider *x, long value)
{
	textslider_float(x,(double)value);
}

void textslider_float(t_textslider *x, double value)
{
	x->attrValue = value;
	// TODO: Should it be clipped to range?
	jbox_redraw((t_jbox*)x);
	outlet_float(x->outlet, x->attrValue);

}


t_max_err textslider_getRange(t_textslider *x, void *attr, long *argc, t_atom **argv)
{

	*argc = 2;
	
	//sysmem_ptrsize(*argv)
	// FIXME: This checks if we have memory passed in, good, but how do we know if it is enough memory for 2 atoms? [TAP]
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom) * 2);
	
	atom_setfloat(*argv, x->attrRange[0]);
	atom_setfloat(*argv+1, x->attrRange[1]);	

	return MAX_ERR_NONE;
}

t_max_err textslider_setRange(t_textslider *x, void *attr, long argc, t_atom *argv)
{
	if(argc)
		x->attrRange[0] = atom_getfloat(argv+0);
	if(argc > 1)
		x->attrRange[1] = atom_getfloat(argv+1);

	jbox_redraw((t_jbox*)x);
	
	return MAX_ERR_NONE;
}



#if 0
#pragma mark -
#pragma mark User Interface
#endif 0


void textslider_mousedown(t_textslider *x, t_object *patcherview, t_pt px, long modifiers)
{
	/*
	t_rect	rect;
	
	// usually we don't want mousedragdelta -- we turn it on below as necessary
	jbox_set_mousedragdelta((t_object *)x, 0);
	
	jbox_get_rect_for_view((t_object *)x, patcherview, &rect); 
	if(px.y > 20.0)	// we only handle clicks in the title bar
		return;
	
	if(px.x > (rect.width - 120)){
		// we check the gain and mix knobs first because they are continuous parameters and should run as fast as possible
		if(x->attr_hasgain && px.x >= x->rect_gain.x && px.x <= (x->rect_gain.x + x->rect_gain.width)){
			setGainDataspaceUnit(x, gensym("midi"));
			x->gainDragging = true;
			x->anchor.x = x->anchor.y = 0.0;
			x->anchorValue = x->attr_gain;			
			jbox_set_mousedragdelta((t_object *)x, 1);
		}
		else if(x->attr_hasmix && px.x >= x->rect_mix.x && px.x <= (x->rect_mix.x + x->rect_mix.width)){
			x->mixDragging = true;
			x->anchor.x = x->anchor.y = 0.0;
			x->anchorValue = x->attr_mix;			
			jbox_set_mousedragdelta((t_object *)x, 1);
		}
		else if(x->attr_hasinspector && px.x >= x->rect_inspector.x && px.x <= (x->rect_inspector.x + x->rect_inspector.width))
			object_method_typed(x->obj_remote, gensym("/panel/open"), 0, NULL, NULL);
		else if(x->attr_haspreview && px.x >= x->rect_preview.x && px.x <= (x->rect_preview.x + x->rect_preview.width))
			object_attr_setlong(x, gensym("is_previewing"), !x->attr_ispreviewing);
		else if(x->attr_hasfreeze && px.x >= x->rect_freeze.x && px.x <= (x->rect_freeze.x + x->rect_freeze.width))
			object_attr_setlong(x, gensym("is_frozen"), !x->attr_isfrozen);
		else if(x->attr_hasbypass && px.x >= x->rect_bypass.x && px.x <= (x->rect_bypass.x + x->rect_bypass.width))
			object_attr_setlong(x, gensym("is_bypassed"), !x->attr_isbypassed);
		else if(x->attr_hasmute && px.x >= x->rect_mute.x && px.x <= (x->rect_mute.x + x->rect_mute.width))
			object_attr_setlong(x, gensym("is_muted"), !x->attr_ismuted);
	}
	else if(px.x < 25)
		ui_menu_do(x, patcherview, px, modifiers);
	else if(px.x < 150)
		ui_refmenu_do(x, patcherview, px, modifiers);
	*/
}


// mousedragdelta sends the amount the mouse moved in t_pt
void textslider_mousedragdelta(t_textslider *x, t_object *patcherview, t_pt pt, long modifiers)
{
	/*
	t_rect	rect;
	double	factor = 1.0;	// factor determines how much precision (vs. immediacy) you have when dragging the knob
	
	jbox_get_rect_for_view((t_object *)x, patcherview, &rect);
	
	if(modifiers & eShiftKey)
		factor = 50.0;
	
	if(x->mixDragging){
		x->anchorValue = TTClip<float>(x->anchorValue - (pt.y / factor), 0.0, 100.0);
		object_attr_setfloat(x, gensym("mix"), x->anchorValue);
	}
	else if(x->gainDragging){
		x->anchorValue = TTClip<float>(x->anchorValue - (pt.y / factor), 0.0, 127.0);
		object_attr_setfloat(x, gensym("gain"), x->anchorValue);
	}
	*/
}


void textslider_mouseup(t_textslider *x, t_object *patcherview)
{
	/*
	x->mixDragging = false;
	x->gainDragging = false;
	t_object *textfield = jbox_get_textfield((t_object*) x);
	if(textfield)
		object_method(textfield, gensym("settext"), x->attr_modulename->s_name);
	
	jbox_redraw(&x->box);
	*/
}


void *textslider_oksize(t_textslider *x, t_rect *newrect)
{
	TTClip(newrect->width, kWidthMinimum, kWidthMaximum);
	TTClip(newrect->height, kHeightMinimum, kHeightMaximum);
	return (void*)1;
}





void textslider_paint(t_textslider *x, t_object *view)
{
	t_rect			rect;
	t_jgraphics*	g;
	double			value;
	
	if (x->attrRange[0] == x->attrRange[1])
		value = 0.5;
	else
		value = TTClip( (x->attrValue - x->attrRange[0])/(x->attrRange[1] - x->attrRange[0]), 0.0f, 1.0f);
	double			position;
	t_jrgba			c;
	
	g = (t_jgraphics*) patcherview_get_jgraphics(view);		// obtain graphics context
	jbox_get_rect_for_view((t_object *)x, view, &rect);		// this is the box rectangle -- but we draw relative to 0 0, and thus only care about width & height
	rect.x = 0;
	rect.y = 0;
	position = rect.width * value;

	c = x->attrFgColor;
	jgraphics_set_source_jrgba(g, &c);
	jgraphics_rectangle_fill_fast(g, 0, 0, position, rect.height);	
	
	c = x->attrBgColor;
	jgraphics_set_source_jrgba(g, &c);
	jgraphics_rectangle_fill_fast(g, position, 0, rect.width-position, rect.height);
	
	
}

