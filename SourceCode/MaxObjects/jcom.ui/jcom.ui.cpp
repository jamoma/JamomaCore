/* 
 * jcom.ui
 * External for Jamoma: provide standard user interface component for modules
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "jcom.ui.h"

// class variables
static t_class		*s_ui_class = NULL;

static t_jrgba		s_color_text				= {0.65,		0.65,		0.65,		1.0};
static t_jrgba		s_color_background_audio	= {0.141176,	0.141176,	0.141176,	1.0};
static t_jrgba		s_color_titlebar_audio		= {0.0,			0.0,		0.0,		1.0};
static t_jrgba		s_color_border_audio		= {0.2,			0.2,		0.2,		1.0};
static t_jrgba		s_color_background_button	= {0.2,			0.2,		0.2,		1.0};
static t_jrgba		s_color_border_button		= {0.4,			0.4,		0.4,		1.0};
static t_jrgba		s_color_text_button_on		= {0.7,			0.7,		0.7,		1.0};
static t_jrgba		s_color_text_button_off		= {0.6,			0.6,		0.6,		1.0};
static t_jrgba		s_color_blue_button			= {0.2,			0.2,		0.7,		1.0};
static t_jrgba		s_color_orange_button		= {0.8,			0.6,		0.2,		1.0};
static t_jrgba		s_color_red_button			= {0.6,			0.2,		0.2,		1.0};
static t_jrgba		s_color_green_button		= {0.2,			0.7,		0.2,		1.0};

#pragma mark -
#pragma mark life cycle

int main(void)
{
	long	flags;
	t_class *c;

	jamoma_init();

	c = class_new("jcom.ui",
				  (method)ui_new,
				  (method)ui_free,
				  sizeof(t_ui),
				  (method)NULL,
				  A_GIMME,
				  0L);

	flags = JBOX_TEXTFIELD | JBOX_COLOR;
	jbox_initclass(c, flags);
	c->c_flags |= CLASS_FLAG_NEWDICTIONARY; // to specify dictionary constructor

	class_addmethod(c, (method)ui_notify,			"notify",			A_CANT, 0);
	class_addmethod(c, (method)ui_paint,			"paint",			A_CANT, 0);
	class_addmethod(c, (method)ui_mousedown,		"mousedown",		A_CANT, 0);
	class_addmethod(c, (method)ui_mousedragdelta,	"mousedragdelta",	A_CANT, 0);
	class_addmethod(c, (method)ui_mouseup,			"mouseup",			A_CANT, 0);
	class_addmethod(c, (method)ui_oksize,			"oksize",		A_CANT, 0);

	CLASS_ATTR_DEFAULT(c, 	"patching_rect",	0, "0. 0. 300. 70.");
	CLASS_ATTR_DEFAULT(c, 	"fontname",			0, JAMOMA_DEFAULT_FONT);
	CLASS_ATTR_DEFAULT(c, 	"fontsize",			0, "10");
	
	CLASS_ATTR_LONG(c,		"has_inspector",	0, t_ui, attr_hasinspector);
	CLASS_ATTR_STYLE(c,		"has_inspector",	0, "onoff");
	CLASS_ATTR_DEFAULT(c,	"has_inspector",	0, "0");
	CLASS_ATTR_SAVE(c,		"has_inspector",	0);

	CLASS_ATTR_LONG(c,		"has_meters",		0, t_ui, attr_hasmeters);
	CLASS_ATTR_DEFAULT(c,	"has_meters",		0, "0");	// number of meters to display
	CLASS_ATTR_SAVE(c,		"has_meters",		0);

	CLASS_ATTR_LONG(c,		"meters_defeated",	0, t_ui, attr_metersdefeated);
	CLASS_ATTR_STYLE(c,		"meters_defeated",	0, "onoff");
	CLASS_ATTR_DEFAULT(c,	"meters_defeated",	0, "0");	// number of meters to display

	CLASS_ATTR_LONG(c,		"has_mute",			0, t_ui, attr_hasmute);
	CLASS_ATTR_STYLE(c,		"has_mute",			0, "onoff");
	CLASS_ATTR_DEFAULT(c,	"has_mute",			0, "0");
	CLASS_ATTR_SAVE(c,		"has_mute",			0);
	CLASS_ATTR_ACCESSORS(c,	"has_mute",			NULL,	attr_set_hasmute);

	CLASS_ATTR_LONG(c,		"is_muted",			0, t_ui, attr_ismuted);
	CLASS_ATTR_STYLE(c,		"is_muted",			0, "onoff");
	CLASS_ATTR_DEFAULT(c,	"is_muted",			0, "0");
	CLASS_ATTR_ACCESSORS(c,	"is_muted",			NULL,	attr_set_mute);

	CLASS_ATTR_LONG(c,		"has_bypass",		0, t_ui, attr_hasbypass);
	CLASS_ATTR_STYLE(c,		"has_bypass",		0, "onoff");
	CLASS_ATTR_DEFAULT(c,	"has_bypass",		0, "0");
	CLASS_ATTR_SAVE(c,		"has_bypass",		0);
	CLASS_ATTR_ACCESSORS(c,	"has_bypass",		NULL,	attr_set_hasbypass);

	CLASS_ATTR_LONG(c,		"is_bypassed",		0, t_ui, attr_isbypassed);
	CLASS_ATTR_STYLE(c,		"is_bypassed",		0, "onoff");
	CLASS_ATTR_DEFAULT(c,	"is_bypassed",		0, "0");
	CLASS_ATTR_ACCESSORS(c,	"is_bypassed",		NULL,	attr_set_bypass);

	CLASS_ATTR_LONG(c,		"has_freeze",		0, t_ui, attr_hasfreeze);
	CLASS_ATTR_STYLE(c,		"has_freeze",		0, "onoff");
	CLASS_ATTR_DEFAULT(c,	"has_freeze",		0, "0");
	CLASS_ATTR_SAVE(c,		"has_freeze",		0);
	CLASS_ATTR_ACCESSORS(c,	"has_freeze",		NULL,	attr_set_hasfreeze);

	CLASS_ATTR_LONG(c,		"is_frozen",		0, t_ui, attr_isfrozen);
	CLASS_ATTR_STYLE(c,		"is_frozen",		0, "onoff");
	CLASS_ATTR_DEFAULT(c,	"is_frozen",		0, "0");
	CLASS_ATTR_ACCESSORS(c,	"is_frozen",		NULL,	attr_set_freeze);

	CLASS_ATTR_LONG(c,		"has_preview",		0, t_ui, attr_haspreview);
	CLASS_ATTR_STYLE(c,		"has_preview",		0, "onoff");
	CLASS_ATTR_DEFAULT(c,	"has_preview",		0, "0");
	CLASS_ATTR_SAVE(c,		"has_preview",		0);
	CLASS_ATTR_ACCESSORS(c,	"has_preview",		NULL,	attr_set_haspreview);

	CLASS_ATTR_LONG(c,		"is_previewing",	0, t_ui, attr_ispreviewing);
	CLASS_ATTR_STYLE(c,		"is_previewing",	0, "onoff");
	CLASS_ATTR_DEFAULT(c,	"is_previewing",	0, "0");
	CLASS_ATTR_ACCESSORS(c,	"is_previewing",	NULL,	attr_set_preview);

	CLASS_ATTR_LONG(c,		"has_gain",			0, t_ui, attr_hasgain);
	CLASS_ATTR_STYLE(c,		"has_gain",			0, "onoff");
	CLASS_ATTR_DEFAULT(c,	"has_gain",			0, "0");
	CLASS_ATTR_SAVE(c,		"has_gain",			0);
	CLASS_ATTR_ACCESSORS(c,	"has_gain",			NULL,	attr_set_hasgain);

	CLASS_ATTR_FLOAT(c,		"gain",				0, t_ui, attr_gain);
	CLASS_ATTR_DEFAULT(c,	"gain",				0, "0");
	CLASS_ATTR_ACCESSORS(c,	"gain",				NULL,	attr_set_gain);

	CLASS_ATTR_LONG(c,		"has_mix",			0, t_ui, attr_hasmix);
	CLASS_ATTR_STYLE(c,		"has_mix",			0, "onoff");
	CLASS_ATTR_DEFAULT(c,	"has_mix",			0, "0");
	CLASS_ATTR_SAVE(c,		"has_mix",			0);
	CLASS_ATTR_ACCESSORS(c,	"has_mix",			NULL,	attr_set_hasmix);

	CLASS_ATTR_FLOAT(c,		"mix",				0, t_ui, attr_mix);
	CLASS_ATTR_DEFAULT(c,	"mix",				0, "0");
	CLASS_ATTR_ACCESSORS(c,	"mix",				NULL,	attr_set_mix);

	CLASS_ATTR_SYM(c,		"module_name",		0, t_ui, attr_modulename);
	CLASS_ATTR_DEFAULT(c,	"module_name",		0, "/Jamoma");

	class_register(CLASS_BOX, c);
	s_ui_class = c;
	return 0;
}


t_ui* ui_new(t_symbol *s, short argc, t_atom *argv)
{
	t_ui			*x = NULL;
	t_dictionary 	*d = NULL;
//	t_object 		*textfield = NULL; 
	long 			flags;
	t_atom			a[1];

	if(!(d=object_dictionaryarg(argc, argv)))
		return NULL;	

	if(x = (t_ui*)object_alloc(s_ui_class)){
		flags = 0 
				| JBOX_DRAWFIRSTIN
				| JBOX_NODRAWBOX
		//		| JBOX_DRAWINLAST
				| JBOX_TRANSPARENT	
		//		| JBOX_NOGROW
		//		| JBOX_GROWY
				| JBOX_GROWBOTH
		//		| JBOX_IGNORELOCKCLICK
				| JBOX_HILITE
				| JBOX_BACKGROUND
		//		| JBOX_NOFLOATINSPECTOR
				| JBOX_TEXTFIELD
				;

		jbox_new(&x->box, flags, argc, argv);
		x->box.b_firstin = (t_object *)x;
		x->outlet = outlet_new(x, 0L);
		x->menu_items = NULL;
		x->refmenu_items = NULL;
		x->presets = linklist_new();
		x->hash_internals = hashtab_new(0);
		
		atom_setsym(a, ps__gui__);
		jcom_core_loadextern(gensym("jcom.remote"), 1, a, &x->obj_remote);
		
/*		
		textfield = jbox_get_textfield((t_object*) x); 
		textfield_set_noactivate(textfield, 1);
		textfield_set_readonly(textfield, 1);
		textfield_set_editonclick(textfield, 0);
		textfield_set_wordwrap(textfield, 0);
		textfield_set_useellipsis(textfield, 1); 
		textfield_set_textcolor(textfield, &s_light_gray);
		textfield_set_textmargins(textfield, 20.0, 2.0, 60.0, 51.0);
*/
		attr_dictionary_process(x, d); 					// handle attribute args
		jbox_ready(&x->box);

		x = (t_ui *)object_register(CLASS_BOX, symbol_unique(), x);
		object_attach_byptr(x, x); 						// sign up for notifications of changes to our attributes
		
		x->menu_items = (t_linklist *)linklist_new();
		ui_menu_build(x);
		x->menu_qelem = qelem_new(x, (method)ui_menu_qfn);

		x->refmenu_items = (t_linklist *)linklist_new();
		ui_refmenu_build(x);
		x->refmenu_qelem = qelem_new(x, (method)ui_refmenu_qfn);
	}
	return x;
}


void ui_free(t_ui *x)
{
	jbox_free(&x->box);

	qelem_free(x->menu_qelem);
	x->menu_qelem = NULL;
	object_free(x->menu_items);
	
	qelem_free(x->refmenu_qelem);
	x->refmenu_qelem = NULL;
	object_free(x->refmenu_items);
	
	object_free(x->presets);
	object_free(x->obj_remote);
	ui_internals_destroy(x);

	object_detach_byptr(x, x); 
	object_unregister(x); 
}


#pragma mark -
#pragma mark methods

void ui_notify(t_ui *x, t_symbol *s, t_symbol *msg, void *sender, void *data)
{
	t_object	*textfield;
	t_symbol	*attrname;

	if((msg == _sym_attr_modified) && (sender == x)){
		attrname = (t_symbol *)object_method((t_object *)data, gensym("getname"));
		
		if(attrname == gensym("module_name")){
			textfield = jbox_get_textfield((t_object*) x); 
			object_method(textfield, gensym("settext"), x->attr_modulename->s_name);
		}
		else
			ui_menu_build(x);		// we don't really want this everytime -- make this conditional...

		jbox_redraw(&x->box);
	}
}


void ui_bang(t_ui *x)
{
	;
}


#pragma mark -
#pragma mark drawing and appearance

void ui_paint(t_ui *x, t_object *view)
{
	t_rect 		rect;
	t_jgraphics *g;
	double 		border_thickness = 0.5;
	double 		cornersize = 12.0;
	double		middle;

	g = (t_jgraphics*) patcherview_get_jgraphics(view);
	jbox_get_rect_for_view((t_object*) &x->box, view, &rect);

	// clear the background
	jgraphics_rectangle_rounded(g,  border_thickness, 
									border_thickness, 
									rect.width - ((border_thickness) * 2.0), 
									rect.height - ((border_thickness) * 2.0), 
									cornersize, cornersize); 
	jgraphics_set_source_jrgba(g,	&s_color_background_audio);
	jgraphics_fill(g);
	
	// draw the titlebar
	jgraphics_rectangle_rounded(g,  border_thickness, 
									border_thickness, 
									rect.width - (border_thickness * 2.0 + 1.0), 
									18.0, 
									cornersize, cornersize); 
	jgraphics_set_source_jrgba(g,	&s_color_titlebar_audio);
	jgraphics_fill(g);
	
	jgraphics_rectangle_fill_fast(g, border_thickness, 
									9.0, 
									rect.width - (border_thickness * 2.0 + 1.0), 
									10.0);
	
	// draw borders
	jgraphics_rectangle_rounded(g,  border_thickness, 
									border_thickness, 
									rect.width - (border_thickness * 2.0), 
									rect.height - (border_thickness * 2.0), 
									cornersize, cornersize); 
	jgraphics_set_source_jrgba(g,	&s_color_border_audio);
	jgraphics_set_line_width(g, 1.0);
	jgraphics_stroke(g);

	jgraphics_set_line_width(g, 1.0);
	jgraphics_move_to(g, border_thickness, 19.5);
	jgraphics_line_to(g, rect.width - (border_thickness * 1.0), 19.5);
	jgraphics_stroke(g);
	
	// draw the menu icon
	jgraphics_set_line_width(g, 1.5);
	jgraphics_oval(g, 3.0, 3.0, 13.0, 13.0);
	jgraphics_fill(g);

	jgraphics_set_source_jrgba(g, &s_color_border_button);
	jgraphics_oval(g, 3.0, 3.0, 13.0, 13.0);
	jgraphics_stroke(g);

	middle = 9.0;
	jgraphics_move_to(g, 9.5, middle + 4.0);
	jgraphics_line_to(g, 13.5, middle);
	jgraphics_line_to(g, 5.5, middle);
	jgraphics_close_path(g);
	jgraphics_fill(g);


	// draw the gain knob
	if(x->attr_hasgain){
		long right_side = rect.width - 16.0;

		if(x->attr_hasmix)
			right_side -= 16.0;
		if(x->attr_hasmute)
			right_side -= 16.0;
		if(x->attr_hasbypass)
			right_side -= 16.0;
		if(x->attr_hasfreeze)
			right_side -= 16.0;
		if(x->attr_haspreview)
			right_side -= 16.0;
		if(x->attr_hasinspector)
			right_side -= 16.0;
	
		//if(x->attr_ismuted)
		//	jgraphics_set_source_rgb(g, 0.6, 0.2, 0.2);
		//else
			jgraphics_set_source_jrgba(g, &s_color_background_button);
		
		x->rect_gain.x = right_side;
		x->rect_gain.width = 13.0;
		
		jgraphics_set_line_width(g, 1.5);
		jgraphics_oval(g, right_side, 3.0, 13.0, 13.0);
		jgraphics_fill(g);

		jgraphics_set_source_jrgba(g, &s_color_border_button);
		jgraphics_oval(g, right_side, 3.0, 13.0, 13.0);
		jgraphics_stroke(g);
	}
	
	
	// draw the mix knob
	if(x->attr_hasmix){
		long right_side = rect.width - 16.0;

		if(x->attr_hasmute)
			right_side -= 16.0;
		if(x->attr_hasbypass)
			right_side -= 16.0;
		if(x->attr_hasfreeze)
			right_side -= 16.0;
		if(x->attr_haspreview)
			right_side -= 16.0;
		if(x->attr_hasinspector)
			right_side -= 16.0;
	
		//if(x->attr_ismuted)
		//	jgraphics_set_source_rgb(g, 0.6, 0.2, 0.2);
		//else
			jgraphics_set_source_jrgba(g, &s_color_background_button);
		
		x->rect_mix.x = right_side;
		x->rect_mix.width = 13.0;
		
		jgraphics_set_line_width(g, 1.5);
		jgraphics_oval(g, right_side, 3.0, 13.0, 13.0);
		jgraphics_fill(g);

		jgraphics_set_source_jrgba(g, &s_color_border_button);
		jgraphics_oval(g, right_side, 3.0, 13.0, 13.0);
		jgraphics_stroke(g);
				
	}


	// draw the mute button
	if(x->attr_hasmute){
		long right_side = rect.width - 16.0;

		if(x->attr_hasbypass)
			right_side -= 16.0;
		if(x->attr_hasfreeze)
			right_side -= 16.0;
		if(x->attr_haspreview)
			right_side -= 16.0;
		if(x->attr_hasinspector)
			right_side -= 16.0;
	
		if(x->attr_ismuted)
			jgraphics_set_source_jrgba(g, &s_color_red_button);
		else
			jgraphics_set_source_jrgba(g, &s_color_background_button);
		
		x->rect_mute.x = right_side;
		x->rect_mute.width = 13.0;
		
		jgraphics_set_line_width(g, 1.5);
		jgraphics_oval(g, right_side, 3.0, 13.0, 13.0);
		jgraphics_fill(g);

		jgraphics_set_source_jrgba(g, &s_color_border_button);
		jgraphics_oval(g, right_side, 3.0, 13.0, 13.0);
		jgraphics_stroke(g);
				
		// m
		if(x->attr_ismuted)
			jgraphics_set_source_jrgba(g, &s_color_text_button_on);
		else
			jgraphics_set_source_jrgba(g, &s_color_text_button_off);

		jgraphics_set_line_width(g, 2.0);
		jgraphics_move_to(g, right_side + 2.5, 13.0);
		jgraphics_select_font_face(g, JAMOMA_BUTTON_FONT, JGRAPHICS_FONT_SLANT_NORMAL, JGRAPHICS_FONT_WEIGHT_BOLD);
		jgraphics_set_font_size(g, 7.0);
		jgraphics_show_text(g, "m");
	}

	// draw the bypass button
	if(x->attr_hasbypass){
		long right_side = rect.width - 16.0;

		if(x->attr_hasfreeze)
			right_side -= 16.0;
		if(x->attr_haspreview)
			right_side -= 16.0;
		if(x->attr_hasinspector)
			right_side -= 16.0;
	
		if(x->attr_isbypassed)
			jgraphics_set_source_jrgba(g, &s_color_blue_button);
		else
			jgraphics_set_source_jrgba(g, &s_color_background_button);
		
		x->rect_bypass.x = right_side;
		x->rect_bypass.width = 13.0;
		
		jgraphics_set_line_width(g, 1.5);
		jgraphics_oval(g, right_side, 3.0, 13.0, 13.0);
		jgraphics_fill(g);

		jgraphics_set_source_jrgba(g, &s_color_border_button);
		jgraphics_oval(g, right_side, 3.0, 13.0, 13.0);
		jgraphics_stroke(g);
				
		// b
		if(x->attr_isbypassed)
			jgraphics_set_source_jrgba(g, &s_color_text_button_on);
		else
			jgraphics_set_source_jrgba(g, &s_color_text_button_off);
		jgraphics_set_line_width(g, 2.0);
		jgraphics_move_to(g, right_side + 4.0, 13.0);
		jgraphics_select_font_face(g, JAMOMA_BUTTON_FONT, JGRAPHICS_FONT_SLANT_NORMAL, JGRAPHICS_FONT_WEIGHT_BOLD);
		jgraphics_set_font_size(g, 7.0);
		jgraphics_show_text(g, "b");
	}

	// draw the freeze button
	if(x->attr_hasfreeze){
		long right_side = rect.width - 16.0;

		if(x->attr_haspreview)
			right_side -= 16.0;
		if(x->attr_hasinspector)
			right_side -= 16.0;
	
		if(x->attr_isfrozen)
			jgraphics_set_source_jrgba(g, &s_color_orange_button);
		else
			jgraphics_set_source_jrgba(g, &s_color_background_button);
		
		x->rect_freeze.x = right_side;
		x->rect_freeze.width = 13.0;
		
		jgraphics_set_line_width(g, 1.5);
		jgraphics_oval(g, right_side, 3.0, 13.0, 13.0);
		jgraphics_fill(g);

		jgraphics_set_source_jrgba(g, &s_color_border_button);
		jgraphics_oval(g, right_side, 3.0, 13.0, 13.0);
		jgraphics_stroke(g);
				
		// f
		if(x->attr_isfrozen)
			jgraphics_set_source_jrgba(g, &s_color_text_button_on);
		else
			jgraphics_set_source_jrgba(g, &s_color_text_button_off);
		jgraphics_set_line_width(g, 2.0);
		jgraphics_move_to(g, right_side + 5.0, 13.0);
		jgraphics_select_font_face(g, JAMOMA_BUTTON_FONT, JGRAPHICS_FONT_SLANT_NORMAL, JGRAPHICS_FONT_WEIGHT_BOLD);
		jgraphics_set_font_size(g, 7.0);
		jgraphics_show_text(g, "f");
	}

	// draw the preview button
	if(x->attr_haspreview){
		long right_side = rect.width - 16.0;

		if(x->attr_hasinspector)
			right_side -= 16.0;
	
		if(x->attr_ispreviewing)
			jgraphics_set_source_jrgba(g, &s_color_green_button);
		else
			jgraphics_set_source_jrgba(g, &s_color_background_button);
		
		x->rect_preview.x = right_side;
		x->rect_preview.width = 13.0;
		
		jgraphics_set_line_width(g, 1.5);
		jgraphics_oval(g, right_side, 3.0, 13.0, 13.0);
		jgraphics_fill(g);

		jgraphics_set_source_jrgba(g, &s_color_border_button);
		jgraphics_oval(g, right_side, 3.0, 13.0, 13.0);
		jgraphics_stroke(g);
				
		// p
		if(x->attr_ispreviewing)
			jgraphics_set_source_jrgba(g, &s_color_text_button_on);
		else
			jgraphics_set_source_jrgba(g, &s_color_text_button_off);
		jgraphics_set_line_width(g, 2.0);
		jgraphics_move_to(g, right_side + 4.0, 12.0);
		jgraphics_select_font_face(g, JAMOMA_BUTTON_FONT, JGRAPHICS_FONT_SLANT_NORMAL, JGRAPHICS_FONT_WEIGHT_BOLD);
		jgraphics_set_font_size(g, 7.0);
		jgraphics_show_text(g, "p");
	}

	// draw the info button
	if(x->attr_hasinspector){
		long right_side = rect.width - 16.0;
		
		x->rect_inspector.x = right_side;
		x->rect_inspector.width = 13.0;

		jgraphics_set_source_jrgba(g, &s_color_background_button);
		jgraphics_set_line_width(g, 1.5);
		jgraphics_oval(g, right_side, 3.0, 13.0, 13.0);
		jgraphics_fill(g);

		jgraphics_set_source_jrgba(g, &s_color_border_button);
		jgraphics_oval(g, right_side, 3.0, 13.0, 13.0);
		jgraphics_stroke(g);
				
		// i
		jgraphics_set_source_jrgba(g, &s_color_text_button_off);
		jgraphics_set_line_width(g, 2.0);
		jgraphics_move_to(g, right_side + 5.0, 13.0);
		jgraphics_select_font_face(g, JAMOMA_BUTTON_FONT, JGRAPHICS_FONT_SLANT_NORMAL, JGRAPHICS_FONT_WEIGHT_BOLD);
		jgraphics_set_font_size(g, 7.0);
		jgraphics_show_text(g, "i");
	}
}


void ui_mousedown(t_ui *x, t_object *patcherview, t_pt px, long modifiers)
{
	t_rect rect;
	
	jbox_get_rect_for_view((t_object *)x, patcherview, &rect); 
	if(px.y > 20.0)	// we only handle clicks in the title bar
		return;
	
	if(px.x > (rect.width - 120)){
		// we check the gain and mix knobs first because they are continuous parameters and should run as fast as possible
		if(x->attr_hasgain && px.x >= x->rect_gain.x && px.x <= (x->rect_gain.x + x->rect_gain.width)){
			post("mousedown for gain");
		}
		else if(x->attr_hasmix && px.x >= x->rect_mix.x && px.x <= (x->rect_mix.x + x->rect_mix.width)){
			post("mousedown for mix");
		}
		else if(x->attr_hasinspector && px.x >= x->rect_inspector.x && px.x <= (x->rect_inspector.x + x->rect_inspector.width))
			; // TODO: send the /inspector message to the hub
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
}


/*
void jdial_mousedown(t_jdial *x, t_object *patcherview, t_pt pt, long modifiers)
{
	t_rect rect;
	Point p;
	
	jbox_get_rect_for_view((t_object *)x, patcherview, &rect);

	if (! jdial_is_inside(x, &pt, &rect))
		goto nodragdelta;
	
	p.h = (short)(pt.x+0.5);
	p.v = (short)(pt.y+0.5);
	
	if (x->x_vtracking)
		x->x_prevclick = p; // might only need mousedragdelta to do this
	else {
		Rect r;
		Point center;
		
		qd_TRectToRectZero(&rect,&r);

		center.h = r.left + (r.right-r.left)/2;
		center.v = r.top + (r.bottom-r.top)/2;
		
		x->x_loc = pt;
		x->x_val = DialPtToVal(x, p, center);
	}
	
	//jdial_mouse(x, p);
	jdial_output(x);
	jbox_redraw((t_jbox *)x);
	object_notify(x, ps_modified, NULL);
	
	jbox_set_mousedragdelta((t_object*) x, 1);
	return;
	
nodragdelta:
	jbox_set_mousedragdelta((t_object*) x, 0);	// stop mousedragdelta from happening
	return; 
}
*/


// mousedragdelta sends the amount the mouse moved in t_pt
void ui_mousedragdelta(t_ui *x, t_object *patcherview, t_pt pt, long modifiers)
{
/*	Point p;
	long val;

	x->x_loc.x += pt.x;
	x->x_loc.y += pt.y;	
	p.h = (short)(x->x_loc.x+0.5);
	p.v = (short)(x->x_loc.y+0.5);
	
	if (x->x_vtracking) {
		val = x->x_val - (short)(pt.y+0.5);
		x->x_val = (x->x_clip) ? CLIP(val, 0, x->x_size-1) : (val+x->x_size) % x->x_size;
	}
	else {		
		t_rect rect;
		Rect r;
		Point center;
		
		jbox_get_rect_for_view((t_object *)x, patcherview, &rect);
		qd_TRectToRectZero(&rect,&r);
		center.h = r.left + (r.right-r.left)/2;
		center.v = r.top + (r.bottom-r.top)/2;
		
		// need to eventually implement clip with circular tracking
		x->x_val = DialPtToVal(x, p, center);
	}
	
	//jdial_mouse(x, p);
	jdial_output(x);
	jbox_redraw((t_jbox *)x);
	object_notify(x, ps_modified, NULL);
*/
}


void ui_mouseup(t_ui *x, t_object *patcherview)
{
/*
	t_rect rect;
	t_pt pt;
	double angle, inset;

	jbox_get_rect_for_view((t_object *)x, patcherview, &rect);
	angle = DialValToAngle(x,x->x_val);
	inset = rect.width * .37;
	DialPtFromAngleAmp(x, &rect, &pt, angle, inset);  // edge inset
	
	jmouse_setposition_box(patcherview, (t_object *)x, pt.x, pt.y); // move the cursor at a descent position
*/
}


#pragma mark -
#pragma mark Menus

void ui_menu_do(t_ui *x, t_object *patcherview, t_pt px, long modifiers)
{
	t_jpopupmenu 		*p;
	t_symobject			*item;
	long				size, i;
	int 				selectedId;
	t_jfont 			*font;
	int					coord_x=0, coord_y=0;
	t_pt				pt;

	jbox_set_mousedragdelta((t_object *)x, 0);
	p = jpopupmenu_create();

	font = jfont_create(JAMOMA_MENU_FONT,
						JGRAPHICS_FONT_SLANT_NORMAL,
						JGRAPHICS_FONT_WEIGHT_NORMAL,
						JAMOMA_MENU_FONTSIZE);
	jpopupmenu_setfont(p, font);
	jfont_destroy(font);
	size = linklist_getsize(x->menu_items);
	for(i=0; i<size; i++){
		item = (t_symobject *)linklist_getindex(x->menu_items, i);
		if(!item->sym || (item->sym->s_name[0] == '\0') || item->sym->s_name[0] == '-')//{
			jpopupmenu_addseperator(p);
		else{
			if(item->sym == gensym("Defeat Signal Meters")){
				if(x->attr_metersdefeated)
					jpopupmenu_additem(p, i+1, item->sym->s_name, NULL, 1, 0, NULL);
				else
					jpopupmenu_additem(p, i+1, item->sym->s_name, NULL, 0, item->flags, NULL);
			}
			else
				jpopupmenu_additem(p, i+1, item->sym->s_name, NULL, 0, item->flags, NULL);
		}
	}

	object_method(patcherview, gensym("canvastoscreen"), 0.0, 0.0, &coord_x, &coord_y);	
	coord_x += x->box.b_patching_rect.x;
	coord_y += x->box.b_patching_rect.y;
	pt.x = coord_x;
	pt.y = coord_y;
	selectedId = jpopupmenu_popup(p, pt, x->refmenu_selection+1);
	if(selectedId){
		x->menu_selection = selectedId -1;
		qelem_set(x->menu_qelem);
	}	
	jpopupmenu_destroy(p);
}


void ui_menu_qfn(t_ui *x)
{
	t_symobject *item = (t_symobject *)linklist_getindex(x->menu_items, x->menu_selection);
	
	if(item->sym == gensym("Defeat Signal Meters")){
		if(x->attr_metersdefeated)
			object_attr_setlong(x, gensym("meters_defeated"), 0);
		else
			object_attr_setlong(x, gensym("meters_defeated"), 1);
	}
}


void ui_menu_build(t_ui *x)
{
	t_symobject	*item = NULL;
	int			numPresets = 0;
	int			i;
	
	if(!x->refmenu_items)
		return;

	linklist_clear(x->menu_items);
	
	if(x->attr_hasmeters){
		item = (t_symobject *)symobject_new(gensym("Defeat Signal Meters"));
		linklist_append(x->menu_items, item);
		item = (t_symobject *)symobject_new(gensym("Clear Signal Meters"));
		linklist_append(x->menu_items, item);
		item = (t_symobject *)symobject_new(gensym("-"));
		linklist_append(x->menu_items, item);
	}
	
	item = (t_symobject *)symobject_new(gensym("Load Settings..."));
	linklist_append(x->menu_items, item);
	item = (t_symobject *)symobject_new(gensym("Save Settings..."));
	linklist_append(x->menu_items, item);
	item = (t_symobject *)symobject_new(gensym("Restore Default Settings"));
	linklist_append(x->menu_items, item);
	item = (t_symobject *)symobject_new(gensym("-"));
	linklist_append(x->menu_items, item);
	item = (t_symobject *)symobject_new(gensym("Open Reference Page"));
	linklist_append(x->menu_items, item);
	item = (t_symobject *)symobject_new(gensym("View Internal Components"));
	linklist_append(x->menu_items, item);
	
	numPresets = linklist_getsize(x->presets);
	if(numPresets){
		item = (t_symobject *)symobject_new(gensym("-"));
		linklist_append(x->menu_items, item);
		
		for(i=0; i<numPresets; i++){
			; // TODO: add presets to menu here
		}
	}
}


void ui_refmenu_do(t_ui *x, t_object *patcherview, t_pt px, long modifiers)
{
	t_jpopupmenu 		*p;
	t_symobject			*item;
	long				size, i;
	int 				selectedId;
	t_jfont 			*font;
	int					coord_x=0, coord_y=0;
	t_pt				pt;

	jbox_set_mousedragdelta((t_object *)x, 0);
	p = jpopupmenu_create();

	font = jfont_create(JAMOMA_MENU_FONT,
						JGRAPHICS_FONT_SLANT_NORMAL,
						JGRAPHICS_FONT_WEIGHT_NORMAL,
						JAMOMA_MENU_FONTSIZE);
	jpopupmenu_setfont(p, font);
	jfont_destroy(font);
	size = linklist_getsize(x->refmenu_items);
	for(i=0; i<size; i++){
		item = (t_symobject *)linklist_getindex(x->refmenu_items, i);
		if(!item->sym || (item->sym->s_name[0] == '\0') || item->sym->s_name[0] == '-')//{
			jpopupmenu_addseperator(p);
		else
			jpopupmenu_additem(p, i+1, item->sym->s_name, NULL, 0, item->flags, NULL);
	}

	object_method(patcherview, gensym("canvastoscreen"), 0.0, 0.0, &coord_x, &coord_y);	
	coord_x += x->box.b_patching_rect.x;
	coord_y += x->box.b_patching_rect.y;
	pt.x = coord_x + 20.0;
	pt.y = coord_y;

	selectedId = jpopupmenu_popup(p, pt, x->refmenu_selection+1);
	if(selectedId){
		x->refmenu_selection = selectedId -1;
		qelem_set(x->refmenu_qelem);
	}

	jpopupmenu_destroy(p);
}


void ui_refmenu_qfn(t_ui *x)
{
	t_symobject *item = (t_symobject *)linklist_getindex(x->refmenu_items, x->refmenu_selection);
	item = item;	// silencing a warning
	/*
		TODO: When a menu item is selected here, what we should do is open a dialog with
		the message in it.  When the use clicks 'ok' in the dialog then the message
		should be sent to the module.
	*/
}


void ui_refmenu_build(t_ui *x)
{
	t_symobject	*item = NULL;
	
	if(!x->refmenu_items)
		return;
	
	linklist_clear(x->refmenu_items);
	
	item = (t_symobject *)symobject_new(gensym("Module: jmod.?~"));
	linklist_append(x->refmenu_items, item);
	item->flags = 1;	// mark to disable this item (we use it as a label)

	item = (t_symobject *)symobject_new(gensym("-"));
	linklist_append(x->refmenu_items, item);
	item = (t_symobject *)symobject_new(gensym("Parameters"));
	linklist_append(x->refmenu_items, item);
	item->flags = 1;	// mark to disable this item (we use it as a label)

	item = (t_symobject *)symobject_new(gensym("/foo"));
	linklist_append(x->refmenu_items, item);


	item = (t_symobject *)symobject_new(gensym("-"));
	linklist_append(x->refmenu_items, item);
	item = (t_symobject *)symobject_new(gensym("Messages"));
	linklist_append(x->refmenu_items, item);
	item->flags = 1;	// mark to disable this item (we use it as a label)

	item = (t_symobject *)symobject_new(gensym("/bar"));
	linklist_append(x->refmenu_items, item);


	item = (t_symobject *)symobject_new(gensym("-"));
	linklist_append(x->refmenu_items, item);
	item = (t_symobject *)symobject_new(gensym("Returns"));
	linklist_append(x->refmenu_items, item);
	item->flags = 1;	// mark to disable this item (we use it as a label)

	item = (t_symobject *)symobject_new(gensym("/tjottlanddotte"));
	linklist_append(x->refmenu_items, item);
}


void* ui_oksize(t_ui *x, t_rect *rect)
{
	long		unitHeight = 0;
	long		unitWidth = 0;
	double		unitFrac= 0.0;
	t_object 	*textfield = NULL;
		
	unitHeight = rect->height / JAMOMA_UNIT_HEIGHT;
	unitFrac = rect->height - (unitHeight * JAMOMA_UNIT_HEIGHT);
	if(unitFrac > (JAMOMA_UNIT_HEIGHT/2))
		unitHeight += 1;	
	if(unitHeight < 1)
		unitHeight = 1;
	rect->height = unitHeight * JAMOMA_UNIT_HEIGHT;

	unitWidth = rect->width / JAMOMA_UNIT_WIDTH;
	unitFrac = rect->width - (unitWidth * JAMOMA_UNIT_WIDTH);
	if(unitFrac > (JAMOMA_UNIT_WIDTH/2))
		unitWidth += 1;
	if(unitWidth < 1)
		unitWidth = 1;
	rect->width = unitWidth * JAMOMA_UNIT_WIDTH;

	// We do textfield configuration here because the margins are dependent upon the dimensions
	textfield = jbox_get_textfield((t_object*) x); 
	textfield_set_noactivate(textfield, 1);
	textfield_set_readonly(textfield, 1);
	textfield_set_editonclick(textfield, 0);
	textfield_set_wordwrap(textfield, 0);
	textfield_set_useellipsis(textfield, 1); 
	textfield_set_textcolor(textfield, &s_color_text);
	textfield_set_textmargins(textfield, 20.0, 2.0, 60.0, rect->height - 19.0);

	return (void *)1;
}
