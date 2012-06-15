/* 
 * jcom.hub - internals
 * manage internal objects that are hosted within the hub for a module
 * By Tim Place, Copyright � 2007
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "jcom.hub.h"


class hubInternalObject {
	private:
	t_object	*theObject;
	
	public:
	//method		action;
	
	hubInternalObject(char *classname, char *subscribername, ObjectPtr patcher, char *subscribertype, char *ramptype, char *description, long repetitions)
	{
		t_atom		a[10];
	
		theObject = NULL;
//		action = NULL;
		atom_setsym(a+0, gensym(subscribername));
		atom_setobj(a+1, patcher);
		atom_setsym(a+2, gensym("@type"));
		atom_setsym(a+3, gensym(subscribertype));
		atom_setsym(a+4, gensym("@ramp/drive"));
		atom_setsym(a+5, gensym(ramptype));
		atom_setsym(a+6, gensym("@description"));
		atom_setsym(a+7, gensym(description));
		atom_setsym(a+8, gensym("@repetitions/allow"));
		atom_setlong(a+9, repetitions);
		jcom_core_loadextern(gensym(classname), 10, a, &theObject);
	}
	
	~hubInternalObject()
	{
		object_free(theObject);
	}
	
	
	void setAction(method aCallback, t_object *aCallbackArg)
	{
		if (theObject)
			object_method(theObject, gensym("setcallback"), aCallback, aCallbackArg);
	}
	
};


void hub_internals_create(t_hub *x)
{
	hubInternalObject	*anObject;

	x->hash_internals = hashtab_new(0);

	anObject = new hubInternalObject("jcom.message", 	"init",						x->container,	"none",		"none",	"Initialize a module completely to the original state.", 1);
	anObject->setAction((method)hub_init, (t_object*)x);
	hashtab_store(x->hash_internals, gensym("init"), (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"documentation/generate",	x->container,	"generic",	"none",	"Generate a html documentation page for this module and save it to disk. The argument 'tex' creates a Latex document.", 1);
	anObject->setAction((method)hub_autodoc, (t_object*)x);
	hashtab_store(x->hash_internals, gensym("documentation/generate"), (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"view/internals",	x->container,	"none",		"none",	"Attempts to open the internal algorithm for viewing.  This works for most modules.  Some modules may choose to cloak the algorithms - preventing this message from functioning.", 1);
	anObject->setAction((method)hub_module_view_alg, (t_object*)x);
	hashtab_store(x->hash_internals, jps_ui_slash_internals, (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"preset/read",				x->container,	"generic",	"none",	"Open an xml-preset file and recall the first preset in that file.  An optional argument defines the file to open.", 1);
	anObject->setAction((method)hub_preset_read, (t_object*)x);
	hashtab_store(x->hash_internals, gensym("preset/read"), (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"preset/write",				x->container,	"generic",	"none",	"Write an xml-preset file to disk.  An optional argument defines the file to open.", 1);
	anObject->setAction((method)hub_preset_write, (t_object*)x);
	hashtab_store(x->hash_internals, jps_preset_slash_write, (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"preset/writeagain",		x->container,	"none",		"none",	"Write on same xml-preset file.", 1);
	anObject->setAction((method)hub_preset_write_again, (t_object*)x);
	hashtab_store(x->hash_internals, jps_preset_slash_writeagain, (t_object*)anObject); 

	anObject = new hubInternalObject("jcom.message", 	"preset/recall",			x->container,	"generic",	"none",	"Recall a preset by number - you can also choose presets from the module menu.", 1);
	anObject->setAction((method)hub_preset_recall, (t_object*)x);
	hashtab_store(x->hash_internals, gensym("preset/recall"), (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"preset/copy",				x->container,	"array",		"none",	"Create a new preset (2nd argument) by copying the contents of another preset (1st argument)", 1);
	anObject->setAction((method)hub_preset_copy, (t_object*)x);
	hashtab_store(x->hash_internals, gensym("preset/copy"), (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"preset/store",				x->container,	"array",		"none",	"Store a preset by number in memory.  All presets present in memory will be written to disk when you send a /preset/write message to the module.", 1);
	anObject->setAction((method)hub_preset_store, (t_object*)x);
	hashtab_store(x->hash_internals, gensym("preset/store"), (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"preset/storenext",			x->container,	"none",		"none",	"Store a preset in the next preset slot.  Handy so that you do not need to specify a preset number manually.", 1);
	anObject->setAction((method)hub_preset_store_next, (t_object*)x);
	hashtab_store(x->hash_internals, gensym("preset/storenext"), (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"preset/storecurrent",		x->container,	"none",		"none",	"Store on the last recalled or stored preset", 1);
	anObject->setAction((method)hub_preset_store_current, (t_object*)x);
	hashtab_store(x->hash_internals, gensym("preset/storecurrent"), (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"preset/interpolate",		x->container,	"array",		"none",	"Interpolate between two named presets (argument 1 and 2) using a ratio (float in the range [0.0, 1.0]) specified as the third argument.", 0);
	anObject->setAction((method)hub_preset_interpolate, (t_object*)x);
	hashtab_store(x->hash_internals, jps_preset_slash_interpolate, (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"preset/mix",			x->container,	"array",		"none",	"Mix list of pairs of (preset name, mix value) using a ratio (float).", 0);
	anObject->setAction((method)hub_preset_mix, (t_object*)x);
	hashtab_store(x->hash_internals, jps_preset_slash_mix, (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"preset/default",			x->container,	"none",		"none",	"Open the default preset file and recall the first preset in that file.", 1);
	anObject->setAction((method)hub_preset_default, (t_object*)x);
	hashtab_store(x->hash_internals, jps_preset_slash_default, (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"preset/clear",				x->container,	"none",		"none",	"Clears all presets, providing a blank slate for saving new presets.", 1);
	anObject->setAction((method)hub_presets_clear, (t_object*)x);
	hashtab_store(x->hash_internals, gensym("preset/clear"), (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"preset/dump",				x->container,	"none",		"none",	"Dump all preset names.", 1);
	anObject->setAction((method)hub_presets_dump, (t_object*)x);
	hashtab_store(x->hash_internals, gensym("preset/dump"), (t_object*)anObject);
	
	anObject = new hubInternalObject("jcom.message", 	"preset/post",				x->container,	"none",		"none",	"Post all presets to the Max window.", 1);
	anObject->setAction((method)hub_presets_post, (t_object*)x);
	hashtab_store(x->hash_internals, gensym("preset/post"), (t_object*)anObject);

	anObject = new hubInternalObject("jcom.parameter",	"view/freeze",				x->container,	"boolean",	"none",	"Turn off the updating of user interface elements when parameters change.  This may be done to conserve CPU resources.", 0);
	anObject->setAction((method)hub_ui_freeze, (t_object*)x);
	hashtab_store(x->hash_internals, jps_ui_slash_freeze, (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"view/refresh",				x->container,	"none",		"none",	"Update displayed values for module to reflect current state.", 1);
	anObject->setAction((method)hub_ui_refresh, (t_object*)x);
	hashtab_store(x->hash_internals, jps_ui_slash_refresh, (t_object*)anObject);

	anObject = new hubInternalObject("jcom.message", 	"view/script",					x->container,	"generic",	"none",	"Low-level module hacking.  Any arguments arguments to this message will be interpreted as patcher scripting for the top-level patcher of the module.", 1);
	anObject->setAction((method)hub_script, (t_object*)x);
	hashtab_store(x->hash_internals, gensym("script"), (t_object*)anObject);
}


void hub_internals_destroy(t_hub *x)
{
	long				i;
	long				numKeys = 0;
	t_symbol			**keys = NULL;
	hubInternalObject	*anObject;
	t_max_err			err;
	
	hashtab_getkeys(x->hash_internals, &numKeys, &keys);
	for (i=0; i<numKeys; i++) {
		err = hashtab_lookup(x->hash_internals, keys[i], (t_object**)&anObject);
		if (!err)
			delete anObject;
	}
	
	if (keys)
		sysmem_freeptr(keys);
		
	hashtab_chuck(x->hash_internals);
}

/*
void hub_internals_dispatch(t_hub *x, t_symbol *osc_alias, long argc, t_atom *argv)
{
	hubInternalObject	*theObject;
	t_max_err			err;
	
	err = hashtab_lookup(x->hash_internals, osc_alias, (t_object**)&theObject);
	if (!err) {
		if (theObject->action)
			theObject->action(x, osc_alias, argc, argv);
	}
}
*/
