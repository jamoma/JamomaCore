/** 
 * \file jcom.ui.h
 * External for Jamoma: provide standard user interface component for modules
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "ext.h"
#include "ext_obex.h"
#include "ext_user.h"
#include "ext_common.h"
#include "jpatcher_api.h"			// jpatcher_api.h must come before z_dsp.h (in Jamoma.h)
#include "jgraphics.h"
#include "Jamoma.h"
#include "ext_symobject.h"
#include "TTBase.h"

/*
t_symbol	*ps_color_none,
			*ps_color_black,
			*ps_color_white,
			*ps_color_red,
			*ps_color_orange,
			*ps_color_yellow,
			*ps_color_chartreuseGreen,
			*ps_color_green,
			*ps_color_springGreen,
			*ps_color_cyan,
			*ps_color_azure,
			*ps_color_blue,
			*ps_color_violet,
			*ps_color_magenta,
			*ps_color_rose;
*/

// members
typedef struct _ui{
	t_jbox				box;
	void				*outlet;				///< outlet -- used for sending preview to jit.pwindow
	t_hashtab			*hash_internals;		///< hash table of internal jcom.parameter and jcom.message instances
	t_object			*obj_remote;			///< the internal jcom.remote instance that communicates with the hub

	t_jrgba				bgcolor;				///< The background color of the main part of the widget.
	t_jrgba				bordercolor;			///< The color of widget borders etc. 
	t_jrgba				headercolor;			///< Background color of the toolbar at the top of the widget.
	t_jrgba				textcolor;				///< Color of text used to display various information in the widget.
	t_symbol			*highlightcolor;		///< Highlight the module by giving it a color tint (e.g. red or green).
	t_jrgba				highlightcolorRGB;		///< Highlight color as RGB.
	
	t_jpopupmenu		*menu;					///< Pointer to the module menu
	void				*menu_qelem;			// ...
	long				menu_selection;			// ...
	t_linklist			*menu_items;			// ...

	t_jpopupmenu		*refmenu;				///< Pointer to the reference menu
	void				*refmenu_qelem;			// ...
	long				refmenu_selection;		// ...
	t_linklist			*refmenu_items;			// ...
	
//	t_linklist			*presets;				// list of presets as symobjects (flags=index, name=name)
	
	long				attr_hasinspector;		///< Flag for adding a panel button to the toolbar of the widget.
	t_rect				rect_inspector;			///< The rectangle of the Panel button.

/*	long				attr_hasmeters;			///< has_meters is different in that it is the number of meters, not just a toggle
	long				attr_metersdefeated;	///< Flag indicating if meters are currently defeated, or in other words not updating displayed values.
	t_rect				rect_meters;*/

	long				attr_hasmute;			///< Flag for adding a mute toggle to the toolbar of the widget.
	long				attr_ismuted;			///< Flag indicating if processing is currently set to be muted.
	t_rect				rect_mute;				///< The rectangle of the mute toggle.

	long				attr_hasbypass;			///< Flag for adding a bypass toggle to the toolbar of the widget.
	long				attr_isbypassed;		///< Flag indicating if processing is currently set to be bypassed.
	t_rect				rect_bypass;			///< The rectangle of the bypass toggle.

	long				attr_hasfreeze;			///< Flag for adding a freeze toggle to the toolbar of the widget.
	long				attr_isfrozen;
	t_rect				rect_freeze;			///< The rectangle of the freeze toggle.

	long				attr_haspreview;		///< Flag for adding a preview toggle to the toolbar of the widget.
	long				attr_ispreviewing;		///< Flag indicating if previewing is currently enabled.
	t_rect				rect_preview;			///< The rectangle of the preview toggle.

	long				attr_hasgain;			///< Flag for adding a gain dial to the toolbar of the widget.
	float				attr_gain;				///< The gain attribute. This will be linked to a jcom.parameter object internal to the jcom.out~ object of the module.
	t_rect				rect_gain;				///< The rectangle of the gain dial.
	bool				gainDragging;			///< Flag indicating of the gain dial is currently being dragged.
	
	long				attr_hasmix;			///< Flag for adding a mix dial to the toolbar of the widget.
	float				attr_mix;				///< The mix attribute. This will be linked to a jcom.parameter object internal to the jcom.out~ object of the module.
	t_rect				rect_mix;				///< The rectangle of the mix dial.
	bool				mixDragging;			///< Flag indicating of the mix dial is currently being dragged.

	t_symbol			*attr_modulename;
	t_symbol			*attrModuleClass;
	
	t_symbol			*attrPrefix;
	long				attr_ui_freeze;
	
	t_pt				anchor;				// used for dragging the dials
	float				anchorValue;		//	...
} t_ui;



// prototypes: general

/**
 Object creation.
 */
t_ui*		ui_new(t_symbol *s, long argc, t_atom *argv);

/** 
 Destructor - called when the object is freed.
 */
void 		ui_free(t_ui *x);


t_max_err	ui_notify(t_ui *x, t_symbol *s, t_symbol *msg, void *sender, void *data);
void		ui_subscribe(t_ui *x);
void		ui_remote_callback(t_ui *x, t_symbol *s, long argc, t_atom* argv);


void 		ui_bang(t_ui *x);

// prototypes: drawing/ui

/**
 Redraw the widget.
 */
void 		ui_paint(t_ui *x, t_object *view);

/**
 This method is called in case of mousedown over the widget.
 */
void 		ui_mousedown(t_ui *x, t_object *patcherview, t_pt pt, long modifiers);

/**
 This method is called when the mouse is dragged.
 */
void		ui_mousedragdelta(t_ui *x, t_object *patcherview, t_pt pt, long modifiers);

/**
 This method is called at mouseup.
 */
void		ui_mouseup(t_ui *x, t_object *patcherview);

void*		ui_oksize(t_ui *x, t_rect *rect);
// prototypes: menus
void		ui_menu_do(t_ui *x, t_object *patcherview, t_pt px, long modifiers);
void 		ui_menu_qfn(t_ui *x);
void 		ui_menu_build(t_ui *x);
void		ui_refmenu_do(t_ui *x, t_object *patcherview, t_pt px, long modifiers);
void 		ui_refmenu_qfn(t_ui *x);
void 		ui_refmenu_build(t_ui *x);


// prototypes: internal parameters

/**
 Create internal jcom.parameter and jcom.message objects addressing the colors of jcom.ui. 
 */
void		ui_internals_createColors(t_ui* obj);

/** Free up internal objects when the object is destroyed.
 */
void		ui_internals_destroy(t_ui *x);


/**
 Set the highlightcolor attribute.
 */
t_max_err	attr_set_highlightcolor(t_ui *x, void *attr, long ac, t_atom *av);

/**
 Set the mute attribute.
 */
t_max_err	attr_set_mute(t_ui *obj, void *attr, long argc, t_atom *argv);

/** set the bypass attribute.
 */
t_max_err	attr_set_bypass(t_ui *obj, void *attr, long argc, t_atom *argv);

/**
 Set the mix attribute.
 */
t_max_err	attr_set_mix(t_ui *obj, void *attr, long argc, t_atom *argv);

/**
 Set the gain attribute.
 */
t_max_err	attr_set_gain(t_ui *obj, void *attr, long argc, t_atom *argv);

/** 
 Set the dataspace unit to use for the gain attribute.
 */
void setGainDataspaceUnit(t_ui* obj, t_symbol* unit);

/**
 Set the freeze attribute.
 */
t_max_err	attr_set_freeze(t_ui *obj, void *attr, long argc, t_atom *argv);

/**
 Set the preview attribute.
 */
t_max_err	attr_set_preview(t_ui *obj, void *attr, long argc, t_atom *argv);

/**
 Set the has_mute attribute. This controls whether a mute toggle will show up in the jcom.ui widget.
 */
t_max_err	attr_set_hasmute(t_ui *obj, void *attr, long argc, t_atom *argv);

/**
 Set the has_inspector attribute. This controls whether a panel button will show up in the jcom.ui widget.
 */
t_max_err	attr_set_hasinspector(t_ui *obj, void *attr, long argc, t_atom *argv);

/**
 Set the has_bypass attribute. This controls whether a bypass toggle will show up in the jcom.ui widget.
 */
t_max_err	attr_set_hasbypass(t_ui *obj, void *attr, long argc, t_atom *argv);


/**
 Set the has_mix attribute. This controls whether a mix dial will show up in the jcom.ui widget.
 */
t_max_err	attr_set_hasmix(t_ui *obj, void *attr, long argc, t_atom *argv);


/**
 Set the has_gain attribute. This controls whether a gain dial will show up in the jcom.ui widget.
 */
t_max_err	attr_set_hasgain(t_ui *obj, void *attr, long argc, t_atom *argv);

/**
 Set the has_freeze attribute. This controls whether a freeze toggle will show up in the jcom.ui widget.
 */
t_max_err	attr_set_hasfreeze(t_ui *obj, void *attr, long argc, t_atom *argv);

/**
 Set the has_preview attribute. This controls whether a preview toggle will show up in the jcom.ui widget.
 */
t_max_err	attr_set_haspreview(t_ui *obj, void *attr, long argc, t_atom *argv);

/**
 This is a general setter method for all attributes that can have an OSC address prefix. This will add a prefix to the OSC address of various parameters including gain, mix, bypass, etc. E.g. an "audio" prefix will result in OSC addresses such as /audio/gain, /audio/mix, /audio/mute, etc.
 */
t_max_err	attr_set_prefix(t_ui *obj, void *attr, long argc, t_atom *argv);



class uiInternalObject {
public:
	t_object	*theObject;
	//method		action;
	
	uiInternalObject(char *classname, char *subscribername, ObjectPtr patcher, char *subscribertype, char *ramptype, char *description, float *rangebounds, char *dataspace, char *activeUnit, char *defaultValue)
	{
		t_atom	a[20];
		int		i=0;
		
		theObject = NULL;
		atom_setsym(a+(i++), gensym(subscribername));
		atom_setobj(a+(i++), patcher);
		atom_setsym(a+(i++), gensym("@type"));
		atom_setsym(a+(i++), gensym(subscribertype));
		atom_setsym(a+(i++), gensym("@ramp/drive"));
		atom_setsym(a+(i++), gensym(ramptype));
		atom_setsym(a+(i++), gensym("@description"));
		atom_setsym(a+(i++), gensym(description));
		if (rangebounds) {
			atom_setsym(a+(i++), gensym("@range/bounds"));
			atom_setfloat(a+(i++), rangebounds[0]);	
			atom_setfloat(a+(i++), rangebounds[1]);	
		}	
		if (dataspace && activeUnit) {
			atom_setsym(a+(i++), gensym("@dataspace"));
			atom_setsym(a+(i++), gensym(dataspace));
			atom_setsym(a+(i++), gensym("@dataspace/unit"));
			atom_setsym(a+(i++), gensym(activeUnit));
		}
		if (defaultValue) {
			atom_setsym(a+(i++), gensym("@value/default"));
			atom_setsym(a+(i++), gensym(defaultValue));
		}
		
		jcom_core_loadextern(gensym(classname), i, a, &theObject);
	}
	
	~uiInternalObject()
	{
		if (theObject)
			object_free(theObject);
	}
	
	void setAction(method aCallback, t_object *aCallbackArg)
	{
		if (theObject)
			object_method(theObject, gensym("setcallback"), aCallback, aCallbackArg);
	}
	
	void setName(char* newName)
	{
		if (theObject)
			object_attr_setsym(theObject, _sym_name, gensym(newName));
	}
	
	void setReadonly(bool value)
	{
		if (theObject)
			object_attr_setlong(theObject, _sym_readonly, value);
	}

	void setValue(AtomCount ac, AtomPtr av)
	{
		if (theObject)
			object_attr_setvalueof(theObject, _sym_value, ac, av);
	}
};

