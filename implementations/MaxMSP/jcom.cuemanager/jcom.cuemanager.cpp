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

// This is used to store extra data
typedef struct extra {
	char*		text;				// text used by /getstate window
	TTUInt32	textSize;			// how many chars are alloc'd to text
	ObjectPtr	textEditor;			// the text editor window
} t_extra;
#define EXTRA ((t_extra*)x->extra)

#define data_out 0
#define dump_out 1

// Definitions
void		WrapTTCueManagerClass(WrappedClassPtr c);
void		WrappedCueManagerClass_new(TTPtr self, AtomCount argc, AtomPtr argv);
void		WrappedCueManageClass_free(TTPtr self);

void		cue_assist(TTPtr self, void *b, long msg, long arg, char *dst);

void		cue_read(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		cue_doread(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		cue_read_again(TTPtr self);
void		cue_doread_again(TTPtr self);

void		cue_write(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		cue_dowrite(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		cue_write_again(TTPtr self);
void		cue_dowrite_again(TTPtr self);

void		cue_dorecall(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		cue_edit(TTPtr self);
void		cue_edclose(TTPtr self, char **text, long size);

void		cue_subscribe(TTPtr self);


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
	
	class_addmethod(c->maxClass, (method)cue_read,					"cue_read",				A_CANT, 0);
	class_addmethod(c->maxClass, (method)cue_write,					"cue_write",			A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)cue_edit,					"dblclick",				A_CANT, 0);
	class_addmethod(c->maxClass, (method)cue_edclose,				"edclose",				A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)cue_read,					"read",					A_GIMME, 0);
	class_addmethod(c->maxClass, (method)cue_write,					"write",				A_GIMME, 0);
	
	class_addmethod(c->maxClass, (method)cue_read_again,			"read/again",			0);
	class_addmethod(c->maxClass, (method)cue_write_again,			"write/again",			0);
}

void WrappedCueManagerClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	SymbolPtr					relativeAddress;
 	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments
	
	// possible relativeAddress
	if (attrstart && argv) 
		relativeAddress = atom_getsym(argv);
	else
		relativeAddress = _sym_nothing;
	
	x->address = TTADRS(jamoma_parse_dieze((ObjectPtr)x, relativeAddress)->s_name);
	
	// create the cue manager
	jamoma_cueManager_create((ObjectPtr)x, &x->wrappedObject);
	
	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	defer_low((ObjectPtr)x, (method)cue_subscribe, NULL, 0, 0);
	
	// Make two outlets
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 1);
	x->outlets[data_out] = outlet_new(x, NULL);						// anything outlet to output data
	
	// Prepare Internals hash to store XmlHanler and TextHandler object
	x->internals = new TTHash();
	
	// Prepare extra data
	x->extra = (t_extra*)malloc(sizeof(t_extra));
	EXTRA->textSize = 0;
	EXTRA->textEditor = NULL;
	
	// handle attribute args
	attr_args_process(x, argc, argv);
}

void WrappedCueManageClass_free(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	free(EXTRA);
}

void cue_subscribe(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue						v, n, args;
	TTNodeAddressPtr			absoluteAddress;
	TTNodePtr					node = NULL;
	TTDataPtr					aData;
	TTXmlHandlerPtr				aXmlHandler;
	
	// register the object under a cuelist address
	if (x->address == kTTAdrsEmpty)
		x->address = TTADRS("cuelist");
	
	// if the subscription is successful
	if (!jamoma_subscriber_create((ObjectPtr)x, x->wrappedObject, x->address, &x->subscriberObject)) {
		
		// get patcher
		x->patcherPtr = jamoma_patcher_get((ObjectPtr)x);
		
		// get the Node address
		x->subscriberObject->getAttributeValue(TT("node"), n);
		n.get(0, (TTPtr*)&node);
		node->getAddress(&absoluteAddress);
		
		// expose messages of TTCue as TTData in the tree structure
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("Store"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_array);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Store a cue giving his index and his name"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("StoreCurrent"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Store into the current cue"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("StoreNext"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_string);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Store into the next cue"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("StorePrevious"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_string);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Store into the previous cue"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("Recall"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_generic);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Recall a cue using his name or his index"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("RecallCurrent"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(v, TT("Recall the current cue"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("RecallNext"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Recall the next cue"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("RecallPrevious"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Recall the previous cue"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("Remove"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_generic);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Remove a cue using his name or his index"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("RemoveCurrent"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Recall the current cue"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("RemoveNext"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Recall the next cue"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("RemovePrevious"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Recall the previous cue"));
		
		// expose attributes of TTCue as TTData in the tree structure
		x->subscriberObject->exposeAttribute(x->wrappedObject, kTTSym_names, kTTSym_return, &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_array);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("The cue name list"));
		
		// create internal TTXmlHandler and internal messages for Read and Write
		aXmlHandler = NULL;
		TTObjectInstantiate(TT("XmlHandler"), TTObjectHandle(&aXmlHandler), args);
		v = TTValue(TTPtr(aXmlHandler));
		x->internals->append(TT("XmlHandler"), v);
		v = TTValue(TTPtr(x->wrappedObject));
		aXmlHandler->setAttributeValue(kTTSym_object, v);
		
		//x->subscriberObject->exposeMessage(aXmlHandler, TT("Read"), &aData);
		makeInternals_data(self, absoluteAddress, TT("read"), gensym("cue_read"), x->patcherPtr, kTTSym_message, (TTObjectPtr*)&aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_string);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Read a xml cue file"));
		
		//x->subscriberObject->exposeMessage(aXmlHandler, TT("Write"), &aData);
		makeInternals_data(self, absoluteAddress, TT("write"), gensym("cue_write"), x->patcherPtr, kTTSym_message, (TTObjectPtr*)&aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_string);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Write a xml cue file"));
		
		// TODO : create internal TTTextHandler to edit in Max edition window
	}
}

// Method for Assistance Messages
void cue_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	if (msg==1)			// Inlets
		strcpy(dst, "");		
	else {							// Outlets
		switch(arg) {
			case data_out:
				strcpy(dst, "cue output");
				break;
			case dump_out:
				strcpy(dst, "dumpout");
				break;
		}
 	}
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
		
		fullpath = jamoma_file_read((ObjectPtr)x, argc, argv, 'TEXT');
		v.append(fullpath);
		
		tterr = x->internals->lookup(TT("XmlHandler"), o);
		
		if (!tterr) {
			
			o.get(0, (TTPtr*)&aXmlHandler);
			
			critical_enter(0);
			tterr = aXmlHandler->sendMessage(TT("Read"), v, kTTValNONE);
			critical_exit(0);
			
			if (!tterr)
				object_obex_dumpout(self, _sym_read, argc, argv);
			else
				object_obex_dumpout(self, _sym_error, 0, NULL);
		}
	}
}

void cue_read_again(TTPtr self)
{
	defer(self, (method)cue_doread_again, NULL, 0, NULL);
}

void cue_doread_again(TTPtr self)
{	
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue			o, v;
	TTXmlHandlerPtr	aXmlHandler = NULL;
	TTErr			tterr;
	
	if (x->wrappedObject) {
		
		tterr = x->internals->lookup(TT("XmlHandler"), o);
		
		if (!tterr) {
			
			o.get(0, (TTPtr*)&aXmlHandler);
			
			critical_enter(0);
			tterr = aXmlHandler->sendMessage(TT("ReadAgain"), v, kTTValNONE);
			critical_exit(0);
			
			if (!tterr)
				object_obex_dumpout(self, _sym_read, 0, NULL);
			else
				object_obex_dumpout(self, _sym_error, 0, NULL);
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
	
	if (x->wrappedObject) {
		
		// Default XML File Name
		if (x->patcherContext && x->patcherClass)
			snprintf(filename, MAX_FILENAME_CHARS, "%s.%s.xml", x->patcherContext->getCString(), x->patcherClass->getCString());
		else
			snprintf(filename, MAX_FILENAME_CHARS, "cuelist.xml");
		
		fullpath = jamoma_file_write((ObjectPtr)x, argc, argv, filename);
		v.append(fullpath);
		
		tterr = x->internals->lookup(TT("XmlHandler"), o);
		
		if (!tterr) {
			o.get(0, (TTPtr*)&aXmlHandler);
			
			critical_enter(0);
			tterr = aXmlHandler->sendMessage(TT("Write"), v, kTTValNONE);
			critical_exit(0);
			
			if (!tterr)
				object_obex_dumpout(self, _sym_write, argc, argv);
			else
				object_obex_dumpout(self, _sym_error, 0, NULL);
		}
	}
}

void cue_write_again(TTPtr self)
{
	defer(self, (method)cue_dowrite_again, NULL, 0, NULL);
}

void cue_dowrite_again(TTPtr self)
{	
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue			o, v;
	TTXmlHandlerPtr	aXmlHandler = NULL;
	TTErr			tterr;
	
	if (x->wrappedObject) {
		
		tterr = x->internals->lookup(TT("XmlHandler"), o);
		
		if (!tterr) {
			
			o.get(0, (TTPtr*)&aXmlHandler);
			
			critical_enter(0);
			tterr = aXmlHandler->sendMessage(TT("WriteAgain"), v, kTTValNONE);
			critical_exit(0);
			
			if (!tterr)
				object_obex_dumpout(self, _sym_write, 0, NULL);
			else
				object_obex_dumpout(self, _sym_error, 0, NULL);
		}
	}
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
			x->wrappedObject->sendMessage(TT("Recall"), v, kTTValNONE);
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