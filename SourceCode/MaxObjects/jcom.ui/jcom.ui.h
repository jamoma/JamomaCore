/* 
 * jcom.ui
 * External for Jamoma: provide standard user interface component for modules
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ext.h"
#include "ext_obex.h"
#include "ext_user.h"
#include "ext_common.h"
#include "jpatcher_api.h"			// jpatcher_api.h must come before z_dsp.h (in Jamoma.h)
#include "jgraphics.h"
#include "Jamoma.h"
#include "ext_symobject.h"


// members
typedef struct _ui{
	t_jbox				box;
	void				*outlet;				///< outlet -- used for sending preview to jit.pwindow
	t_hashtab			*hash_internals;		///< hash table of internal jcom.parameter and jcom.message instances
	t_object			*obj_remote;			///< the internal jcom.remote instance that communicates with the hub

	t_jrgba				bgcolor;
	t_jrgba				bordercolor;
	t_jrgba				headercolor;
	t_jrgba				textcolor;
	
	t_jpopupmenu		*menu;					// module menu
	void				*menu_qelem;			// ...
	long				menu_selection;			// ...
	t_linklist			*menu_items;			// ...

	t_jpopupmenu		*refmenu;				// reference menu
	void				*refmenu_qelem;			// ...
	long				refmenu_selection;		// ...
	t_linklist			*refmenu_items;			// ...
	
//	t_linklist			*presets;				// list of presets as symobjects (flags=index, name=name)
	
	long				attr_hasinspector;
	t_rect				rect_inspector;

	long				attr_hasmeters;			// has_meters is different in that it is the number of meters, not just a toggle
	long				attr_metersdefeated;
	t_rect				rect_meters;

	long				attr_hasmute;
	long				attr_ismuted;
	t_rect				rect_mute;

	long				attr_hasbypass;
	long				attr_isbypassed;
	t_rect				rect_bypass;

	long				attr_hasfreeze;
	long				attr_isfrozen;
	t_rect				rect_freeze;

	long				attr_haspreview;
	long				attr_ispreviewing;
	t_rect				rect_preview;

	long				attr_hasgain;
	float				attr_gain;
	t_rect				rect_gain;
	bool				gainDragging;
	
	long				attr_hasmix;
	float				attr_mix;
	t_rect				rect_mix;
	bool				mixDragging;

	t_symbol			*attr_modulename;
	t_symbol			*attrModuleClass;
	
	t_symbol			*attrPrefix;
	long				attr_ui_freeze;
	
	t_pt				anchor;				// used for dragging the dials
	float				anchorValue;		//	...
} t_ui;


// prototypes: general
t_ui*		ui_new(t_symbol *s, long argc, t_atom *argv);
void 		ui_free(t_ui *x);
void 		ui_notify(t_ui *x, t_symbol *s, t_symbol *msg, void *sender, void *data);
void		ui_remote_callback(t_ui *x, t_symbol *s, long argc, t_atom* argv);
void 		ui_bang(t_ui *x);
// prototypes: drawing/ui
void 		ui_paint(t_ui *x, t_object *view);
void 		ui_mousedown(t_ui *x, t_object *patcherview, t_pt pt, long modifiers);
void		ui_mousedragdelta(t_ui *x, t_object *patcherview, t_pt pt, long modifiers);
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
void		ui_internals_destroy(t_ui *x);
t_max_err	attr_set_mute(t_ui *obj, void *attr, long argc, t_atom *argv);
t_max_err	attr_set_bypass(t_ui *obj, void *attr, long argc, t_atom *argv);
t_max_err	attr_set_mix(t_ui *obj, void *attr, long argc, t_atom *argv);
t_max_err	attr_set_gain(t_ui *obj, void *attr, long argc, t_atom *argv);
void setGainDataspaceUnit(t_ui* obj, t_symbol* unit);
t_max_err	attr_set_freeze(t_ui *obj, void *attr, long argc, t_atom *argv);
t_max_err	attr_set_preview(t_ui *obj, void *attr, long argc, t_atom *argv);
t_max_err	attr_set_hasmute(t_ui *obj, void *attr, long argc, t_atom *argv);
t_max_err	attr_set_hasbypass(t_ui *obj, void *attr, long argc, t_atom *argv);
t_max_err	attr_set_hasmix(t_ui *obj, void *attr, long argc, t_atom *argv);
t_max_err	attr_set_hasgain(t_ui *obj, void *attr, long argc, t_atom *argv);
t_max_err	attr_set_hasfreeze(t_ui *obj, void *attr, long argc, t_atom *argv);
t_max_err	attr_set_haspreview(t_ui *obj, void *attr, long argc, t_atom *argv);
t_max_err	attr_set_prefix(t_ui *obj, void *attr, long argc, t_atom *argv);
