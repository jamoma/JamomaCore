/* 
 * jcom.ui
 * External for Jamoma: provide standard user interface component for modules
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "jcom.ui.h"

// TODO: This file, lamely, duplicates a lot of what is in jcom.hub.internals.cpp.
//			Should create a more DRY way of doing this.


void ui_color_contentBackground(t_ui *obj, t_symbol *msg, long argc, t_atom *argv);
void ui_color_toolbarBackground(t_ui *obj, t_symbol *msg, long argc, t_atom *argv);
void ui_color_toolbarText(t_ui *obj, t_symbol *msg, long argc, t_atom *argv);
void ui_color_border(t_ui *obj, t_symbol *msg, long argc, t_atom *argv);



void ui_internals_createColors(t_ui* obj)
{
	uiInternalObject	*anObject;
	t_atom				a[2];
	
	anObject = new uiInternalObject("jcom.message", "view/color/contentBackground", obj->box.b_patcher, "array", "none", "The background color of the module in the format RGBA where values range [0.0, 1.0].", NULL, NULL, NULL, NULL);
	anObject->setAction((method)ui_color_contentBackground, (t_object*)obj);
	hashtab_store(obj->hash_internals, gensym("view/color/contentBackground"), (t_object*)anObject);
	
	anObject = new uiInternalObject("jcom.message", "view/color/toolbarBackground", obj->box.b_patcher, "array", "none", "The background color of the module's toolbar in the format RGBA where values range [0.0, 1.0].", NULL, NULL, NULL, NULL);
	anObject->setAction((method)ui_color_toolbarBackground, (t_object*)obj);
	hashtab_store(obj->hash_internals, gensym("view/color/toolbarBackground"), (t_object*)anObject);
	
	anObject = new uiInternalObject("jcom.message", "view/color/toolbarText", obj->box.b_patcher, "array", "none", "The color of the module's toolbar text in the format RGBA where values range [0.0, 1.0].", NULL, NULL, NULL, NULL);
	anObject->setAction((method)ui_color_toolbarText, (t_object*)obj);
	hashtab_store(obj->hash_internals, gensym("view/color/toolbarText"), (t_object*)anObject);
	
	anObject = new uiInternalObject("jcom.message", "view/color/border", obj->box.b_patcher, "array", "none", "The border color of the module in the format RGBA where values range [0.0, 1.0].", NULL, NULL, NULL, NULL);
	anObject->setAction((method)ui_color_border, (t_object*)obj);
	hashtab_store(obj->hash_internals, gensym("view/color/border"), (t_object*)anObject);
	
	anObject = new uiInternalObject("jcom.message", "view/size", obj->box.b_patcher, "array", "none", "The size of the module's UI.", NULL, NULL, NULL, NULL);
	//anObject->setAction((method)ui_color_border, (t_object*)obj);
	anObject->setReadonly(true);
	atom_setlong(a+0, obj->box.b_patching_rect.width);
	atom_setlong(a+1, obj->box.b_patching_rect.height);
	anObject->setValue(2, a);
	hashtab_store(obj->hash_internals, gensym("view/size"), (t_object*)anObject);
}


void ui_internals_destroy(t_ui *obj)
{
	long				i;
	long				numKeys = 0;
	t_symbol			**keys = NULL;
	uiInternalObject	*anObject;
	t_max_err			err;
	
	hashtab_getkeys(obj->hash_internals, &numKeys, &keys);
	for (i=0; i<numKeys; i++) {
		err = hashtab_lookup(obj->hash_internals, keys[i], (t_object**)&anObject);
		if (!err)
			delete anObject;
	}
	
	if (keys)
		sysmem_freeptr(keys);
		
	hashtab_chuck(obj->hash_internals);
}



#if 0
#pragma mark -
#pragma mark message handlers
#endif


void ui_mute(t_ui *obj, t_symbol *msg, long argc, t_atom *argv)
{
	object_attr_setvalueof(obj, gensym("is_muted"), argc, argv);
}


void ui_bypass(t_ui *obj, t_symbol *msg, long argc, t_atom *argv)
{
	obj->attr_isbypassed = atom_getlong(argv);
	jbox_redraw(&obj->box);
}


void ui_mix(t_ui *obj, t_symbol *msg, long argc, t_atom *argv)
{
	obj->attr_mix = atom_getlong(argv);
	jbox_redraw(&obj->box);
}


void ui_gain(t_ui *obj, t_symbol *msg, long argc, t_atom *argv)
{
	obj->attr_gain = atom_getlong(argv);
	jbox_redraw(&obj->box);
}


void ui_freeze(t_ui *obj, t_symbol *msg, long argc, t_atom *argv)
{
	obj->attr_isfrozen = atom_getlong(argv);
	jbox_redraw(&obj->box);
}


void ui_preview(t_ui *obj, t_symbol *msg, long argc, t_atom *argv)
{
	obj->attr_ispreviewing = atom_getlong(argv);
	jbox_redraw(&obj->box);
}


void ui_color_contentBackground(t_ui *obj, t_symbol *msg, long argc, t_atom *argv)
{
	// Colors default to "0". If default value is passed, we avoid setting the color, in order to stick to object defaults.
	if (argc>1)
		object_attr_setvalueof(obj, _sym_bgcolor, argc, argv);
}


void ui_color_toolbarBackground(t_ui *obj, t_symbol *msg, long argc, t_atom *argv)
{
	if (argc>1)
		object_attr_setvalueof(obj, gensym("headercolor"), argc, argv);
}


void ui_color_toolbarText(t_ui *obj, t_symbol *msg, long argc, t_atom *argv)
{
	if (argc>1)
		object_attr_setvalueof(obj, _sym_textcolor, argc, argv);
}


void ui_color_border(t_ui *obj, t_symbol *msg, long argc, t_atom *argv)
{
	if (argc>1)
		object_attr_setvalueof(obj, gensym("bordercolor"), argc, argv);
}




t_max_err attr_set_mute(t_ui *obj, void *attr, long argc, t_atom *argv)
{
	uiInternalObject	*anObject = NULL;
	long				value = atom_getlong(argv);
	t_max_err			err = MAX_ERR_NONE;

	if (obj->attr_ismuted != value) {
		obj->attr_ismuted = value;
		err = hashtab_lookup(obj->hash_internals, gensym("mute"), (t_object**)&anObject);
		if (!err)
			object_method(anObject->theObject, _sym_int, obj->attr_ismuted);
	}
	return err;
}


t_max_err attr_set_bypass(t_ui *obj, void *attr, long argc, t_atom *argv)
{
	uiInternalObject	*anObject = NULL;
	long				value = atom_getlong(argv);
	t_max_err			err = MAX_ERR_NONE;

	if (obj->attr_isbypassed != value) {
		obj->attr_isbypassed = value;
		err = hashtab_lookup(obj->hash_internals, gensym("bypass"), (t_object**)&anObject);
		if (!err)
			object_method(anObject->theObject, _sym_int, obj->attr_isbypassed);
	}
	return err;
}


t_max_err attr_set_mix(t_ui *obj, void *attr, long argc, t_atom *argv)
{
	uiInternalObject	*anObject = NULL;
	float				value = atom_getfloat(argv);
	t_max_err			err = MAX_ERR_NONE;

	if (obj->attr_mix != value) {
		obj->attr_mix = value;
		err = hashtab_lookup(obj->hash_internals, gensym("mix"), (t_object**)&anObject);
		if (!err)
			object_method(anObject->theObject, _sym_float, obj->attr_mix);
	}
	return err;
}


t_max_err attr_set_gain(t_ui *obj, void *attr, long argc, t_atom *argv)
{
	uiInternalObject	*anObject = NULL;
	float				value = atom_getfloat(argv);
	t_max_err			err = MAX_ERR_NONE;

	if (obj->attr_gain != value) {
		obj->attr_gain = value;
		err = hashtab_lookup(obj->hash_internals, gensym("gain"), (t_object**)&anObject);
		if (!err)
			object_method(anObject->theObject, _sym_float, obj->attr_gain);
	}
	return err;
}


void setGainDataspaceUnit(t_ui* obj, t_symbol* unit)
{
	uiInternalObject	*anObject = NULL;
	t_max_err			err = MAX_ERR_NONE;
	
	err = hashtab_lookup(obj->hash_internals, gensym("gain"), (t_object**)&anObject);
	if (!err)
		object_attr_setsym(anObject->theObject, gensym("dataspace/unit/active"), unit);
}


t_max_err attr_set_freeze(t_ui *obj, void *attr, long argc, t_atom *argv)
{
	uiInternalObject	*anObject = NULL;
	long				value = atom_getlong(argv);
	t_max_err			err = MAX_ERR_NONE;

	if (obj->attr_isfrozen != value) {
		obj->attr_isfrozen = value;
		err = hashtab_lookup(obj->hash_internals, gensym("freeze"), (t_object**)&anObject);
		if (!err)
			object_method(anObject->theObject, _sym_int, obj->attr_isfrozen);
	}
	return err;
}


t_max_err attr_set_preview(t_ui *obj, void *attr, long argc, t_atom *argv)
{
	uiInternalObject	*anObject = NULL;
	long				value = atom_getlong(argv);
	t_max_err			err = MAX_ERR_NONE;

	if (obj->attr_ispreviewing != value) {
		obj->attr_ispreviewing = value;
		err = hashtab_lookup(obj->hash_internals, gensym("preview"), (t_object**)&anObject);
		if (!err)
			object_method(anObject->theObject, _sym_int, obj->attr_ispreviewing);
	}
	return err;
}


#if 0
#pragma mark -
#pragma mark attr accessors
#endif

t_max_err attr_set_hasmute(t_ui *obj, void *attr, long argc, t_atom *argv)
{
	uiInternalObject	*anObject;
	t_max_err			err = MAX_ERR_NONE;

	obj->attr_hasmute = atom_getlong(argv);
	
	if (obj->attr_hasmute) {
		anObject = new uiInternalObject("jcom.parameter", "mute", obj->box.b_patcher, "boolean", "none", "When active, this attribute turns off the module's processing algorithm to save CPU", NULL, NULL, NULL, NULL);
		anObject->setAction((method)ui_mute, (t_object*)obj);
		hashtab_store(obj->hash_internals, gensym("mute"), (t_object*)anObject);
		object_attr_setsym(obj, gensym("prefix"), obj->attrPrefix);
	}
	else {
		err = hashtab_lookup(obj->hash_internals, gensym("mute"), (t_object**)&anObject);
		if (!err) {
			hashtab_chuckkey(obj->hash_internals, gensym("mute"));
			delete anObject;
		}
	}
	return err;
}

t_max_err attr_set_hasinspector(t_ui *obj, void *attr, long argc, t_atom *argv)
{
	uiInternalObject	*anObject;
	t_max_err			err = MAX_ERR_NONE;
	
	obj->attr_hasinspector = atom_getlong(argv);
	
	
	if (obj->attr_hasinspector) {
		anObject = new uiInternalObject("jcom.message", 	"view/panel",	obj->box.b_patcher,	"none",		"none",	"Open an a module's control panel (inspector) if one is present.", NULL, NULL, NULL, NULL);
		hashtab_store(obj->hash_internals, gensym("panel/open"), (t_object*)anObject);	
	}
	else {
		err = hashtab_lookup(obj->hash_internals, gensym("panel/open"), (t_object**)&anObject);
		if (!err) {
			hashtab_chuckkey(obj->hash_internals, gensym("panel/open"));
			delete anObject;
		}
	}
	return err;
}


t_max_err attr_set_hasbypass(t_ui *obj, void *attr, long argc, t_atom *argv)
{
	uiInternalObject	*anObject;
	t_max_err			err = MAX_ERR_NONE;

	obj->attr_hasbypass = atom_getlong(argv);
	
	if (obj->attr_hasbypass) {
		anObject = new uiInternalObject("jcom.parameter", "bypass", obj->box.b_patcher, "boolean", "none", "When active, this attribute bypasses the module's processing algorithm, letting audio or video pass through unaffected", NULL, NULL, NULL, NULL);
		anObject->setAction((method)ui_bypass, (t_object*)obj);
		hashtab_store(obj->hash_internals, gensym("bypass"), (t_object*)anObject);
		object_attr_setsym(obj, gensym("prefix"), obj->attrPrefix);
	}
	else {
		err = hashtab_lookup(obj->hash_internals, gensym("bypass"), (t_object**)&anObject);
		if (!err) {
			hashtab_chuckkey(obj->hash_internals, gensym("bypass"));
			delete anObject;
		}
	}
	return err;
}


t_max_err attr_set_hasmix(t_ui *obj, void *attr, long argc, t_atom *argv)
{
	uiInternalObject	*anObject;
	t_max_err			err = MAX_ERR_NONE;
	float				range[2];

	obj->attr_hasmix = atom_getlong(argv);
	
	if (obj->attr_hasmix) {
		range[0] = 0.0;
		range[1] = 100.0;
		anObject = new uiInternalObject("jcom.parameter", "mix", obj->box.b_patcher, "decimal", "scheduler", "Controls the wet/dry mix of the module's processing routine in percent.", range, NULL, NULL, NULL);
		anObject->setAction((method)ui_mix, (t_object*)obj);
		hashtab_store(obj->hash_internals, gensym("mix"), (t_object*)anObject);
		object_attr_setsym(obj, gensym("prefix"), obj->attrPrefix);
	}
	else {
		err = hashtab_lookup(obj->hash_internals, gensym("mix"), (t_object**)&anObject);
		if (!err) {
			hashtab_chuckkey(obj->hash_internals, gensym("mix"));
			delete anObject;
		}
	}
	return err;
}


t_max_err attr_set_hasgain(t_ui *obj, void *attr, long argc, t_atom *argv)
{
	uiInternalObject	*anObject;
	t_max_err			err = MAX_ERR_NONE;
	float				range[2];

	obj->attr_hasgain = atom_getlong(argv);
	
	if (obj->attr_hasgain) {
		range[0] = 0.0;
		range[1] = 127.0;
		anObject = new uiInternalObject("jcom.parameter", "gain", obj->box.b_patcher, "decimal", "scheduler", "Set gain (as MIDI value by default).", range, "gain", "midi", "midi");
		anObject->setAction((method)ui_gain, (t_object*)obj);
		hashtab_store(obj->hash_internals, gensym("gain"), (t_object*)anObject);
		object_attr_setsym(obj, gensym("prefix"), obj->attrPrefix);
	}
	else {
		err = hashtab_lookup(obj->hash_internals, gensym("gain"), (t_object**)&anObject);
		if (!err) {
			hashtab_chuckkey(obj->hash_internals, gensym("gain"));
			delete anObject;
		}
	}
	return err;
}


t_max_err attr_set_hasfreeze(t_ui *obj, void *attr, long argc, t_atom *argv)
{
	uiInternalObject	*anObject;
	t_max_err			err = MAX_ERR_NONE;

	obj->attr_hasfreeze = atom_getlong(argv);
	
	if (obj->attr_hasfreeze) {
		anObject = new uiInternalObject("jcom.parameter", "freeze", obj->box.b_patcher, "boolean", "none", "Freezes the last frame of output from the module's processing algorithm.", NULL, NULL, NULL, NULL);
		anObject->setAction((method)ui_freeze, (t_object*)obj);
		hashtab_store(obj->hash_internals, gensym("freeze"), (t_object*)anObject);
		object_attr_setsym(obj, gensym("prefix"), obj->attrPrefix);
	}
	else {
		err = hashtab_lookup(obj->hash_internals, gensym("freeze"), (t_object**)&anObject);
		if (!err) {
			hashtab_chuckkey(obj->hash_internals, gensym("freeze"));
			delete anObject;
		}
	}
	return err;
}


t_max_err attr_set_haspreview(t_ui *obj, void *attr, long argc, t_atom *argv)
{
	uiInternalObject	*anObject;
	t_max_err			err = MAX_ERR_NONE;

	obj->attr_haspreview = atom_getlong(argv);
	
	if (obj->attr_haspreview) {
		anObject = new uiInternalObject("jcom.parameter", "preview", obj->box.b_patcher, "boolean", "none", "Turns on/off the video display in the module's preview window.", NULL, NULL, NULL, NULL);
		anObject->setAction((method)ui_preview, (t_object*)obj);
		hashtab_store(obj->hash_internals, gensym("preview"), (t_object*)anObject);
		object_attr_setsym(obj, gensym("prefix"), obj->attrPrefix);
	}
	else {
		err = hashtab_lookup(obj->hash_internals, gensym("preview"), (t_object**)&anObject);
		if (!err) {
			hashtab_chuckkey(obj->hash_internals, gensym("preview"));
			delete anObject;
		}
	}
	return err;
}


t_max_err attr_set_prefix(t_ui *obj, void *attr, long argc, t_atom *argv)
{
	uiInternalObject	*anObject;
	t_max_err			err = MAX_ERR_NONE;
	char				name[256];
	
	if (argc && argv)
		obj->attrPrefix = atom_getsym(argv);
	else
		obj->attrPrefix = _sym_nothing;
	
	err = hashtab_lookup(obj->hash_internals, gensym("mute"), (t_object**)&anObject);
	if (!err) {
		name[0] = 0;
		if (obj->attrPrefix!=gensym(""))
		{
			if (obj->attrPrefix && obj->attrPrefix->s_name[0])
				strncpy_zero(name, obj->attrPrefix->s_name, 256);
			strncat_zero(name, "/mute", 256);
		}
		else
			strncat_zero(name, "mute", 256);		
		anObject->setName(name);
	}
	
	err = hashtab_lookup(obj->hash_internals, gensym("bypass"), (t_object**)&anObject);
	if (!err) {
		name[0] = 0;
		if (obj->attrPrefix!=gensym("")) 
		{
			if (obj->attrPrefix && obj->attrPrefix->s_name[0])
				strncpy_zero(name, obj->attrPrefix->s_name, 256);
			strncat_zero(name, "/bypass", 256);
		}
		else
			strncat_zero(name, "bypass", 256);
		anObject->setName(name);
	}
	
	err = hashtab_lookup(obj->hash_internals, gensym("mix"), (t_object**)&anObject);
	if (!err) {
		name[0] = 0;
		if (obj->attrPrefix!=gensym(""))
		{
			if (obj->attrPrefix && obj->attrPrefix->s_name[0])
			strncpy_zero(name, obj->attrPrefix->s_name, 256);
			strncat_zero(name, "/mix", 256);
		}
		else
			strncat_zero(name, "mix", 256);
		anObject->setName(name);
	}
	
	err = hashtab_lookup(obj->hash_internals, gensym("gain"), (t_object**)&anObject);
	if (!err) {
		name[0] = 0;
		if (obj->attrPrefix!=gensym(""))
		{
			if (obj->attrPrefix && obj->attrPrefix->s_name[0])
				strncpy_zero(name, obj->attrPrefix->s_name, 256);
			strncat_zero(name, "/gain", 256);
		}
		else
			strncat_zero(name, "gain", 256);
		anObject->setName(name);
	}
	
	err = hashtab_lookup(obj->hash_internals, gensym("freeze"), (t_object**)&anObject);
	if (!err) {
		name[0] = 0;
		if (obj->attrPrefix!=gensym(""))
		{
			if (obj->attrPrefix && obj->attrPrefix->s_name[0])
				strncpy_zero(name, obj->attrPrefix->s_name, 256);
			strncat_zero(name, "/freeze", 256);
		}
		else
			strncat_zero(name, "freeze", 256);
		anObject->setName(name);
	}
	
	err = hashtab_lookup(obj->hash_internals, gensym("preview"), (t_object**)&anObject);
	if (!err) {
		name[0] = 0;
		if (obj->attrPrefix!=gensym(""))
		{
			if (obj->attrPrefix && obj->attrPrefix->s_name[0])
				strncpy_zero(name, obj->attrPrefix->s_name, 256);
			strncat_zero(name, "/preview", 256);
		}
		else
			strncat_zero(name, "preview", 256);
		anObject->setName(name);
	}
	
	return MAX_ERR_NONE;
}
