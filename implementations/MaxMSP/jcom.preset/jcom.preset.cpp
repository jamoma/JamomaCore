/* 
 *	jcom.preset
 *	External object
 *	Copyright © 2010 by Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTModularClassWrapperMax.h"
#include "jpatcher_api.h"

#define data_out 0
#define dump_out 1

// This is used to store extra data
typedef struct extra {
	TTBoolean	attr_load_default;
	TTPtr		filewatcher;		// a preset filewather
	char*		text;				// text used by /getstate window
	TTUInt32	textSize;			// how many chars are alloc'd to text
	ObjectPtr	textEditor;			// the text editor window
} t_extra;
#define EXTRA ((t_extra*)x->extra)

// Definitions
void		WrapTTPresetManagerClass(WrappedClassPtr c);
void		WrappedPresetManagerClass_new(TTPtr self, AtomCount argc, AtomPtr argv);
void		WrappedPresetManageClass_free(TTPtr self);

void		preset_assist(TTPtr self, void *b, long msg, long arg, char *dst);

void		preset_return_names(TTPtr self, t_symbol *msg, long argc, t_atom *argv);
void		preset_filechanged(TTPtr self, char *filename, short path);

void		preset_read(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		preset_doread(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		preset_read_again(TTPtr self);
void		preset_doread_again(TTPtr self);
void		preset_write(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		preset_dowrite(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		preset_write_again(TTPtr self);
void		preset_dowrite_again(TTPtr self);
void		preset_default(TTPtr self);
void		preset_dorecall(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		preset_edit(TTPtr self);
void		preset_edclose(TTPtr self, char **text, long size);

void		preset_subscribe(TTPtr self, SymbolPtr relativeAddress);

t_max_err	preset_get_load_default(TTPtr self, TTPtr attr, AtomCount *ac, AtomPtr *av);
t_max_err	preset_set_load_default(TTPtr self, TTPtr attr, AtomCount ac, AtomPtr av);


int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTPresetManagerClass;
	spec->_new = &WrappedPresetManagerClass_new;
	spec->_free = &WrappedPresetManageClass_free;
	spec->_any = NULL;
	
	return wrapTTModularClassAsMaxClass(TT("PresetManager"), "jcom.preset", NULL, spec);
}

void WrapTTPresetManagerClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)preset_assist,					"assist",				A_CANT, 0L);
	
	class_addmethod(c->maxClass, (method)preset_return_names,			"return_names",			A_CANT, 0);
	class_addmethod(c->maxClass, (method)preset_filechanged,			"filechanged",			A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)preset_read,					"preset_read",			A_CANT, 0);
	class_addmethod(c->maxClass, (method)preset_write,					"preset_write",			A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)preset_edit,					"dblclick",				A_CANT, 0);
	class_addmethod(c->maxClass, (method)preset_edclose,				"edclose",				A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)preset_read,					"read",					A_GIMME, 0);
	class_addmethod(c->maxClass, (method)preset_write,					"write",				A_GIMME, 0);
	
	class_addmethod(c->maxClass, (method)preset_read_again,				"read/again",			0);
	class_addmethod(c->maxClass, (method)preset_write_again,			"write/again",			0);
	
	CLASS_ATTR_LONG(c->maxClass,		"load_default",	0,		WrappedModularInstance,	extra);
	CLASS_ATTR_DEFAULT(c->maxClass,		"load_default",	0,		"1")
	CLASS_ATTR_ACCESSORS(c->maxClass,	"load_default",			preset_get_load_default,	preset_set_load_default);
	CLASS_ATTR_STYLE(c->maxClass,		"load_default",	0,		"onoff");
}

void WrappedPresetManagerClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	SymbolPtr					relativeAddress;
 	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments
	
	// possible relativeAddress
	if (attrstart && argv) 
		relativeAddress = atom_getsym(argv);
	else
		relativeAddress = _sym_nothing;
	
	// create the preset manager
	jamoma_presetManager_create((ObjectPtr)x, &x->wrappedObject);
	
	// Prepare extra data
	x->extra = (t_extra*)malloc(sizeof(t_extra));
	EXTRA->attr_load_default = true;
	EXTRA->filewatcher = NULL;
	EXTRA->textSize = 0;
	EXTRA->textEditor = NULL;
	
	// handle attribute args
	attr_args_process(x, argc, argv);
	
	// Make two outlets
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 1);
	x->outlets[data_out] = outlet_new(x, NULL);						// anything outlet to output data
	
	// Prepare Internals hash to store XmlHanler and TextHandler object
	x->internals = new TTHash();
	
	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	defer_low((ObjectPtr)x, (method)preset_subscribe, relativeAddress, 0, 0);
}

void WrappedPresetManageClass_free(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	// delete filewatcher
	if (EXTRA->filewatcher) {
		filewatcher_stop(EXTRA->filewatcher);
		object_free(EXTRA->filewatcher);
	}
	
	free(EXTRA);
}

void preset_subscribe(TTPtr self, SymbolPtr relativeAddress)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue						v, n, args;
	TTString					presetLevelAddress;
	TTSymbolPtr					absoluteAddress;
	TTNodePtr					node = NULL;
	TTDataPtr					aData;
	TTXmlHandlerPtr				aXmlHandler;
	
	// add 'preset' after the address
	presetLevelAddress = relativeAddress->s_name;
	presetLevelAddress += "/preset";
	
	// if the subscription is successful
	if (!jamoma_subscriber_create((ObjectPtr)x, x->wrappedObject, jamoma_parse_dieze((ObjectPtr)x, gensym((char*)presetLevelAddress.data())), &x->subscriberObject)) {
		
		// get all info relative to our patcher
		jamoma_patcher_get_info((ObjectPtr)x, &x->patcherPtr, &x->patcherContext, &x->patcherClass, &x->patcherName);
		
		// get the Node (.../preset) and his parent
		x->subscriberObject->getAttributeValue(TT("node"), n);
		n.get(0, (TTPtr*)&node);
		
		// set the Address attribute of the PresetManager if it is empty
		x->wrappedObject->getAttributeValue(kTTSym_address, v);
		v.get(0, &absoluteAddress);
		if (absoluteAddress == kTTSymEmpty) {
			node->getParent()->getOscAddress(&absoluteAddress);
			x->wrappedObject->setAttributeValue(kTTSym_address, absoluteAddress);
		}

		// expose messages of TTPreset as TTData in the tree structure
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("Store"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_array);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Store a preset giving his index and his name"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("StoreCurrent"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Store into the current preset"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("StoreNext"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_string);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Store into the next preset"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("StorePrevious"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_string);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Store into the previous preset"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("Recall"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_generic);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Recall a preset using his name or his index"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("RecallCurrent"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(v, TT("Recall the current preset"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("RecallNext"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Recall the next preset"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("RecallPrevious"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Recall the previous preset"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("Remove"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_generic);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Remove a preset using his name or his index"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("RemoveCurrent"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Recall the current preset"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("RemoveNext"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Recall the next preset"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("RemovePrevious"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Recall the previous preset"));
		
		// expose attributes of TTPreset as TTData in the tree structure
		x->subscriberObject->exposeAttribute(x->wrappedObject, kTTSym_names, kTTSym_return, &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_array);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("The preset name list"));
		
		// create internal TTXmlHandler and internal messages for Read and Write
		aXmlHandler = NULL;
		TTObjectInstantiate(TT("XmlHandler"), TTObjectHandle(&aXmlHandler), args);
		v = TTValue(TTPtr(aXmlHandler));
		x->internals->append(TT("XmlHandler"), v);
		v = TTValue(TTPtr(x->wrappedObject));
		aXmlHandler->setAttributeValue(kTTSym_object, v);
		
		makeInternals_data(self, absoluteAddress, TT("preset/read"), gensym("preset_read"), x->patcherPtr, kTTSym_message, (TTObjectPtr*)&aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_string);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Read a xml preset file"));
		
		makeInternals_data(self, absoluteAddress, TT("preset/read/again"), gensym("preset_read_again"), x->patcherPtr, kTTSym_message, (TTObjectPtr*)&aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_string);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Read from the last xml preset file"));
		
		makeInternals_data(self, absoluteAddress, TT("preset/write"), gensym("preset_write"), x->patcherPtr, kTTSym_message, (TTObjectPtr*)&aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_string);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Write a xml preset file"));
		
		makeInternals_data(self, absoluteAddress, TT("preset/write/again"), gensym("preset_write_again"), x->patcherPtr, kTTSym_message, (TTObjectPtr*)&aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_string);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Write into the last xml preset file"));
		
		// TODO : create internal TTTextHandler to edit in Max edition window
	
		// if desired, load default xxx.patcherContext.xml file preset
		if (EXTRA->attr_load_default)
			defer_low(x, (method)preset_default, 0, 0, 0L);
	}
}

// Method for Assistance Messages
void preset_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	if (msg==1)			// Inlets
		strcpy(dst, "");		
	else {							// Outlets
		switch(arg) {
			case data_out:
				strcpy(dst, "preset output");
				break;
			case dump_out:
				strcpy(dst, "dumpout");
				break;
		}
 	}
}

void preset_return_names(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	outlet_anything(x->outlets[data_out], gensym("names"), argc, argv);
}

void preset_read(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	defer(self, (method)preset_doread, msg, argc, argv);
}

void preset_doread(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{	
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue			o, v;
	TTSymbolPtr		fullpath;
	TTXmlHandlerPtr	aXmlHandler = NULL;
	TTErr			tterr;
	
	if (x->wrappedObject) {
		
		fullpath = jamoma_file_read((ObjectPtr)x, argc, argv);
		v.append(fullpath);
		
		tterr = x->internals->lookup(TT("XmlHandler"), o);
		
		if (!tterr) {
			
			o.get(0, (TTPtr*)&aXmlHandler);
			
			critical_enter(0);
			aXmlHandler->sendMessage(TT("Read"), v);
			critical_exit(0);
		}
	}
}

void preset_read_again(TTPtr self)
{
	defer(self, (method)preset_doread_again, NULL, 0, NULL);
}

void preset_doread_again(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTXmlHandlerPtr	aXmlHandler = NULL;
	TTValue			o;
	TTErr			tterr;
	
	tterr = x->internals->lookup(TT("XmlHandler"), o);
	
	if (!tterr) {
		
		o.get(0, (TTPtr*)&aXmlHandler);
		
		critical_enter(0);
		aXmlHandler->sendMessage(TT("ReadAgain"));
		critical_exit(0);
	}
}

void preset_write(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	defer(self, (method)preset_dowrite, msg, argc, argv);
}

void preset_dowrite(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	char 			filename[MAX_FILENAME_CHARS];
	TTSymbolPtr		fullpath;
	TTValue			o, v;
	TTXmlHandlerPtr	aXmlHandler;
	TTErr			tterr;
	
	// stop filewatcher
	if (EXTRA->filewatcher)
		filewatcher_stop(EXTRA->filewatcher);
	
	if (x->wrappedObject) {
		
		// Default XML File Name
		snprintf(filename, MAX_FILENAME_CHARS, "%s.%s.xml", x->patcherClass->getCString(), x->patcherContext->getCString());
		fullpath = jamoma_file_write((ObjectPtr)x, argc, argv, filename);
		v.append(fullpath);
		
		tterr = x->internals->lookup(TT("XmlHandler"), o);
		
		if (!tterr) {
			o.get(0, (TTPtr*)&aXmlHandler);
			
			critical_enter(0);
			aXmlHandler->sendMessage(TT("Write"), v);
			critical_exit(0);
		}
	}
	
	// start filewatcher
	if (EXTRA->filewatcher)
		filewatcher_start(EXTRA->filewatcher);
}

void preset_write_again(TTPtr self)
{
	defer(self, (method)preset_dowrite_again, NULL, 0, NULL);
}

void preset_dowrite_again(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTXmlHandlerPtr	aXmlHandler = NULL;
	TTValue			o;
	TTErr			tterr;
	
	tterr = x->internals->lookup(TT("XmlHandler"), o);
	
	if (!tterr) {
		
		o.get(0, (TTPtr*)&aXmlHandler);
		
		critical_enter(0);
		aXmlHandler->sendMessage(TT("WriteAgain"));
		critical_exit(0);
	}
}

void preset_default(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	short		outvol;
	long		outtype, filetype = 'TEXT';
	char 		fullpath[MAX_PATH_CHARS];		// path and name passed on to the xml parser
	char		posixpath[MAX_PATH_CHARS];
	Atom		a;

	if (x->patcherClass) {
		
		TTString xmlfile = x->patcherClass->getCString();
		if (x->patcherContext) {
			xmlfile += ".";
			xmlfile +=  x->patcherContext->getCString();
		}
		else
			object_error((ObjectPtr)x, "preset_default : can't get the context of the patcher");
		
		xmlfile += ".xml";
		
		if (locatefile_extended((char*)xmlfile.data(), &outvol, &outtype, &filetype, 1)) {
			//object_warn((ObjectPtr)x, "preset_default : can't find %s file in the Max search path", xmlfile.data());
			return;
		}
		
		path_topathname(outvol, (char*)xmlfile.data(), fullpath);
		path_nameconform(fullpath, posixpath, PATH_STYLE_NATIVE, PATH_TYPE_BOOT);
		
		atom_setsym(&a, gensym(posixpath));
		defer_low(self, (method)preset_doread, gensym("read"), 1, &a);
		
		// recall first preset
		atom_setlong(&a, 1);
		defer_low((ObjectPtr)x, (method)preset_dorecall, NULL, 1, &a);
		
		// replace filewatcher
		if (EXTRA->filewatcher) {
			filewatcher_stop(EXTRA->filewatcher);
			object_free(EXTRA->filewatcher);
		}
		
		EXTRA->filewatcher = filewatcher_new((ObjectPtr)x, outvol, (char*)xmlfile.data());
		filewatcher_start(EXTRA->filewatcher);
	}
	else
		object_error((ObjectPtr)x, "preset_default : can't get the class of the patcher");
}

void preset_filechanged(TTPtr self, char *filename, short path)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	char 		fullpath[MAX_PATH_CHARS];		// path and name passed on to the xml parser
	char			posixpath[MAX_PATH_CHARS];
	TTValue		v;
	long		i;
	Atom		a;
	
	// get current preset
	x->wrappedObject->sendMessage(TT("current"), v);
	
	path_topathname(path, filename, fullpath);
	path_nameconform(fullpath, posixpath, PATH_STYLE_NATIVE, PATH_TYPE_BOOT);
	
	atom_setsym(&a, gensym(posixpath));
	defer_low(self, (method)preset_doread, gensym("read"), 1, &a);
	
	// try to recall last current preset
	v.get(0, i);
	atom_setlong(&a, i);
	defer_low((ObjectPtr)x, (method)preset_dorecall, NULL, 1, &a);
}

void preset_dorecall(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue		v;

	if (argc && argv) {
		if (atom_gettype(argv) == A_LONG) {

			// Then recall the preset
			v = TTValue((int)atom_getlong(argv));
			x->wrappedObject->sendMessage(TT("Recall"), v);
		}
	}
}

void preset_edit(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	char* text = NULL;
	long textsize = 0;
	
	if (!EXTRA->textEditor)
		EXTRA->textEditor = (t_object*)object_new(_sym_nobox, _sym_jed, x, 0);
	
	if (!EXTRA->textSize) {
		EXTRA->textSize = 4096;
		EXTRA->text = (char*)malloc(sizeof(char) * EXTRA->textSize);
	}
	EXTRA->text[0] = 0;
	
	critical_enter(0);
	// TODO : fill the editor
	/*
	 for (i = subscriber->begin(); i != subscriber->end(); ++i) {
		t = *i;
		if (t->type == jps_subscribe_parameter) {
			long ac = NULL;
			t_atom* av = NULL;
	 
			object_attr_getvalueof(t->object, jps_value, &ac, &av); // get
			atom_gettext(ac, av, &textsize, &text, 0);
	 
			// this is a really lame way to do this...
			if (strlen(x->text) > (x->textSize - 1024)) {
				x->textSize += 4096;
				x->text = (char*)realloc(x->text, x->textSize);
			}
	 
			strncat_zero(x->text, x->osc_name->s_name, x->textSize);
			strncat_zero(x->text, "/", x->textSize);
			strncat_zero(x->text, t->name->s_name, x->textSize);
			strncat_zero(x->text, " ", x->textSize);
			strncat_zero(x->text, text, x->textSize);
			strncat_zero(x->text, "\n", x->textSize);
	 
			sysmem_freeptr(text);
			text = NULL;
			textsize = 0;
		}
	 }
	 */
	critical_exit(0);
	
	// TODO : pass the buffer
	object_method(EXTRA->textEditor, _sym_settext, EXTRA->text, _sym_utf_8);
	object_attr_setchar(EXTRA->textEditor, gensym("scratch"), 1);
	object_attr_setsym(EXTRA->textEditor, _sym_title, gensym("jamoma module state"));
	
	sysmem_freeptr(text);
}

void preset_edclose(TTPtr self, char **text, long size)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	EXTRA->textEditor = NULL;
}

t_max_err preset_set_load_default(TTPtr self, TTPtr attr, AtomCount ac, AtomPtr av) 
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if (ac&&av) {
		EXTRA->attr_load_default = atom_getlong(av) == 1;
	}
	else
		EXTRA->attr_load_default = true; // default true
	
	return MAX_ERR_NONE;
}

t_max_err preset_get_load_default(TTPtr self, TTPtr attr, AtomCount *ac, AtomPtr *av)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if ((*ac)&&(*av)) {
		//memory passed in, use it
	} else {
		//otherwise allocate memory
		*ac = 1;
		if (!(*av = (AtomPtr)getbytes(sizeof(Atom)*(*ac)))) {
			*ac = 0;
			return MAX_ERR_OUT_OF_MEM;
		}
	}
	
	atom_setlong(*av, EXTRA->attr_load_default == 1);
	
	return MAX_ERR_NONE;
}