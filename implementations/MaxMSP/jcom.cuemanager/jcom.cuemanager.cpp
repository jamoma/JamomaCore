/* 
 *	jcom.cuemanager
 *	External object
 *	Copyright © 2010 by Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTModularClassWrapperMax.h"
#include "jpatcher_api.h"

#define data_out 0

// This is used to store extra data
typedef struct extra {
	TTPtr		filewatcher;		// a cue filewather
	char*		text;				// text used by /getstate window
	TTUInt32	textSize;			// how many chars are alloc'd to text
	ObjectPtr	textEditor;			// the text editor window
} t_extra;
#define EXTRA ((t_extra*)x->extra)

// Definitions
void		WrapTTCueManagerClass(WrappedClassPtr c);
void		WrappedCueManagerClass_new(TTPtr self, AtomCount argc, AtomPtr argv);
void		WrappedCueManageClass_free(TTPtr self);

void		cue_assist(TTPtr self, void *b, long msg, long arg, char *dst);

void		cue_return_names(TTPtr self, t_symbol *msg, long argc, t_atom *argv);
void		cue_filechanged(TTPtr self, char *filename, short path);

void		cue_read(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		cue_doread(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		cue_write(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		cue_dowrite(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		cue_default(TTPtr self);
void		cue_dorecall(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		cue_edit(TTPtr self);
void		cue_edclose(TTPtr self, char **text, long size);

void		cue_build(TTPtr self, SymbolPtr address);


int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTCueManagerClass;
	spec->_new = &WrappedCueManagerClass_new;
	spec->_free = &WrappedCueManageClass_free;
	spec->_any = NULL;
	
	return wrapTTModularClassAsMaxClass(TT("CueManager"), "jcom.cuemanager", NULL, spec);
}

void WrapTTCueManagerClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)cue_assist,				"assist",				A_CANT, 0L);
	
	class_addmethod(c->maxClass, (method)cue_return_names,			"return_names",			A_CANT, 0);
	class_addmethod(c->maxClass, (method)cue_filechanged,			"filechanged",			A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)cue_read,					"cue_read",				A_CANT, 0);
	class_addmethod(c->maxClass, (method)cue_write,					"cue_write",			A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)cue_edit,					"dblclick",				A_CANT, 0);
	class_addmethod(c->maxClass, (method)cue_edclose,				"edclose",				A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)cue_read,					"read",					A_GIMME, 0);
	class_addmethod(c->maxClass, (method)cue_write,					"write",				A_GIMME, 0);
}

void WrappedCueManagerClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	SymbolPtr					address;
 	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments
	
	// A Modular object needs an address argument
	if (attrstart && argv) 
		address = atom_getsym(argv);
	else
		address = _sym_nothing;
	
	// create the cue manager
	jamoma_cueManager_create((ObjectPtr)x, &x->wrappedObject);
	
	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	defer_low((ObjectPtr)x, (method)cue_build, address, 0, 0);
	
	// Make two outlets
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 1);
	x->outlets[data_out] = outlet_new(x, NULL);						// anything outlet to output data
	
	// Prepare Internals hash to store XmlHanler and TextHandler object
	x->internals = new TTHash();
	
	// Prepare extra data
	x->extra = (t_extra*)malloc(sizeof(t_extra));
	EXTRA->filewatcher = NULL;
	EXTRA->textSize = 0;
	EXTRA->textEditor = NULL;
	
	// handle attribute args
	attr_args_process(x, argc, argv);
}

void WrappedCueManageClass_free(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	// delete filewatcher
	if (EXTRA->filewatcher) {
		filewatcher_stop(EXTRA->filewatcher);
		object_free(EXTRA->filewatcher);
	}
	
	free(EXTRA);
}

void cue_build(TTPtr self, SymbolPtr address)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue						v, n, args;
	TTString					cueLevelAddress;
	TTSymbolPtr					absoluteAddress;
	TTNodePtr					node = NULL;
	TTDataPtr					aData;
	TTXmlHandlerPtr				aXmlHandler;
	TTPtr						context;
	
	// add 'cue' after the address
	cueLevelAddress = address->s_name;
	cueLevelAddress += "/cue";
	
	jamoma_patcher_type_and_class((ObjectPtr)x, &x->patcherType, &x->patcherClass);
	jamoma_subscriber_create((ObjectPtr)x, x->wrappedObject, jamoma_parse_dieze((ObjectPtr)x, gensym((char*)cueLevelAddress.data())), x->patcherType, &x->subscriberObject);
	
	// if the subscription is successful
	if (x->subscriberObject) {
		
		// get the Node (.../cue) and his parent
		x->subscriberObject->getAttributeValue(TT("node"), n);
		n.get(0, (TTPtr*)&node);
		
		// set the Address attribute of the CueManager if it is empty
		x->wrappedObject->getAttributeValue(kTTSym_addresses, v);
		v.get(0, &absoluteAddress);
		if (absoluteAddress == kTTSymEmpty) {
			node->getParent()->getOscAddress(&absoluteAddress);
			x->wrappedObject->setAttributeValue(kTTSym_addresses, absoluteAddress);
		}
		
		// attach to the patcher to be notified of his destruction
		context = node->getContext();
		// Crash : object_attach_byptr_register(x, context, _sym_box);
		
		// expose messages of TTCue as TTData in the tree structure
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("Store"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_array);
		aData->setAttributeValue(kTTSym_description, TT("Store a cue giving his index and his name"));
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("StoreCurrent"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_description, TT("Store into the current cue"));
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("StoreNext"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_string);
		aData->setAttributeValue(kTTSym_description, TT("Store into the next cue"));
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("StorePrevious"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_string);
		aData->setAttributeValue(kTTSym_description, TT("Store into the previous cue"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("Recall"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Recall a cue using his name or his index"));
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("RecallCurrent"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(v, TT("Recall the current cue"));
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("RecallNext"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_description, TT("Recall the next cue"));
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("RecallPrevious"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_description, TT("Recall the previous cue"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("Remove"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Remove a cue using his name or his index"));
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("RemoveCurrent"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_description, TT("Recall the current cue"));
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("RemoveNext"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_description, TT("Recall the next cue"));
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("RemovePrevious"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_description, TT("Recall the previous cue"));
		
		// expose attributes of TTCue as TTData in the tree structure
		x->subscriberObject->exposeAttribute(x->wrappedObject, kTTSym_names, kTTSym_return, &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_array);
		aData->setAttributeValue(kTTSym_description, TT("The cue name list"));
		
		// create internal TTXmlHandler and internal messages for Read and Write
		aXmlHandler = NULL;
		TTObjectInstantiate(TT("XmlHandler"), TTObjectHandle(&aXmlHandler), args);
		v = TTValue(TTPtr(aXmlHandler));
		x->internals->append(TT("XmlHandler"), v);
		v = TTValue(TTPtr(x->wrappedObject));
		aXmlHandler->setAttributeValue(kTTSym_object, v);
		
		//x->subscriberObject->exposeMessage(aXmlHandler, TT("Read"), &aData);
		makeInternals_data(self, absoluteAddress, TT("cue/read"), gensym("cue_read"), context, kTTSym_message, (TTObjectPtr*)&aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_string);
		aData->setAttributeValue(kTTSym_description, TT("Read a xml cue file"));
		
		//x->subscriberObject->exposeMessage(aXmlHandler, TT("Write"), &aData);
		makeInternals_data(self, absoluteAddress, TT("cue/write"), gensym("cue_write"), context, kTTSym_message, (TTObjectPtr*)&aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_string);
		aData->setAttributeValue(kTTSym_description, TT("Write a xml cue file"));
		
		// TODO : create internal TTTextHandler to edit in Max edition window
		
		// load default jmod.model.xml file cue
		defer_low(x, (method)cue_default, 0, 0, 0L);
	}
}

// Method for Assistance Messages
void cue_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	if (msg==1)			// Inlets
		strcpy(dst, "");		
	else if (msg==2)		// Outlets
		strcpy(dst, "");
}

void cue_return_names(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	outlet_anything(x->outlets[data_out], gensym("names"), argc, argv);
}

void cue_read(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	defer(self, (method)cue_doread, msg, argc, argv);
}

void cue_doread(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
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

void cue_write(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	defer(self, (method)cue_dowrite, msg, argc, argv);
}

void cue_dowrite(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
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
		snprintf(filename, MAX_FILENAME_CHARS, "%s.%s.xml", x->patcherType->getCString(), x->patcherClass->getCString());
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

void cue_default(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTSymbolPtr patcherClass;
	TTSymbolPtr patcherType;
	short		outvol;
	long		outtype, filetype = 'TEXT';
	char 		fullpath[MAX_PATH_CHARS];		// path and name passed on to the xml parser
	Atom		a;
	
	jamoma_patcher_type_and_class((ObjectPtr)x, &patcherType, &patcherClass);
	
	if (patcherType != kTTSymEmpty && patcherClass != kTTSymEmpty) {
		
		TTString xmlfile = patcherType->getCString();
		xmlfile += ".";
		xmlfile += patcherClass->getCString();
		xmlfile += ".xml";
		
		if (locatefile_extended((char*)xmlfile.data(), &outvol, &outtype, &filetype, 1)) {
			object_warn((ObjectPtr)x, "cue_default : can't find %s file in the Max search path", xmlfile.data());
			return;
		}
		
		jcom_core_getfilepath(outvol, (char*)xmlfile.data(), fullpath);
		
		atom_setsym(&a, gensym(fullpath));
		defer_low(self, (method)cue_doread, gensym("read"), 1, &a);
		
		// recall first cue
		atom_setlong(&a, 1);
		defer_low((ObjectPtr)x, (method)cue_dorecall, NULL, 1, &a);
		
		// replace filewatcher
		if (EXTRA->filewatcher) {
			filewatcher_stop(EXTRA->filewatcher);
			object_free(EXTRA->filewatcher);
		}
		
		EXTRA->filewatcher = filewatcher_new((ObjectPtr)x, outvol, (char*)xmlfile.data());
		filewatcher_start(EXTRA->filewatcher);
	}
}

void cue_filechanged(TTPtr self, char *filename, short path)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	char 		fullpath[MAX_PATH_CHARS];		// path and name passed on to the xml parser
	TTValue		v;
	long		i;
	Atom		a;
	
	// get current cue
	x->wrappedObject->sendMessage(TT("current"), v);
	
	jcom_core_getfilepath(path, filename, fullpath);
	
	atom_setsym(&a, gensym(fullpath));
	defer_low(self, (method)cue_doread, gensym("read"), 1, &a);
	
	// try to recall last current cue
	v.get(0, i);
	atom_setlong(&a, i);
	defer_low((ObjectPtr)x, (method)cue_dorecall, NULL, 1, &a);
}

void cue_dorecall(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue		v;
	TTNodePtr	contextNode;
	TTObjectPtr	o;
	TTBoolean	initialized;
	
	if (argc && argv) {
		if (atom_gettype(argv) == A_LONG) {
			v = TTValue((int)atom_getlong(argv));
			x->wrappedObject->sendMessage(TT("Recall"), v);
		}
		
		// Check Context Node
		if (x->subscriberObject) {
			
			x->subscriberObject->getAttributeValue(TT("contextNode"), v);
			v.get(0, (TTPtr*)&contextNode);
			
			// If it is a none initialized Container : initialize it
			if (o = contextNode->getObject())
				if (o->getName() == TT("Container")) {
					
					o->getAttributeValue(kTTSym_initialized, v);
					v.get(0, initialized);
					
					if (!initialized)
						o->sendMessage(TT("Init"));
				}
		}
	}
}

void cue_edit(TTPtr self)
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

void cue_edclose(TTPtr self, char **text, long size)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	EXTRA->textEditor = NULL;
}