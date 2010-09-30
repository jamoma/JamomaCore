/* 
 * jcom.ui
 * External for Jamoma: provide standard user interface component for modules
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "jcom.ui.h"

void ui_create_all_datas(t_ui* obj)
{
	TTObjectPtr			anObject;
	TTValue				v;
	
	// view/color/contentBackground
	ui_create_data(obj, &anObject, gensym("return_color_contentBackground"), (TTPtr)obj->patcher, kTTSym_parameter, TT("view/color/contentBackground"));
	anObject->setAttributeValue(kTTSym_Type, kTTSym_array);
	anObject->setAttributeValue(kTTSym_RampDrive, kTTSym_none);
	anObject->setAttributeValue(kTTSym_Description, TT("The background color of the module in the format RGBA where values range [0.0, 1.0]."));
	
	// view/color/toolbarBackground
	ui_create_data(obj, &anObject, gensym("return_color_toolbarBackground"), (TTPtr)obj->patcher, kTTSym_parameter, TT("view/color/toolbarBackground"));
	anObject->setAttributeValue(kTTSym_Type, kTTSym_array);
	anObject->setAttributeValue(kTTSym_RampDrive, kTTSym_none);
	anObject->setAttributeValue(kTTSym_Description, TT("The background color of the module's toolbar in the format RGBA where values range [0.0, 1.0]."));
	
	// view/color/toolbarText
	ui_create_data(obj, &anObject, gensym("return_color_toolbarText"), (TTPtr)obj->patcher, kTTSym_parameter, TT("view/color/toolbarText"));
	anObject->setAttributeValue(kTTSym_Type, kTTSym_array);
	anObject->setAttributeValue(kTTSym_RampDrive, kTTSym_none);
	anObject->setAttributeValue(kTTSym_Description, TT("The color of the module's toolbar text in the format RGBA where values range [0.0, 1.0]."));
	
	// view/color/border
	ui_create_data(obj, &anObject, gensym("return_color_border"), (TTPtr)obj->patcher, kTTSym_parameter, TT("view/color/border"));
	anObject->setAttributeValue(kTTSym_Type, kTTSym_array);
	anObject->setAttributeValue(kTTSym_RampDrive, kTTSym_none);
	anObject->setAttributeValue(kTTSym_Description, TT("The border color of the module in the format RGBA where values range [0.0, 1.0]."));
	
	// view/size
	ui_create_data(obj, &anObject, gensym("return_view_size"), (TTPtr)obj->patcher, kTTSym_parameter, TT("view/size"));
	anObject->setAttributeValue(kTTSym_Type, kTTSym_array);
	anObject->setAttributeValue(kTTSym_RampDrive, kTTSym_none);
	anObject->setAttributeValue(kTTSym_Description, TT("The size of the module's UI."));
	
	v.append(obj->box.b_patching_rect.width);
	v.append(obj->box.b_patching_rect.height);
	anObject->setAttributeValue(kTTSym_Value, v);
	
	// view/freeze
	ui_create_data(obj, &anObject, gensym("return_view_freeze"), (TTPtr)obj->patcher, kTTSym_parameter, TT("view/freeze"));
	anObject->setAttributeValue(kTTSym_Type, kTTSym_boolean);
	anObject->setAttributeValue(kTTSym_RampDrive, kTTSym_none);
	anObject->setAttributeValue(kTTSym_Description, TT("Freeze each jcom.view in the patch"));
	
	// view/refresh
	ui_create_data(obj, &anObject, gensym("return_view_refresh"), (TTPtr)obj->patcher, kTTSym_message, TT("view/refresh"));
	anObject->setAttributeValue(kTTSym_Type, kTTSym_none);
	anObject->setAttributeValue(kTTSym_RampDrive, kTTSym_none);
	anObject->setAttributeValue(kTTSym_Description, TT("Refresh each jcom.view in the patch"));
}

void ui_destroy_all_datas(t_ui *obj)
{
	TTValue			hk, v;
	TTSymbolPtr		key;
	TTUInt8			i;
	
	// delete all datas
	if (obj->hash_datas) {
		
		obj->hash_datas->getKeys(hk);
		
		for (i=0; i<obj->hash_datas->getSize(); i++) {
			
			hk.get(i,(TTSymbolPtr*)&key);
			ui_destroy_data(obj, key);
		}
		
		delete obj->hash_datas;
	}
}
								   
void ui_create_data(t_ui *obj, TTObjectPtr *returnedData, SymbolPtr aCallbackMethod, TTPtr context, TTSymbolPtr service, TTSymbolPtr name)
{
	TTValue			args;
	TTObjectPtr		returnValueCallback;
	TTValuePtr		returnValueBaton;
	TTNodePtr		aNode;
	TTBoolean		nodeCreated;
	TTSymbolPtr		paramAddress;
	
	// Prepare arguments to create a TTData object
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(obj));
	returnValueBaton->append(TTPtr(aCallbackMethod));
	returnValueCallback->setAttributeValue(TT("Baton"), TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(TT("Function"), TTPtr(&jamoma_callback_return_value));
	args.append(returnValueCallback);
	
	*returnedData = NULL;
	TTObjectInstantiate(TT("Data"), TTObjectHandle(returnedData), args);
	
	// Register data
	joinOSCAddress(obj->modelAddress, name, &paramAddress);
	TTModularDirectory->TTNodeCreate(paramAddress, *returnedData, context, &aNode, &nodeCreated);
	
	// Store the data
	args = TTValue(TTPtr(*returnedData));
	obj->hash_datas->append(name, args);
}								   

void ui_destroy_data(t_ui *obj, TTSymbolPtr name)
{
	TTValue			storedObject;
	TTObjectPtr		anObject;
	TTSymbolPtr		paramAddress;
	
	if (obj->hash_datas) {
		obj->hash_datas->lookup(name, storedObject);
		storedObject.get(0, (TTPtr*)&anObject);
		
		joinOSCAddress(obj->modelAddress, name, &paramAddress);
		
		TTModularDirectory->TTNodeRemove(paramAddress);
		
		if (anObject)
			TTObjectRelease(&anObject);
		
		obj->hash_datas->remove(name);
	}
}

void ui_send_data(t_ui *obj, TTSymbolPtr name, TTValue v)
{
	TTValue			storedObject;
	TTObjectPtr		anObject;
	
	obj->hash_datas->lookup(name, storedObject);
	storedObject.get(0, (TTPtr*)&anObject);
	
	anObject->setAttributeValue(kTTSym_Value, v);
}

void ui_create_viewer(t_ui *obj, TTObjectPtr *returnedViewer, SymbolPtr aCallbackMethod, TTSymbolPtr name)
{
	TTValue			args;
	TTObjectPtr		returnValueCallback;
	TTValuePtr		returnValueBaton;
	TTSymbolPtr		viewerAddress;
	
	if (!obj->modelAddress) {
		object_error((ObjectPtr)obj, "ui_create_viewer : can't create any viewer without model address (TODO)");
		return;
	}
	
	// prepare arguments
	args.append(TTModularDirectory);
	
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(obj));
	returnValueBaton->append(TTPtr(aCallbackMethod));
	returnValueCallback->setAttributeValue(TT("Baton"), TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(TT("Function"), TTPtr(&jamoma_callback_return_value));
	args.append(returnValueCallback);
	
	*returnedViewer = NULL;
	TTObjectInstantiate(TT("Viewer"), TTObjectHandle(returnedViewer), args);
	
	// Set address attribute
	joinOSCAddress(obj->modelAddress, name, &viewerAddress);
	args = TTValue(viewerAddress);
	(*returnedViewer)->setAttributeValue(kTTSym_Address, args);
	
	// Store the Viewer
	args = TTValue(TTPtr(*returnedViewer));
	obj->hash_viewers->append(name, args);
}

void ui_destroy_viewer(t_ui *obj, TTSymbolPtr name)
{
	TTValue			storedObject;
	TTObjectPtr		anObject;
	TTErr			err;
	
	if (obj->hash_viewers) {
		
		err = obj->hash_viewers->lookup(name, storedObject);
		
		if (!err) {
			storedObject.get(0, (TTPtr*)&anObject);
			if (anObject)
				TTObjectRelease(&anObject);
		
			obj->hash_viewers->remove(name);
		}
	}
}

void ui_send_viewer(t_ui *obj, TTSymbolPtr name, TTValue v)
{
	TTValue			storedObject;
	TTObjectPtr		anObject;
	TTErr			err;
	if (obj->hash_viewers) {
		err = obj->hash_viewers->lookup(name, storedObject);
		
		if (!err) {
			storedObject.get(0, (TTPtr*)&anObject);
			if (anObject)
				anObject->sendMessage(kTTSym_send, v);
		}
	}
}

void ui_freeze_viewer(t_ui *obj, TTSymbolPtr name, TTBoolean f)
{
	TTValue			storedObject;
	TTObjectPtr		anObject;
	TTErr			err;
	if (obj->hash_viewers) {
		err = obj->hash_viewers->lookup(name, storedObject);
		
		if (!err) {
			storedObject.get(0, (TTPtr*)&anObject);
			if (anObject)
				anObject->setAttributeValue(kTTSym_Freeze, f);
		}
	}
}

void ui_refresh_viewer(t_ui *obj, TTSymbolPtr name)
{
	TTValue			storedObject;
	TTObjectPtr		anObject;
	TTErr			err;
	if (obj->hash_viewers) {
		err = obj->hash_viewers->lookup(name, storedObject);
		
		if (!err) {
			storedObject.get(0, (TTPtr*)&anObject);
			if (anObject)
				anObject->sendMessage(kTTSym_Refresh, kTTValNONE);
		}
	}
}

#if 0
#pragma mark -
#pragma mark message handlers
#endif

void ui_observe_data(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	SymbolPtr	paramName;
	TTObjectPtr anObject;
	TTBoolean	gain = false;
	TTBoolean	mix = false;
	TTBoolean	bypass = false;
	TTBoolean	freeze = false;
	TTBoolean	preview = false;
	TTBoolean	mute = false;
	TTBoolean	panel = false;
	TTBoolean	internals = false;
	TTBoolean	meters = false;
	TTBoolean	preset = false;			// is there a /preset node in the model ?
	TTBoolean	help = false;			// is there a help patch for the model ?
	TTBoolean	ref = false;			// is there a ref page for the model ?
										// note : we don't look for some other datas because 
										// they exist for any model (/view/refresh, /autodoc, ...)
	TTBoolean	change = false;
	
	// look the namelist to know which data exist
	for (long i=0; i<argc; i++) {
		
		paramName = atom_getsym(argv+i);
		
		if (paramName == gensym("/gain"))
			gain = true;
		else if (paramName == gensym("/mix"))
			mix = true;
		else if (paramName == gensym("/bypass"))
			bypass = true;
		else if (paramName == gensym("/freeze"))
			freeze = true;
		else if (paramName == gensym("/preview"))
			preview = true;
		else if (paramName == gensym("/mute"))
			mute = true;
		else if (paramName == gensym("/view/panel"))			// TODO : create sender (a viewer is useless)
			panel = true;
		else if (paramName == gensym("/view/internals"))		// TODO : create sender (a viewer is useless)
			internals = true;
		else if (paramName == gensym("/audio/meters/freeze"))
			meters = true;
		else if (paramName == gensym("/preset/store"))			// the internal TTExplorer looks for Datas (not for node like /preset)
			preset = true;
		else if (paramName == gensym("/model/help"))			// TODO : create sender (a viewer is useless)
			help = true;
		else if (paramName == gensym("/model/reference"))		// TODO : create sender (a viewer is useless)
			ref = true;
	}
	
	// if a data appears or disappears : create or remove the viewer
	
	// gain
	if (gain != obj->has_gain) {
		obj->has_gain = gain;
		if (gain) 
			ui_create_viewer(obj, &anObject, gensym("return_gain"), TT("gain"));
		else
		  ui_destroy_viewer(obj, TT("gain"));
	}
	
	// mix
	if (mix != obj->has_mix) {
		obj->has_mix = mix;
		if (mix) 
			ui_create_viewer(obj, &anObject, gensym("return_mix"), TT("mix"));
		else
			ui_destroy_viewer(obj, TT("mix"));
		
		change = true;
	}
	
	// bypass
	if (bypass != obj->has_bypass) {
		obj->has_bypass = bypass;
		if (bypass) 
			ui_create_viewer(obj, &anObject, gensym("return_bypass"), TT("bypass"));
		else
			ui_destroy_viewer(obj, TT("bypass"));
		
		change = true;
	}
	
	// freeze
	if (freeze != obj->has_freeze) {
		obj->has_freeze = freeze;
		if (freeze) 
			ui_create_viewer(obj, &anObject, gensym("return_freeze"), TT("freeze"));
		else
			ui_destroy_viewer(obj, TT("freeze"));
		
		change = true;
	}
	
	// preview
	if (preview != obj->has_preview) {
		obj->has_preview = preview;
		if (preview) 
			ui_create_viewer(obj, &anObject, gensym("return_preview"), TT("preview"));
		else
			ui_destroy_viewer(obj, TT("preview"));
		
		change = true;
	}
	
	// mute
	if (mute != obj->has_mute) {
		obj->has_mute = mute;
		if (mute) 
			ui_create_viewer(obj, &anObject, gensym("return_mute"), TT("mute"));
		else
			ui_destroy_viewer(obj, TT("mute"));
		
		change = true;
	}
	
	// panel
	if (panel != obj->has_panel) {
		obj->has_panel = panel;
		if (panel) 
			ui_create_viewer(obj, &anObject, NULL, TT("view/panel"));
		else
			ui_destroy_viewer(obj, TT("view/panel"));
		
		change = true;
	}
	
	// internals
	if (internals != obj->has_internals) {
		obj->has_internals = internals;
		if (internals) 
			ui_create_viewer(obj, &anObject, NULL, TT("view/internals"));
		else
			ui_destroy_viewer(obj, TT("view/internals"));
		
		change = true;
	}
	
	// preset
	if (preset != obj->has_preset) {
		obj->has_preset = preset;
		if (preset) {
			ui_create_viewer(obj, &anObject, NULL, TT("preset/write"));
			ui_create_viewer(obj, &anObject, NULL, TT("preset/read"));
			ui_create_viewer(obj, &anObject, NULL, TT("preset/recall"));
			ui_create_viewer(obj, &anObject, NULL, TT("preset/store/current"));
			ui_create_viewer(obj, &anObject, NULL, TT("preset/store/next"));
			ui_create_viewer(obj, &anObject, gensym("return_preset_names"), TT("preset/names"));
		}
		else {
			ui_destroy_viewer(obj, TT("preset/write"));
			ui_destroy_viewer(obj, TT("preset/read"));
			ui_destroy_viewer(obj, TT("preset/recall"));
			ui_destroy_viewer(obj, TT("preset/store/current"));
			ui_destroy_viewer(obj, TT("preset/store/next"));
			ui_destroy_viewer(obj, TT("preset/names"));
		}
		
		change = true;
	}
	
	// help
	if (help != obj->has_help) {
		obj->has_help = help;
		if (help) 
			ui_create_viewer(obj, &anObject, NULL, TT("model/help"));
		else
			ui_destroy_viewer(obj, TT("model/help"));
		
		change = true;
	}
	
	// ref
	if (ref != obj->has_ref) {
		obj->has_ref = ref;
		if (ref) 
			ui_create_viewer(obj, &anObject, NULL, TT("model/reference"));
		else
			ui_destroy_viewer(obj, TT("model/reference"));
		
		change = true;
	}
	
	if (change)
		jbox_redraw(&obj->box);
}

void ui_return_metersdefeated(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	obj->is_metersdefeated = atom_getlong(argv);
	jbox_redraw(&obj->box);
}

void ui_return_mute(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	obj->is_muted = atom_getlong(argv);
	jbox_redraw(&obj->box);
}

void ui_return_bypass(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	obj->is_bypassed = atom_getlong(argv);
	jbox_redraw(&obj->box);
}

void ui_return_mix(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	obj->mix = atom_getlong(argv);
	jbox_redraw(&obj->box);
}

void ui_return_gain(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	obj->gain = atom_getlong(argv);
	jbox_redraw(&obj->box);
}

void ui_return_freeze(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	obj->is_frozen = atom_getlong(argv);
	jbox_redraw(&obj->box);
}

void ui_return_preview(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	obj->is_previewing = atom_getlong(argv);
	jbox_redraw(&obj->box);
}

void ui_return_view_size(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	; // do nothing ?
}

void ui_return_view_refresh(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	long result = 0;
	
	// refresh all jcom.view in the patch
	object_method(obj->patcher, _sym_iterate, jcom_view_refresh_iterator, (void *)obj, PI_WANTBOX | PI_DEEP, &result);
	
	// refresh all widgets
	// gain
	if (obj->has_gain)
		ui_refresh_viewer(obj, TT("gain"));
	
	// mix
	if (obj->has_mix)
		ui_refresh_viewer(obj, TT("mix"));
	
	// bypass
	if (obj->has_bypass)
		ui_refresh_viewer(obj, TT("bypass"));
	
	// freeze
	if (obj->has_freeze)
		ui_refresh_viewer(obj, TT("freeze"));
	
	// preview
	if (obj->has_preview)
		ui_refresh_viewer(obj, TT("preview"));
	
	// mute
	if (obj->has_mute) 
		ui_refresh_viewer(obj, TT("mute"));
	
}

long jcom_view_refresh_iterator(t_ui *x, t_object *b)
{
	Atom a;
	SymbolPtr cls = object_classname(jbox_get_object(b));
	
	if (cls == gensym("jcom.view")) {
		object_warn((ObjectPtr)x, "TODO : jcom_view_refresh_iterator : refresh all jcom.view");
		object_method(b, gensym("remote_refresh")); // it doesn't work !!?
	}
	
	return 0;
}

void ui_return_view_freeze(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	long result = 0;
	
	if (argc == 1)
		object_attr_setvalueof(obj, gensym("ui_is_frozen"), argc, argv);
	// freeze all jcom.view in the patch
	object_method(obj->patcher, _sym_iterate, jcom_view_freeze_iterator, (void *)obj, PI_WANTBOX | PI_DEEP, &result);
	
	// freeze all widgets
	// gain
	if (obj->has_gain)
		ui_freeze_viewer(obj, TT("gain"), obj->ui_freeze);
	
	// mix
	if (obj->has_mix)
		ui_freeze_viewer(obj, TT("mix"), obj->ui_freeze);
	
	// bypass
	if (obj->has_bypass)
		ui_freeze_viewer(obj, TT("bypass"), obj->ui_freeze);
		
	// freeze
	if (obj->has_freeze)
		ui_freeze_viewer(obj, TT("freeze"), obj->ui_freeze);
	
	// preview
	if (obj->has_preview)
		ui_freeze_viewer(obj, TT("preview"), obj->ui_freeze);

	// mute
	if (obj->has_mute) 
		ui_freeze_viewer(obj, TT("mute"), obj->ui_freeze);
	
	// if freeze is disabled : refresh
	if (!obj->ui_freeze)
		ui_return_view_refresh(self, _sym_nothing, argc, argv);
}

long jcom_view_freeze_iterator(t_ui *x, t_object *b)
{
	Atom a;
	SymbolPtr cls = object_classname(jbox_get_object(b));
	
	if (cls == gensym("jcom.view")) {
		atom_setlong(&a, x->ui_freeze);
		object_attr_setvalueof(b, gensym("freeze"), 1, &a);
	}
		
	return 0;	
}


void ui_return_color_contentBackground(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	// Colors default to "0". If default value is passed, we avoid setting the color, in order to stick to object defaults.
	if (argc>1)
		object_attr_setvalueof(obj, _sym_bgcolor, argc, argv);
}

void ui_return_color_toolbarBackground(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	if (argc>1)
		object_attr_setvalueof(obj, gensym("headercolor"), argc, argv);
}

void ui_return_color_toolbarText(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	if (argc>1)
		object_attr_setvalueof(obj, _sym_textcolor, argc, argv);
}

void ui_return_color_border(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	if (argc>1)
		object_attr_setvalueof(obj, gensym("bordercolor"), argc, argv);
}
