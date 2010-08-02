/* 
 *	jcom.preset
 *	External object
 *	Copyright © 2010 by Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTModularClassWrapperMax.h"

#define data_out 0

// Definitions
void		WrapTTPresetManagerClass(WrappedClassPtr c);
void		WrappedPresetManagerClass_new(TTPtr self, AtomCount argc, AtomPtr argv);

t_max_err	preset_notify(TTPtr self, t_symbol *s, t_symbol *msg, void *sender, void *data);
void		preset_assist(TTPtr self, void *b, long msg, long arg, char *dst);

void		preset_share_context_node(TTPtr self, TTNodePtr *contextNode);

void		preset_return_value(TTPtr self, t_symbol *msg, long argc, t_atom *argv);

void		preset_read(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		preset_doread(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		preset_write(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		preset_dowrite(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		preset_build(TTPtr self, SymbolPtr address);


int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTPresetManagerClass;
	spec->_new = &WrappedPresetManagerClass_new;
	spec->_any = NULL;
	
	return wrapTTModularClassAsMaxClass(TT("PresetManager"), "jcom.preset", NULL, spec);
}

void WrapTTPresetManagerClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)preset_notify,					"notify",				A_CANT, 0);
	class_addmethod(c->maxClass, (method)preset_assist,					"assist",				A_CANT, 0L);
	
	class_addmethod(c->maxClass, (method)preset_share_context_node,		"share_context_node",	A_CANT,	0);
	
	class_addmethod(c->maxClass, (method)preset_return_value,			"return_value",			A_CANT, 0);
	
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
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 2);
	x->outlets[data_out] = outlet_new(x, NULL);						// anything outlet to output data
}

void preset_build(TTPtr self, SymbolPtr address)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue						v, n, p, args;
	TTString					presetLevelAddress;
	TTSymbolPtr					absoluteAddress;
	TTNodePtr					node = NULL;
	TTPtr						context;
	
	// add 'preset' after the address
	presetLevelAddress = address->s_name;
	presetLevelAddress += "/preset";
	
	jamoma_subscriber_create((ObjectPtr)x, x->wrappedObject, gensym((char*)presetLevelAddress.data()), &x->subscriberObject);
	
	// if the subscription is successful
	if (x->subscriberObject) {
		
		// get the Node (.../preset) and his parent
		x->subscriberObject->getAttributeValue(TT("Node"), n);
		n.get(0, (TTPtr*)&node);
		
		// set the Address attribute of the PresetManager
		node->getParent()->getOscAddress(&absoluteAddress);
		v.append(absoluteAddress);
		x->wrappedObject->setAttributeValue(kTTSym_Address, v);

		// attach to the patcher to be notified of his destruction
		 node->getAttributeValue(TT("Context"), v);
		v.get(0, (TTPtr*)&context);
		object_attach_byptr_register(x, context, _sym_box);

	}
}

t_max_err preset_notify(TTPtr self, t_symbol *s, t_symbol *msg, void *sender, void *data)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue	v;
	ObjectPtr context;
	x->subscriberObject->getAttributeValue(TT("Context"), v);
	v.get(0, (TTPtr*)&context);
	
	// if the patcher is deleted
	if (sender == context)
		if (msg == _sym_free) {
			
			// delete
			TTObjectRelease(TTObjectHandle(&x->subscriberObject));
			
			// no more notification
			object_detach_byptr((ObjectPtr)x, context);
		}
	
	return MAX_ERR_NONE;
}

// Method for Assistance Messages
void preset_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	if (msg==1)			// Inlets
		strcpy(dst, "");		
	else if (msg==2)		// Outlets
		strcpy(dst, "");
}

void preset_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	outlet_anything(x->outlets[data_out], msg, argc, argv);
}

void preset_share_context_node(TTPtr self, TTNodePtr *contextNode)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue	v;
	
	if (x->subscriberObject) {
		
		x->subscriberObject->getAttributeValue(TT("ContextNode"), v);
		v.get(0, TTObjectHandle(contextNode));
	}
	else
		*contextNode = NULL;
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
	TTValue			args, v;
	SymbolPtr		userpath;
	TTSymbolPtr		nodeAddress;
	TTXmlHandlerPtr	aXmlHandler = NULL;
	//TTTextHandlerPtr	aTaextHandler;
	TTErr			tterr;
	
	if (argc && argv)
		if (atom_gettype(argv) == A_SYM)
			userpath = atom_getsym(argv);
		else
			object_error((t_object*)x, "%s : needs a symbol", msg->s_name);
	
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
		
		x->subscriberObject->getAttributeValue(TT("NodeAddress"), v);
		v.get(0, (TTPtr*)&nodeAddress);
		// TODO :object_error((t_object*)x, "%s : file not found", gensym((char*)nodeAddress->getCString()));
		return;
	}
	
	jcom_core_getfilepath(path, filepath, fullpath);
	
	if (x->wrappedObject) {
		v.clear();
		v.append((TTPtr)x->wrappedObject);
		v.append(TT(fullpath));
		
		// select method to use
		if (msg == gensym("read/xml")) {
			tterr = TTObjectInstantiate(TT("XmlHandler"), TTObjectHandle(&aXmlHandler), args);
			
			if (!tterr) {
				
				critical_enter(0);
				aXmlHandler->sendMessage(TT("Read"), v);
				critical_exit(0);
				
				TTObjectRelease(TTObjectHandle(&aXmlHandler));
			}
		}
		else if (msg == gensym("read/text")) 
			;// TTObjectInstantiate(TT("TextHandler"), TTObjectHandle(&aTextHandler));
			 // aTextHandler->senMessage(TT("Read"), v);
			 // TTObjectRelease(aTextHandler);
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
	TTValue			args, v;
	SymbolPtr		userpath;
	TTSymbolPtr		nodeAddress;
	TTXmlHandlerPtr	aXmlHandler = NULL;
	//TTTextHandlerPtr	aTaextHandler;
	TTErr			tterr;
	
	if (argc && argv)
		if (atom_gettype(argv) == A_SYM)
			userpath = atom_getsym(argv);
		else
			object_error((t_object*)x, "%s : needs a symbol", msg->s_name);
	
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
		x->subscriberObject->getAttributeValue(TT("NodeAddress"), v);
		v.get(0, (TTPtr*)&nodeAddress);
		object_error((t_object*)x, "%s : file not created", gensym((char*)nodeAddress->getCString()));
		return;
	}
	
	jcom_core_getfilepath(path, filepath, fullpath);
	
	if (x->wrappedObject) {
		v.clear();
		v.append((TTPtr)x->wrappedObject);
		v.append(TT(fullpath));
		
		// select method to use
		if (msg == gensym("write/xml")) {
			tterr = TTObjectInstantiate(TT("XmlHandler"), TTObjectHandle(&aXmlHandler), args);
			
			if (!tterr) {
				
				critical_enter(0);
				aXmlHandler->sendMessage(TT("Write"), v);
				critical_exit(0);
				
				TTObjectRelease(TTObjectHandle(&aXmlHandler));
			}
		}
		else if (msg == gensym("write/text")) 
			;// TTObjectInstantiate(TT("TextHandler"), TTObjectHandle(&aTextHandler));
			 // aTextHandler->senMessage(TT("Write"), v);
			 // TTObjectRelease(aTextHandler);
	}
}