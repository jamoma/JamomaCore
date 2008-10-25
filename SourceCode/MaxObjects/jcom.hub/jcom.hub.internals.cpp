/* 
 * jcom.hub - internals
 * manage internal objects that are hosted within the hub for a module
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "jcom.hub.h"


class hubInternalObject {
	private:
	t_object	*theObject;
	
	public:
	method		action;
	
	hubInternalObject(char *classname, char *subscribername, char *subscribertype, char *ramptype, char *description, long repetitions)
	{
		t_atom		a[9];
	
		theObject = NULL;
		action = NULL;
		atom_setsym(a+0, gensym(subscribername));
		atom_setsym(a+1, gensym("@type"));
		atom_setsym(a+2, gensym(subscribertype));
		atom_setsym(a+3, gensym("@ramp/drive"));
		atom_setsym(a+4, gensym(ramptype));
		atom_setsym(a+5, gensym("@description"));
		atom_setsym(a+6, gensym(description));
		atom_setsym(a+7, gensym("@repetitions/allow"));
		atom_setlong(a+8, repetitions);
		jcom_core_loadextern(gensym(classname), 9, a, &theObject);
	}
	
	~hubInternalObject()
	{
		object_free(theObject);
	}
};


void hub_internals_create(t_hub *x)
{
	hubInternalObject	*anObject;

	x->hash_internals = hashtab_new(0);

	anObject = new hubInternalObject("jcom.message", 	"init",						"msg_none",		"none",	"Initialize a module completely to the original state.", 1);
	anObject->action = (method)hub_init;
	hashtab_store(x->hash_internals, gensym("init"), (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"documentation/generate",	"msg_generic",	"none",	"Generate a documentation page for this module and save it to disk.", 1);
	anObject->action = (method)hub_autodoc;
	hashtab_store(x->hash_internals, gensym("documentation/generate"), (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"module/view_internals",	"msg_none",		"none",	"Attempts to open the internal algorithm for viewing.  This works for most modules.  Some modules may choose to cloak the algorithms - preventing this message from functioning.", 1);
	anObject->action = (method)hub_module_view_alg;
	hashtab_store(x->hash_internals, gensym("module/view_internals"), (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"preset/read",				"msg_symbol",	"none",	"Open an xml-preset file and recall the first preset in that file.  An optional argument defines the file to open.", 1);
	anObject->action = (method)hub_preset_read;
	hashtab_store(x->hash_internals, gensym("preset/read"), (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"preset/write",				"msg_symbol",	"none",	"Write an xml-preset file to disk.  An optional argument defines the file to open.", 1);
	anObject->action = (method)hub_preset_write;
	hashtab_store(x->hash_internals, gensym("preset/write"), (t_object*)anObject);

//	anObject = new hubInternalObject("jcom.message", 	"preset/writeagain",		"msg_symbol",	"none",	"Write on same xml-preset file.", 1);
//	anObject->action = (method)hub_preset_write_again;
//	hashtab_store(x->hash_internals, gensym("preset/writeagain"), (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"preset/recall",			"msg_generic",	"none",	"Recall a preset by number - you can also choose presets from the module menu.", 1);
	anObject->action = (method)hub_preset_recall;
	hashtab_store(x->hash_internals, gensym("preset/recall"), (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"preset/copy",				"msg_list",		"none",	"Create a new preset (2nd argument) by copying the contents of another preset (1st argument)", 1);
	anObject->action = (method)hub_preset_copy;
	hashtab_store(x->hash_internals, gensym("preset/copy"), (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"preset/store",				"msg_list",		"none",	"Store a preset by number in memory.  All presets present in memory will be written to disk when you send a save_settings message to the module.", 1);
	anObject->action = (method)hub_preset_store;
	hashtab_store(x->hash_internals, gensym("preset/store"), (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"preset/storenext",			"msg_list",		"none",	"Store a preset in the next preset slot.  Handy so that you do not need to specify a preset number manually.", 1);
	anObject->action = (method)hub_preset_store_next;
	hashtab_store(x->hash_internals, gensym("preset/storenext"), (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"preset/interpolate",		"msg_list",		"none",	"Interpolate between two named presets (argument 1 and 2) using a ratio (float in the range [0.0, 1.0]) specified as the third argument.", 0);
	anObject->action = (method)hub_preset_interpolate;
	hashtab_store(x->hash_internals, gensym("preset/interpolate"), (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"preset/default",			"msg_none",		"none",	"Open the default preset file and recall the first preset in that file.", 1);
	anObject->action = (method)hub_preset_default;
	hashtab_store(x->hash_internals, gensym("preset/default"), (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"preset/clear",				"msg_none",		"none",	"Clears all presets, providing a blank slate for saving new presets.", 1);
	anObject->action = (method)hub_presets_clear;
	hashtab_store(x->hash_internals, gensym("preset/clear"), (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"preset/dump",				"msg_none",		"none",	"Dump all preset names.", 1);
	anObject->action = (method)hub_presets_dump;
	hashtab_store(x->hash_internals, gensym("preset/dump"), (t_object*)anObject);
	
	anObject = new hubInternalObject("jcom.message", 	"preset/post",				"msg_none",		"none",	"Post all presets to the Max window.", 1);
	anObject->action = (method)hub_presets_post;
	hashtab_store(x->hash_internals, gensym("preset/post"), (t_object*)anObject);

	anObject = new hubInternalObject("jcom.parameter",	"ui/freeze",				"msg_toggle",	"none",	"Turn off the updating of user interface elements when parameters change.  This may be done to conserve CPU resources.", 0);
	anObject->action = (method)hub_ui_freeze;
	hashtab_store(x->hash_internals, gensym("ui/freeze"), (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"ui/refresh",				"msg_none",		"none",	"Update displayed values for module to reflect current state.", 1);
	anObject->action = (method)hub_ui_refresh;
	hashtab_store(x->hash_internals, gensym("ui/refresh"), (t_object*)anObject);

	// TODO: Make the creation of this message dependent on the attribute to the hub
	anObject = new hubInternalObject("jcom.message", 	"panel/open",				"msg_none",		"none",	"Open an a module's control panel (inspector) if one is present.", 1);
	hashtab_store(x->hash_internals, gensym("panel/open"), (t_object*)anObject);	
}


void hub_internals_destroy(t_hub *x)
{
	long				i;
	long				numKeys = 0;
	t_symbol			**keys = NULL;
	hubInternalObject	*anObject;
	t_max_err			err;
	
	hashtab_getkeys(x->hash_internals, &numKeys, &keys);
	for(i=0; i<numKeys; i++){
		err = hashtab_lookup(x->hash_internals, keys[i], (t_object**)&anObject);
		if(!err)
			delete anObject;
	}
	
	if(keys)
		sysmem_freeptr(keys);
		
	hashtab_chuck(x->hash_internals);
}


void hub_internals_dispatch(t_hub *x, t_symbol *osc_name, long argc, t_atom *argv)
{
	hubInternalObject	*theObject;
	t_max_err			err;
	
	err = hashtab_lookup(x->hash_internals, osc_name, (t_object**)&theObject);
	if(!err){
		if(theObject->action)
			theObject->action(x, osc_name, argc, argv);
	}
}

