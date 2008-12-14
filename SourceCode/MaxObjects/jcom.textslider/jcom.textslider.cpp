/* 
	jcom.textslider
	A slider displaying text and value
	By Trond Lossius, Copyright © 2008
	Inspired by a GUI widget from radiaL by jhno
	
	License: This code is licensed under the terms of the GNU LGPL
	http://www.gnu.org/licenses/lgpl.html 
  */


// TODO: Integrate Dataspace Lib and Function Lib.
// Would like to add 2nd inlet and outlet for communiting units to/from umenu

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
	t_jbox		box;
	char		attrDefeat;			// disable the textslider
	
	t_jrgba		attrBgColor;		///< Background color
	t_jrgba		attrFgColor;		///< Forground color
	t_jrgba		attrBorderColor;	///< Border color
	t_jrgba		attrTextColor;		///< Text color
	
	float		attrValue;			///< The slider value
	float		attrRange[2];		///< ATTRIBUTE: low, high
	float		anchorValue;		///< Used for mouse dragging
	
	// TODO: Display a list instead of just one symbol.
	// Eventually: Implement "prepend text" and "append text" attributes 
	t_symbol	*attrText;			///< The text displayed by the slider
	
	t_symbol	*attrTracking;			///< Set mouse drag mode 
	double		mousePositionY;		///< Used to redraw position mouse after dragging
	bool		mouseDown;			///< Flag indicating mouse status
	
	void		*outlet;			///< Outlet
} t_textslider;


// prototypes
void*		textslider_new(t_symbol *s, long argc, t_atom *argv);
void		textslider_free(t_textslider *x);
void		textslider_notify(t_textslider *x, t_symbol *s, t_symbol *msg, void *sender, void *data);
void		textslider_assist(t_textslider *x, void *b, long m, long a, char *s);
void		textslider_bang(t_textslider *x);
void		textslider_int(t_textslider *x, long value);
void		textslider_float(t_textslider *x, double value);
void		textslider_set(t_textslider *x, double value);
t_max_err	textslider_getRange(t_textslider *x, void *attr, long *argc, t_atom **argv);
t_max_err	textslider_setRange(t_textslider *x, void *attr, long argc, t_atom *argv);
t_max_err	textslider_get_text(t_textslider *x, void *attr, long *argc, t_atom **argv);
t_max_err	textslider_set_text(t_textslider *x, void *attr, long argc, t_atom *argv);
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
	long	flags;
	t_class *c;
	
	jamoma_init();
	common_symbols_init();
	
	c = class_new("jcom.textslider", 
				  (method)textslider_new, 
				  (method)textslider_free, 
				  sizeof(t_textslider), 
				  (method)NULL, 
				  A_GIMME, 
				  0L);
	
	flags = JBOX_TEXTFIELD;
	jbox_initclass(c, flags);	
	c->c_flags |= CLASS_FLAG_NEWDICTIONARY; // to specify dictionary constructor
	
	class_addmethod(c, (method)textslider_bang,				"bang",				0);
	class_addmethod(c, (method)textslider_int,				"int",				A_LONG, 0);
	class_addmethod(c, (method)textslider_float,			"float",			A_FLOAT, 0);
	class_addmethod(c, (method)textslider_set,				"set",				A_FLOAT, 0);
	class_addmethod(c, (method)textslider_paint,			"paint",			A_CANT, 0);
	class_addmethod(c, (method)textslider_notify,			"notify",			A_CANT, 0);
	class_addmethod(c, (method)textslider_oksize,			"oksize",			A_CANT, 0);
	class_addmethod(c, (method)textslider_mousedown,		"mousedown",		A_CANT, 0);
	class_addmethod(c, (method)textslider_mousedragdelta,	"mousedragdelta",	A_CANT, 0);
	class_addmethod(c, (method)textslider_mouseup,			"mouseup",			A_CANT, 0);
	class_addmethod(c, (method)textslider_notify,			"notify",			A_CANT, 0);
	class_addmethod(c, (method)textslider_assist,			"assist",			A_CANT, 0);

	

	CLASS_ATTR_DEFAULT(c,					"patching_rect",	0,	"0. 0. 160. 20.");
	CLASS_ATTR_MIN(c,						"patching_size",	0,	"1. 1.");
		
	CLASS_ATTR_DEFAULT(c,					"fontname",		0, JAMOMA_DEFAULT_FONT);
	CLASS_ATTR_DEFAULT(c,					"fontsize",		0, "10");
	
	CLASS_STICKY_ATTR(c,					"category",		0, "Color");
	
	CLASS_ATTR_RGBA(c,						"bgcolor",		0,	t_textslider,	attrBgColor);
	CLASS_ATTR_DEFAULTNAME_SAVE_PAINT(c,	"bgcolor",		0,	"0.8 0.8 0.8 0.7");
	CLASS_ATTR_STYLE(c,						"bgcolor",		0,	"rgba");
	CLASS_ATTR_LABEL(c,						"bgcolor",		0,	"Background Color");

	CLASS_ATTR_RGBA(c,						"fgcolor",		0,	t_textslider,	attrFgColor);
	CLASS_ATTR_DEFAULTNAME_SAVE_PAINT(c,	"fgcolor",		0,	"0.95 0.95 0.95 1.0");
	CLASS_ATTR_STYLE(c,						"fgcolor",		0,	"rgba");
	CLASS_ATTR_LABEL(c,						"fgcolor",		0,	"Foreground Color");
	
	CLASS_ATTR_RGBA(c,						"bordercolor",	0,	t_textslider,	attrBorderColor);
	CLASS_ATTR_DEFAULTNAME_SAVE_PAINT(c,	"bordercolor",	0,	"0.5 0.5 0.5 1.0");
	CLASS_ATTR_STYLE(c,						"bordercolor",	0,	"rgba");
	CLASS_ATTR_LABEL(c,						"bordercolor",	0,	"Border Color");
	
	CLASS_ATTR_RGBA(c,						"textcolor",	0,	t_textslider,	attrTextColor);
	CLASS_ATTR_DEFAULTNAME_SAVE_PAINT(c,	"textcolor",	0,	"0.0 0.0 0.0 1.0");
	CLASS_ATTR_STYLE(c,						"textcolor",	0,	"rgba");
	CLASS_ATTR_LABEL(c,						"textcolor",	0,	"Text Color");
	
	CLASS_STICKY_ATTR_CLEAR(c,				"category");

	CLASS_STICKY_ATTR(c,					"category",		0, "Jamoma");
	
	CLASS_ATTR_FLOAT_ARRAY(c,				"range",		0,	t_textslider,	attrRange, 2);
	CLASS_ATTR_LABEL(c,						"range",		0,	"Range");
	CLASS_ATTR_DEFAULT(c,					"range",		0,	"0.0 1.0");
	CLASS_ATTR_SAVE(c,						"range",		0);
	CLASS_ATTR_ACCESSORS(c,					"range",		textslider_getRange, textslider_setRange);
	
	CLASS_ATTR_SYM(c,						"text",			0,	t_textslider, attrText);
	CLASS_ATTR_LABEL(c,						"text",			0,	"Displayed Text");
	CLASS_ATTR_DEFAULT(c,					"text",			0,	"textslider");
	CLASS_ATTR_SAVE(c,						"text",			0);
	CLASS_ATTR_ACCESSORS(c,					"text",			textslider_get_text, textslider_set_text);
	
	CLASS_ATTR_SYM(c,						"attrTracking",	0,	t_textslider, attrTracking);
	CLASS_ATTR_LABEL(c,						"attrTracking",	0,	"Mouse Tracking");
	CLASS_ATTR_DEFAULT(c,					"attrTracking",	0,	"horizontal");
	CLASS_ATTR_SAVE(c,						"attrTracking",	0);
	CLASS_ATTR_ENUM(c,						"attrTracking",	0,	"horizontal vertical both");

	CLASS_STICKY_ATTR_CLEAR(c,				"category");	
	
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
	t_textslider	*x = NULL;
	t_dictionary	*d=NULL;
	long			flags;

	
	if (!(d=object_dictionaryarg(argc,argv)))
		return NULL;
	
	if (x = (t_textslider *)object_alloc(s_textslider_class))
	{
		flags = 0 
			| JBOX_DRAWFIRSTIN		// 0
			| JBOX_NODRAWBOX		// 1
			| JBOX_DRAWINLAST		// 2
		//	| JBOX_TRANSPARENT		// 3
		//	| JBOX_NOGROW			// 4
		//	| JBOX_GROWY			// 5
			| JBOX_GROWBOTH			// 6
		//	| JBOX_IGNORELOCKCLICK	// 7
		//	| JBOX_HILITE			// 8
			| JBOX_BACKGROUND		// 9
		//	| JBOX_NOFLOATINSPECTOR	// 10
			| JBOX_TEXTFIELD		// 11
			| JBOX_MOUSEDRAGDELTA	// 12
		//	| JBOX_COLOR			// 13
		//	| JBOX_BINBUF			// 14
		//	| JBOX_DRAWIOLOCKED		// 15
		//	| JBOX_DRAWBACKGROUND	// 16
		//	| JBOX_NOINSPECTFIRSTIN	// 17
		//	| JBOX_DEFAULTNAMES		// 18
		//	| JBOX_FIXWIDTH			// 19
		;
		
		jbox_new(&x->box, flags, argc, argv);
		x->box.b_firstin = (t_object *)x;
		x->outlet = outlet_new(x, 0);

		attr_dictionary_process(x,d);
		jbox_ready((t_jbox *)x);
		
		object_attach_byptr(x, x); 		// sign up for notifications of changes to our attributes
		return x;
	}
	else
		return NULL;
}


void textslider_free(t_textslider *x)
{	
	notify_free((t_object *)x);
	jbox_free((t_jbox *)x);
	
	object_detach_byptr(x, x); 
	object_unregister(x); 
}


#if 0
#pragma mark -
#pragma mark Methods
#endif 0


void textslider_notify(t_textslider *x, t_symbol *s, t_symbol *msg, void *sender, void *data)
{
	t_object	*textfield;
	t_symbol	*attrname;
	
	if(msg == _sym_modified)
		jbox_redraw(&x->box);	
	else if ((msg == _sym_attr_modified) && (sender == x))
	{
		attrname = (t_symbol *)object_method((t_object *)data, gensym("getname"));
		
		textfield = jbox_get_textfield((t_object*) x);
		if(textfield)
			textfield_set_textcolor(textfield, &x->attrTextColor);
		
		if(attrname == gensym("text"))
			object_method(textfield, gensym("settext"), x->attrText->s_name);
		
		char str[7];
		if(x->mouseDown) {
			snprintf(str, sizeof(str), "%f", x->attrValue);
			object_method(textfield, gensym("settext"), str);
		}
		
		jbox_redraw(&x->box);
	}
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


// Method: int - converted to float
void textslider_int(t_textslider *x, long value)
{
	textslider_float(x,(double)value);
}


// Method: float - update value, redraw and output
void textslider_float(t_textslider *x, double value)
{
	x->attrValue = value;
	// TODO: Should it be clipped to range?
	jbox_redraw((t_jbox*)x);
	outlet_float(x->outlet, x->attrValue);

}


// Method: set - update and redraw, but no output
void textslider_set(t_textslider *x, double value)
{
	x->attrValue = value;
	// TODO: Should it be clipped to range?
	jbox_redraw((t_jbox*)x);	
}


#if 0
#pragma mark -
#pragma mark Attributes
#endif 0


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


t_max_err textslider_get_text(t_textslider *x, void *attr, long *argc, t_atom **argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom));
	atom_setsym(*argv, x->attrText);
	return MAX_ERR_NONE;
}


t_max_err textslider_set_text(t_textslider *x, void *attr, long argc, t_atom *argv)
{	
	if(argc && argv)
		x->attrText = atom_getsym(argv);
	else
		x->attrText = _sym_nothing;
	
	jbox_redraw((t_jbox*)x);
		
	return MAX_ERR_NONE;
}


#if 0
#pragma mark -
#pragma mark User Interface
#endif 0


void textslider_mousedown(t_textslider *x, t_object *patcherview, t_pt px, long modifiers)
{
	t_rect	rect;
	
	// TODO: add attribute for whether to jump to click position or not
	
	
	// Get rect position and prepare for the mouse to show up properly affter dragging
	jbox_get_rect_for_view((t_object *)x, patcherview, &rect);
	x->mousePositionY = rect.y + px.y;
	
	x->mouseDown = 1;

	x->anchorValue = x->attrValue;			
	jbox_set_mousedragdelta((t_object *)x, 1);
}


// mousedragdelta sends the amount the mouse moved in t_pt
void textslider_mousedragdelta(t_textslider *x, t_object *patcherview, t_pt pt, long modifiers)
{
	t_rect		rect;
	t_object	*textfield;
	float		delta;

	jbox_get_rect_for_view((t_object *)x, patcherview, &rect);

	double	factor = rect.width-2;	// factor determines how much precision (vs. immediacy) you have when dragging the knob
	if(modifiers & eShiftKey)
		factor = factor*50.;
	
	factor = factor / (x->attrRange[1] - x->attrRange[0]);
		
	if (x->attrTracking==gensym("horizontal"))
		delta = pt.x;
	else if (x->attrTracking==gensym("vertical"))
		delta = -pt.y;
	else if (x->attrTracking==gensym("both"))
	{
		if (fabs(pt.x)>fabs(pt.y))
			delta = pt.x;
		else
			delta = -pt.y;
	}	
	x->anchorValue = TTClip<float>(x->anchorValue + (delta/factor), x->attrRange[0], x->attrRange[1]);
	
	// TODO: Display of values during drag should be optional.
	
	// TODO: Add numdecimalplaces attribute
	
	// Display value while dragging
	char str[7];
	textfield = jbox_get_textfield((t_object*) x);
	snprintf(str, sizeof(str), "%f", x->attrValue);
	if (textfield)
		object_method(textfield, gensym("settext"), str);
	
	textslider_float(x, x->anchorValue);
}


void textslider_mouseup(t_textslider *x, t_object *patcherview)
{
	x->mouseDown = 0;
	t_rect	rect;
	
	t_object *textfield = jbox_get_textfield((t_object*) x);
	if(textfield)
		object_method(textfield, gensym("settext"), x->attrText->s_name);
	
	jbox_redraw(&x->box);
	
	// Mouse show up again at current slider value
	jbox_get_rect_for_view((t_object *)x, patcherview, &rect);
	jmouse_setposition_view(patcherview, 
							rect.x+((x->attrValue/(x->attrRange[1] - x->attrRange[0]))*(rect.width-2)+1), 
							x->mousePositionY);
}


void *textslider_oksize(t_textslider *x, t_rect *newrect)
{
	t_object 	*textfield = NULL;
	
	TTClip(newrect->width, kWidthMinimum, kWidthMaximum);
	TTClip(newrect->height, kHeightMinimum, kHeightMaximum);
	
	// We do textfield configuration here because the margins are dependent upon the dimensions
	// Textfield is used for displaying the slider name
	textfield = jbox_get_textfield((t_object*) x); 
	textfield_set_noactivate(textfield, 1);
	textfield_set_readonly(textfield, 1);
	textfield_set_editonclick(textfield, 0);
	textfield_set_wordwrap(textfield, 0);
	textfield_set_useellipsis(textfield, 1); 
	textfield_set_textcolor(textfield, &x->attrTextColor);
	textfield_set_textmargins(textfield, 10.0, 4.0, 2.0, 2.0);
		
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

	// TODO: Rounded corners
	
	g = (t_jgraphics*) patcherview_get_jgraphics(view);		// obtain graphics context
	jbox_get_rect_for_view((t_object *)x, view, &rect);		// this is the box rectangle -- but we draw relative to 0 0, and thus only care about width & height
	rect.x = 0;
	rect.y = 0;
	position = (rect.width-3) * value+1;					// -3: one pixel for each border and -1 for counting to N-1 

	// Draw frame
	c = x->attrBorderColor;
	jgraphics_set_source_jrgba(g, &c);
	jgraphics_rectangle_fill_fast(g, 0., 0., rect.width, rect.height);	
	
	// Draw active part of slider
	c = x->attrFgColor;
	jgraphics_set_source_jrgba(g, &c);
	jgraphics_rectangle_fill_fast(g, 1, 1, position, rect.height-2);	
	
	// Draw passive part of slider
	c = x->attrBgColor;
	jgraphics_set_source_jrgba(g, &c);
	jgraphics_rectangle_fill_fast(g, position, 1, rect.width-position-1, rect.height-2);
	

}

