/* 
 * jcom.hub - internals
 * manage internal objects that are hosted within the hub for a module
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "jcom.hub.h"

#ifdef CREATE_INTERNALS

void hub_internals_createone(t_hub *x, char *classname, char *subscribername, char *subscribertype, char *ramptype)
{
	t_object	*obj = NULL;
	t_atom		a[5];
	
	atom_setsym(a+0, gensym(subscribername));
	atom_setsym(a+1, gensym("@type"));
	atom_setsym(a+2, gensym(subscribertype));
	atom_setsym(a+3, gensym("@ramp"));
	atom_setsym(a+4, gensym(ramptype));
	jcom_core_loadextern(gensym(classname), 5, a, &obj);
//	obj = (t_object *)object_register(CLASS_BOX, symbol_unique(), obj);			// register the class so we can attach to it
	linklist_append(x->ll_internals, obj);							// keep track of all our internals using a linklist
//	object_attach_byptr(x, obj);									// listen to the object (will send us info through our "notify" method)
}


void hub_internals_create(t_hub *x)
{
	
	x->ll_internals = linklist_new();

	hub_internals_createone(x, "jcom.parameter", "testparam", "msg_float", "linear.sched");


/*
	// CURRENTLY A PROBLEM WITH PARAMETERS: pattr cannot find it's box from inside of here...


	// EXCEPT FOR THE ui/freeze WHICH IS USED TO SET THE MENU (i think)
	// ALL OF THE MESSAGES TO THE HUB FOR THESE ARE HANDLED MANUALLY IN THE HUB
	// THESE ARE HERE FOR DOCUMENTATION PURPOSES ONLY
	// WE SHOULD CHAN?GE THAT AND MAKE THEM FUNCTIONAL FOR RECEIVING MESSAGES AND THEN LISTEN TO THEM


	/// THESE ARE IN THE GUI CURRENTLY:

	hub_internals_createone(x, "jcom.message", 	"preset/post",	 			@type msg_none @description "Post all presets to the Max window.";
	hub_internals_createone(x, "jcom.message", 	"ui/refresh",	 			@type msg_none @description "Update displayed values for module to reflect current state.";

	/// THIS ONE WE CURRENTLY LISTEN TO (2nd outlet) TO UPDATE THE MODULE MENU
	hub_internals_createone(x, "jcom.parameter","ui/freeze",				@type msg_toggle @repetitions 0 @description "Turn off the updating of user interface elements when parameters change.  This may be done to conserve CPU resources.";

	hub_internals_createone(x, "jcom.message", 	"module/view_internals",	@type msg_none @description "Attempts to open the internal algorithm for viewing.  This works for most modules.  Some modules may choose to cloak the algorithms - preventing this message from functioning.";
	hub_internals_createone(x, "jcom.message", 	"preset/default",			@type msg_none @description "Open the default preset file and recall the first preset in that file.";
	hub_internals_createone(x, "jcom.message", 	"preset/write",				@type msg_symbol @description "Write an xml-preset file to disk.  An optional argument defines the file to open.";
	hub_internals_createone(x, "jcom.message", 	"preset/read",				@type msg_symbol @description "Open an xml-preset file and recall the first preset in that file.  An optional argument defines the file to open.";
	hub_internals_createone(x, "jcom.message", 	"preset/recall",			@type msg_float @description "Recall a preset by number - you can also choose presets from the module menu.";
	hub_internals_createone(x, "jcom.message", 	"preset/store",				@type msg_int @description "Store a preset by number in memory.  All presets present in memory will be written to disk when you send a save_settings message to the module.";

	// ONE POTENTIAL WAY TO RE-WRITE THE PRESET IMPLEMENTATION IS TO MAKE THE FILE REFERENCE AN ATTRIBUTE
	// THEN WE JUST read (re-read), save (re-save), etc.  Maybe this is a dumb idea though...
*/

	
//	atom_setsym(a+0, gensym("testatoob"));
//	atom_setsym(a+1, gensym("@ramp"));
//	atom_setsym(a+2, gensym("linear.sched"));
//	atom_setsym(a+3, gensym("@type"));
//	atom_setsym(a+4, gensym("msg_float"));
//	jcom_core_loadextern(gensym("jcom.message"), 5, a, &obj);
//	obj = object_register(CLASS_BOX, symbol_unique(), obj);			// register the class so we can attach to it
//	linklist_append(x->ll_internals, obj);							// keep track of all our internals using a linklist
//	object_attach_byptr(x, obj);									// listen to the object (will send us info through our "notify" method)
}


void hub_internals_destroy(t_hub *x)
{
	linklist_clear(x->ll_internals);
	object_free(x->ll_internals);
	x->ll_internals = NULL;
}


void hub_internals_notify(t_hub *x)
{
	;
}

#endif // CREATE_INTERNALS