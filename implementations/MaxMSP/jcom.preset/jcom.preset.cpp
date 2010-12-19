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

// Definitions
void		WrapTTPresetManagerClass(WrappedClassPtr c);
void		WrappedPresetManagerClass_new(TTPtr self, AtomCount argc, AtomPtr argv);

void		preset_assist(TTPtr self, void *b, long msg, long arg, char *dst);

void		preset_return_names(TTPtr self, t_symbol *msg, long argc, t_atom *argv);

void		preset_read(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		preset_doread(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		preset_write(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		preset_dowrite(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		preset_default(TTPtr self);
void		preset_dorecall_first(TTPtr self);

void		preset_build(TTPtr self, SymbolPtr address);


int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTPresetManagerClass;
	spec->_new = &WrappedPresetManagerClass_new;
	spec->_free = NULL;
	spec->_any = NULL;
	
	return wrapTTModularClassAsMaxClass(TT("PresetManager"), "jcom.preset", NULL, spec);
}

void WrapTTPresetManagerClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)preset_assist,					"assist",				A_CANT, 0L);
	
	class_addmethod(c->maxClass, (method)preset_return_names,			"return_names",			A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)preset_read,					"read/xml",				A_GIMME, 0);
	class_addmethod(c->maxClass, (method)preset_write,					"write/xml",			A_GIMME, 0);
}

void WrappedPresetManagerClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	SymbolPtr					address;
 	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments
	
	// A Modular object needs an address argument
	if (attrstart && argv) 
		address = atom_getsym(argv);
	else
		address = _sym_nothing;
	
	// create the preset manager
	jamoma_presetManager_create((ObjectPtr)x, &x->wrappedObject);
	
	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	defer_low((ObjectPtr)x, (method)preset_build, address, 0, 0);
	
	// Make two outlets
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 1);
	x->outlets[data_out] = outlet_new(x, NULL);						// anything outlet to output data
	
	// Prepare Internals hash to store XmlHanler and TextHandler object
	x->internals = new TTHash();
	
	// handle attribute args
	attr_args_process(x, argc, argv);
}

void preset_build(TTPtr self, SymbolPtr address)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue						v, n, args;
	TTString					presetLevelAddress;
	TTSymbolPtr					absoluteAddress;
	TTNodePtr					node = NULL;
	TTDataPtr					aData;
	TTXmlHandlerPtr				aXmlHandler;
	TTPtr						context;
	
	// add 'preset' after the address
	presetLevelAddress = address->s_name;
	presetLevelAddress += "/preset";
	
	jamoma_patcher_type_and_class((ObjectPtr)x, &x->patcherType, &x->patcherClass);
	jamoma_subscriber_create((ObjectPtr)x, x->wrappedObject, jamoma_parse_dieze((ObjectPtr)x, gensym((char*)presetLevelAddress.data())), x->patcherType, &x->subscriberObject);
	
	// if the subscription is successful
	if (x->subscriberObject) {
		
		// get the Node (.../preset) and his parent
		x->subscriberObject->getAttributeValue(TT("node"), n);
		n.get(0, (TTPtr*)&node);
		
		// set the Address attribute of the PresetManager
		node->getParent()->getOscAddress(&absoluteAddress);
		v.append(absoluteAddress);
		x->wrappedObject->setAttributeValue(kTTSym_address, v);

		// attach to the patcher to be notified of his destruction
		context = node->getContext();
		// Crash : object_attach_byptr_register(x, context, _sym_box);
		
		// expose messages of TTPreset as TTData in the tree structure
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("Store"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_array);
		aData->setAttributeValue(kTTSym_description, TT("Store a preset giving his index and his name"));
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("StoreCurrent"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_description, TT("Store into the current preset"));
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("StoreNext"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_string);
		aData->setAttributeValue(kTTSym_description, TT("Store into the next preset"));
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("StorePrevious"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_string);
		aData->setAttributeValue(kTTSym_description, TT("Store into the previous preset"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("Recall"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Recall a preset using his name or his index"));
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("RecallCurrent"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(v, TT("Recall the current preset"));
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("RecallNext"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_description, TT("Recall the next preset"));
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("RecallPrevious"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_description, TT("Recall the previous preset"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("Remove"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Remove a preset using his name or his index"));
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("RemoveCurrent"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_description, TT("Recall the current preset"));
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("RemoveNext"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_description, TT("Recall the next preset"));
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("RemovePrevious"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_description, TT("Recall the previous preset"));
		
		// expose attributes of TTPreset as TTData in the tree structure
		x->subscriberObject->exposeAttribute(x->wrappedObject, kTTSym_names, kTTSym_return, &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_array);
		aData->setAttributeValue(kTTSym_description, TT("The preset name list"));
		
		// create internal TTXmlHandler and expose Read and Write message
		aXmlHandler = NULL;
		TTObjectInstantiate(TT("XmlHandler"), TTObjectHandle(&aXmlHandler), args);
		v = TTValue(TTPtr(aXmlHandler));
		x->internals->append(TT("XmlHandler"), v);
		v = TTValue(TTPtr(x->wrappedObject));
		aXmlHandler->setAttributeValue(kTTSym_object, v);
		
		x->subscriberObject->exposeMessage(aXmlHandler, TT("Read"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_string);
		aData->setAttributeValue(kTTSym_description, TT("Read a xml preset file"));
		x->subscriberObject->exposeMessage(aXmlHandler, TT("Write"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_string);
		aData->setAttributeValue(kTTSym_description, TT("Write a xml preset file"));
		
		// TODO : create internal TTTextHandler and expose Read and Write message
	
		// load default jmod.model.xml file preset
		defer_low(x, (method)preset_default, 0, 0, 0L);
	}
}

// Method for Assistance Messages
void preset_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	if (msg==1)			// Inlets
		strcpy(dst, "");		
	else if (msg==2)		// Outlets
		strcpy(dst, "");
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
	char 			filepath[MAX_FILENAME_CHARS];	// for storing the name of the file locally
	char 			fullpath[MAX_PATH_CHARS];		// path and name passed on to the xml parser
	short 			path;							// pathID#
    long			filetype = 'TEXT', outtype;		// the file type that is actually true
	TTValue			o, v;
	SymbolPtr		userpath;
	TTSymbolPtr		nodeAddress;
	TTXmlHandlerPtr	aXmlHandler = NULL;
	//TTTextHandlerPtr	aTextHandler;
	TTErr			tterr;
	
	if (argc && argv)
		if (atom_gettype(argv) == A_SYM)
			userpath = atom_getsym(argv);
		else {
			object_error((t_object*)x, "%s : needs a symbol", msg->s_name);
			return;
		}
	
	// select file format
	if (msg == gensym("read/xml"))
		filetype = 'TEXT';
	else if (msg == gensym("read/text")) 
		filetype = 'TEXT';
	else {
		object_error((t_object*)x, "%s : no file format specified", msg->s_name);
		return;
	}
	
	// Get absolute filepath using Max API
	strcpy(filepath, userpath->s_name);									// Copy symbol argument to a local string
	if (locatefile_extended(filepath, &path, &outtype, &filetype, 1)) {	// Returns 0 if successful
		
		x->subscriberObject->getAttributeValue(TT("nodeAddress"), v);
		v.get(0, (TTPtr*)&nodeAddress);
		// TODO :object_error((t_object*)x, "%s : file not found", gensym((char*)nodeAddress->getCString()));
		return;
	}
	
	jcom_core_getfilepath(path, filepath, fullpath);
	
	if (x->wrappedObject) {
		v.clear();
		v.append(TT(fullpath));
		
		// select method to use
		if (msg == gensym("read/xml")) {
			tterr = x->internals->lookup(TT("XmlHandler"), o);
			
			if (!tterr) {
				
				o.get(0, (TTPtr*)&aXmlHandler);
				
				critical_enter(0);
				aXmlHandler->sendMessage(TT("Read"), v);
				critical_exit(0);
			}
		}
		else if (msg == gensym("read/text")) 
			;// aTextHandler->senMessage(TT("Read"), v);
	}
}

void preset_write(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	defer(self, (method)preset_dowrite, msg, argc, argv);
}

void preset_dowrite(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	char 			filepath[MAX_FILENAME_CHARS];	// for storing the name of the file locally
	char 			fullpath[MAX_PATH_CHARS];		// for storing the absolute path of the file
	short 			path, err;						// pathID#, error number
	t_filehandle	file_handle;					// a reference to our file (for opening it, closing it, etc.)
	long			filetype = 'TEXT', outtype;		// the file type that is actually true
	TTValue			o, v;
	SymbolPtr		userpath;
	TTSymbolPtr		nodeAddress;
	TTXmlHandlerPtr	aXmlHandler;
	//TTTextHandlerPtr	aTextHandler;
	TTErr			tterr;
	
	if (argc && argv)
		if (atom_gettype(argv) == A_SYM)
			userpath = atom_getsym(argv);
		else {
			object_error((t_object*)x, "%s : needs a symbol", msg->s_name);
			return;
		}
	
	// select file format
	if (msg == gensym("write/xml"))
		filetype = 'TEXT';
	else if (msg == gensym("write/text"))
		filetype = 'TEXT';
	else
		object_error((t_object*)x, "%s : no file format specified", msg->s_name);
	
	// Create a file using Max API
	path = 0;
	strcpy(filepath, userpath->s_name);									// Copy symbol argument to a local string
	err = path_createsysfile(filepath, path, filetype, &file_handle);
	
	// Get absolute filepath using Max API
	if (locatefile_extended(filepath, &path, &outtype, &filetype, 1)) {	// Returns 0 if successful
		x->subscriberObject->getAttributeValue(TT("nodeAddress"), v);
		v.get(0, (TTPtr*)&nodeAddress);
		object_error((t_object*)x, "%s : file not created", gensym((char*)nodeAddress->getCString()));
		return;
	}
	
	jcom_core_getfilepath(path, filepath, fullpath);
	
	if (x->wrappedObject) {
		v.clear();
		v.append(TT(fullpath));
		
		// select method to use
		if (msg == gensym("write/xml")) {
			tterr = x->internals->lookup(TT("XmlHandler"), o);
			
			if (!tterr) {
				
				o.get(0, (TTPtr*)&aXmlHandler);
				
				critical_enter(0);
				aXmlHandler->sendMessage(TT("Write"), v);
				critical_exit(0);
			}
		}
		else if (msg == gensym("write/text")) 
			;// aTextHandler->senMessage(TT("Write"), v);
	}
}

void preset_default(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTSymbolPtr patcherClass;
	TTSymbolPtr patcherType;
	Atom		a;

	jamoma_patcher_type_and_class((ObjectPtr)x, &patcherType, &patcherClass);
	
	if (patcherType != kTTSymEmpty && patcherClass != kTTSymEmpty) {
		
		TTString xmlfile = patcherType->getCString();
		xmlfile += ".";
		xmlfile += patcherClass->getCString();
		xmlfile += ".xml";
		
		// DEBUG
		//post("preset_default : %s", (char*)xmlfile.data());
		
		atom_setsym(&a, gensym((char*)xmlfile.data()));
		defer_low(self, (method)preset_doread, gensym("read/xml"), 1, &a);
		
		defer_low((ObjectPtr)x, (method)preset_dorecall_first, NULL, 0, 0);
	}
}

void preset_dorecall_first(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue		v;
	TTNodePtr	contextNode;
	TTObjectPtr	o;
	TTBoolean	initialized;

	x->wrappedObject->sendMessage(TT("Recall"), kTTVal1);
	
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

