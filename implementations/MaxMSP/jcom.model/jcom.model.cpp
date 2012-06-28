/* 
 * jcom.model | view
 * External for Jamoma : the main control center of a model | view patcher
 * By Tim Place and Théo de la Hogue, Copyright � 2010
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTModularClassWrapperMax.h"

// This is used to store extra data
typedef struct extra {
	ObjectPtr			modelInternal;		// store an internal model patcher
	TTNodeAddressPtr	modelAddress;		// store the /model/address parameter
	TTBoolean			component;			// is the model a simple component ?
} t_extra;
#define EXTRA ((t_extra*)x->extra)

#define data_out 0
#define dump_out 1

// Definitions
void		WrapTTContainerClass(WrappedClassPtr c);
void		WrappedContainerClass_new(TTPtr self, AtomCount argc, AtomPtr argv);
void		WrappedContainerClass_free(TTPtr self);
void		WrappedContainerClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		model_assist(TTPtr self, void *b, long msg, long arg, char *dst);

void		model_share_patcher_info(TTPtr self, TTValuePtr patcherInfo);
void		model_share_patcher_node(TTPtr self, TTNodePtr *patcherNode);

void		model_return_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		model_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		model_subscribe(TTPtr self);

void		model_init(TTPtr self);

void		model_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		model_help(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		model_reference(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		model_internals(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		model_mute(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		model_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);		// only in jview patch

void		model_autodoc(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		model_doautodoc(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTContainerClass;
	spec->_new = &WrappedContainerClass_new;
	spec->_free = &WrappedContainerClass_free;
	spec->_any = &WrappedContainerClass_anything;

#ifndef JCOM_VIEW
	return wrapTTModularClassAsMaxClass(TT("Container"), "jcom.model", NULL, spec);
#else
	return wrapTTModularClassAsMaxClass(TT("Container"), "jcom.view", NULL, spec);
#endif
}

void WrapTTContainerClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)model_assist,					"assist",				A_CANT, 0L);
	
	class_addmethod(c->maxClass, (method)model_share_patcher_info,		"share_patcher_info",	A_CANT, 0);
	class_addmethod(c->maxClass, (method)model_share_patcher_node,		"share_patcher_node",	A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)model_return_address,			"return_address",		A_CANT, 0);
	class_addmethod(c->maxClass, (method)model_return_value,			"return_value",			A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)model_help,					"model_help",			A_CANT, 0);
	class_addmethod(c->maxClass, (method)model_reference,				"model_reference",		A_CANT, 0);
	class_addmethod(c->maxClass, (method)model_internals,				"model_internals",		A_CANT, 0);
	class_addmethod(c->maxClass, (method)model_mute,					"model_mute",			A_CANT, 0);
	class_addmethod(c->maxClass, (method)model_address,					"model_address",		A_CANT, 0);
	class_addmethod(c->maxClass, (method)model_autodoc,					"doc_generate",			A_CANT, 0);
}

void WrappedContainerClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
 	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments
		
	// create a container
	jamoma_container_create((ObjectPtr)x, &x->wrappedObject);
	
#ifndef JCOM_VIEW
	x->patcherContext = kTTSym_model;
	x->wrappedObject->setAttributeValue(TT("tag"), kTTSym_model);
#else
	x->patcherContext = kTTSym_view;
	x->wrappedObject->setAttributeValue(TT("tag"), kTTSym_view);
#endif
	
	// handle attribute args
	attr_args_process(x, argc, argv);
		
	// Make two outlets
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 1);
	x->outlets[data_out] = outlet_new(x, NULL);						// anything outlet to output data
	
	// Prepare memory to store internal datas
	x->internals = new TTHash();
	
	// Prepare extra data
	x->extra = (t_extra*)malloc(sizeof(t_extra));
	EXTRA->modelAddress = kTTAdrsEmpty;
	
	// read first argument to know if the model is a component
	if (attrstart && argv) {
		if (atom_getsym(argv) == gensym("component"))
			EXTRA->component = YES;
		else
			object_error((ObjectPtr)x, "%s is not expected as argument", atom_getsym(argv)->s_name);
	}
	
	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	defer_low((ObjectPtr)x, (method)model_subscribe, NULL, 0, 0);
}

void WrappedContainerClass_free(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	free(EXTRA);
}

void model_subscribe(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue						v, args;
	TTNodeAddressPtr			nodeAdrs, argAdrs;
	TTSymbolPtr					classAdrs, helpAdrs, refAdrs, internalsAdrs, documentationAdrs, muteAdrs;
	TTObjectPtr					aData, anExplorer;
	TTTextHandlerPtr			aTextHandler;
	TTPtr						context;
	TTList						whereToSearch;
	TTBoolean					isThere, isSubModel;
	TTNodePtr					firstTTNode;
	TTNodeAddressPtr			containerAdrs;
	SymbolPtr					hierarchy;
	AtomCount					ac;
	AtomPtr						av;
	ObjectPtr					aPatcher = jamoma_patcher_get((ObjectPtr)x);

	// if the subscription is successful
	if (!jamoma_subscriber_create((ObjectPtr)x, x->wrappedObject, kTTAdrsEmpty, &x->subscriberObject)) {
		
		// get all info relative to our patcher
		jamoma_patcher_get_info((ObjectPtr)x, &x->patcherPtr, &x->patcherContext, &x->patcherClass, &x->patcherName);
		
		// get absolute address in the namespace 
		// and set the address attribute of the Container 
		x->subscriberObject->getAttributeValue(TT("nodeAddress"), v);
		v.get(0, &nodeAdrs);
		x->wrappedObject->setAttributeValue(TT("address"), v);
		
		// if the jcom.model is well subscribed
		if (aPatcher == x->patcherPtr && x->patcherContext != NULL) {
			
			// no internal parameter for component
			if (!EXTRA->component) {
				
				if (x->patcherContext == kTTSym_model) {
					classAdrs = TT("model/class");
					helpAdrs =  TT("model/help");
					refAdrs = TT("model/reference");
					internalsAdrs = TT("model/internals");
					documentationAdrs = TT("model/documentation/generate");
					muteAdrs = TT("model/mute");
				}
				else if (x->patcherContext == kTTSym_view) {
					classAdrs = TT("view/class");
					helpAdrs =  TT("view/help");
					refAdrs = TT("view/reference");
					internalsAdrs = TT("view/internals");
					documentationAdrs = TT("view/documentation/generate");
					muteAdrs = TT("view/mute");
				}
				
				// Add a /class data
				makeInternals_data(x, nodeAdrs, classAdrs, gensym("model_class"), context, kTTSym_return, &aData);
				aData->setAttributeValue(kTTSym_type, kTTSym_string);
				aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
				aData->setAttributeValue(kTTSym_description, TT("The patcher class"));
				aData->setAttributeValue(kTTSym_value, x->patcherClass);
				
				// Add a /help data
				makeInternals_data(x, nodeAdrs, helpAdrs, gensym("model_help"), context, kTTSym_message, &aData);
				aData->setAttributeValue(kTTSym_type, kTTSym_none);
				aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
				aData->setAttributeValue(kTTSym_description, TT("Open the maxhelp patch"));
				
				// Add a /reference data
				makeInternals_data(x, nodeAdrs, refAdrs, gensym("model_reference"), context, kTTSym_message, &aData);
				aData->setAttributeValue(kTTSym_type, kTTSym_none);
				aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
				aData->setAttributeValue(kTTSym_description, TT("Open the reference page"));
				
				// Add a /internals data
				makeInternals_data(x, nodeAdrs, internalsAdrs, gensym("model_internals"), context, kTTSym_message, &aData);
				aData->setAttributeValue(kTTSym_type, kTTSym_none);
				aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
				aData->setAttributeValue(kTTSym_description, TT("Open the patcher"));
				
				// Add a /documentation/generate data
				makeInternals_data(x, nodeAdrs, documentationAdrs, gensym("doc_generate"), context, kTTSym_message, &aData);
				aData->setAttributeValue(kTTSym_type, kTTSym_none);
				aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
				aData->setAttributeValue(kTTSym_description, TT("Make a html page description"));
				
				// Add a /model/mute data
				makeInternals_data(x, nodeAdrs, muteAdrs, gensym("model_mute"), context, kTTSym_parameter, &aData);
				aData->setAttributeValue(kTTSym_type, kTTSym_boolean);
				aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
				aData->setAttributeValue(kTTSym_priority, -1); // very high priority flag
				aData->setAttributeValue(kTTSym_description, TT("Mute all parameters in the patcher"));
				
				// for auto documentation : create internal TTTextHandler and expose Write message
				aTextHandler = NULL;
				TTObjectInstantiate(TT("TextHandler"), TTObjectHandle(&aTextHandler), args);
				v = TTValue(TTPtr(aTextHandler));
				x->internals->append(TT("TextHandler"), v);
				v = TTValue(TTPtr(x->wrappedObject));
				aTextHandler->setAttributeValue(kTTSym_object, v);
			}
			
			// In model *and* view patcher : Add /model/address data
			if (x->patcherContext == kTTSym_model) // as return
				makeInternals_data(x, nodeAdrs,  TT("model/address"), gensym("model_address"), context, kTTSym_return, &aData);
			
			if (x->patcherContext == kTTSym_view) // as parameter
				makeInternals_data(x, nodeAdrs,  TT("model/address"), gensym("model_address"), context, kTTSym_parameter, &aData);
			
			aData->setAttributeValue(kTTSym_type, kTTSym_string);
			aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
			aData->setAttributeValue(kTTSym_description, TT("The model address to bind for the view. A model patcher bind on himself"));
			aData->setAttributeValue(kTTSym_priority, -1); // very high priority flag
			
			// Get patcher arguments
			ac = 0;
			av = NULL;
			
			// If x is in a bpatcher, the patcher is NULL
			if (!aPatcher)
				aPatcher = object_attr_getobj(x, _sym_parentpatcher);
			
			jamoma_patcher_get_args(aPatcher, &ac, &av);
			
			// check if it's a sub model
			isSubModel = atom_getsym(av) == _sym_p;
			
			// in subpatcher the name of the patcher is part of the argument
			if (jamoma_patcher_get_hierarchy(aPatcher) == _sym_subpatcher) {
				ac--;
				av++;
			}
			
			// In model patcher : set /model/address with his address
			if (x->patcherContext == kTTSym_model) {
				aData->setAttributeValue(kTTSym_value, nodeAdrs);
				aData->setAttributeValue(kTTSym_valueDefault, nodeAdrs); // because of init process
				
				// use aPatcher args to setup the model attributes (like @priority)
				if (ac && av)
					attr_args_process(x, ac, av);
			}
			
			// In view patcher :
			if (x->patcherContext == kTTSym_view) {
				
				// a view expects to be in a bpatcher
				hierarchy = jamoma_patcher_get_hierarchy(aPatcher);
				if (hierarchy != _sym_bpatcher && hierarchy != _sym_topmost)
					object_error((ObjectPtr)x, "a view patcher have to be embedded into a bpatcher");
					
				// look for a model of the same class into the patcher to get his model/address
				jamoma_patcher_get_model_patcher(x->patcherPtr, x->patcherClass, &aPatcher);
				
				// if a model exists
				if (aPatcher) {
					
					// is there a container (e.g. a jcom.model) registered with the same context in this model patcher ?
					whereToSearch.append(JamomaDirectory->getRoot());
					JamomaDirectory->IsThere(&whereToSearch, &testNodeContext, (TTPtr)aPatcher, &isThere, &firstTTNode);
					
					if (isThere) {
						firstTTNode->getAddress(&containerAdrs);
						EXTRA->modelAddress = containerAdrs;
					}
				}

				// else, if args exists, the first argument of the patcher is the model/address value
				else if (ac > 0) {
					
					argAdrs = TTADRS(atom_getsym(av)->s_name);
					
					// the model/address have to be absolute
					if (argAdrs->getType() == kAddressAbsolute)
						EXTRA->modelAddress = argAdrs;
					else
						EXTRA->modelAddress = kTTAdrsRoot->appendAddress(argAdrs);
				}
				
				if (EXTRA->modelAddress != kTTAdrsEmpty) {
					aData->setAttributeValue(kTTSym_value, EXTRA->modelAddress);
					aData->setAttributeValue(kTTSym_valueDefault, EXTRA->modelAddress); // because of init process
				}
			}
			
			// output ContextNode address
			Atom a;
			x->subscriberObject->getAttributeValue(TT("contextNodeAddress"), v);
			v.get(0, (TTSymbolPtr*)&nodeAdrs);
			atom_setsym(&a, gensym((char*)nodeAdrs->getCString()));
			object_obex_dumpout(self, gensym("address"), 1, &a);
			
			// init the model (but not subModel)
			if (!isSubModel)
				defer_low(x, (method)model_init, 0, 0, 0L);
		}
	}
}

void model_init(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTBoolean	initialized;
	TTValue		v;
	
	// Check if the model has not been initialized by a upper model
	x->wrappedObject->getAttributeValue(kTTSym_initialized, v);
	v.get(0, initialized);
	if (!initialized)
		x->wrappedObject->sendMessage(TT("Init"));
}

// Method for Assistance Messages
void model_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if (msg==1)			// Inlets
		strcpy(dst, "");		
	else {							// Outlets
		switch(arg) {
			case data_out:
				if (x->patcherContext == kTTSym_model)
					strcpy(dst, "model feeback");
				else if (x->patcherContext == kTTSym_view)
					strcpy(dst, "view feeback");
				else 
					strcpy(dst, "feeback");
				break;
			case dump_out:
				strcpy(dst, "dumpout");
				break;
		}
 	}
}

void model_share_patcher_info(TTPtr self, TTValuePtr patcherInfo)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	patcherInfo->clear();
	
	if (x->patcherPtr && x->patcherContext && x->patcherClass && x->patcherName) {
		patcherInfo->append((TTPtr)x->patcherPtr);
		patcherInfo->append(x->patcherContext);
		patcherInfo->append(x->patcherClass);
		patcherInfo->append(x->patcherName);
	}
}

void model_share_patcher_node(TTPtr self, TTNodePtr *patcherNode)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue v;
	
	if (x->subscriberObject) {
		x->subscriberObject->getAttributeValue(TT("contextNode"), v);
		v.get(0, (TTPtr*)patcherNode);
	}
}

void model_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	// the msg have to contains a relative address
	jamoma_container_send((TTContainerPtr)x->wrappedObject, msg, argc, argv);
}

void WrappedContainerClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	// the msg have to contains a relative address
	jamoma_container_send((TTContainerPtr)x->wrappedObject, msg, argc, argv);
}

void model_return_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	x->msg = msg;
}

void model_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	outlet_anything(x->outlets[data_out], x->msg, argc, argv);
}

void model_help(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	// opening the module helpfile (no help file dedicated for model or view)
	if (x->patcherClass) {
		
		SymbolPtr helpfileName;
		jamoma_edit_filename(HelpPatcherFormat, x->patcherClass, &helpfileName);
		classname_openhelp((char*)helpfileName->s_name);
	}
}

void model_reference(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if (x->patcherContext && x->patcherClass) {
		
		SymbolPtr refpagefileName;
		jamoma_edit_filename(RefpageFormat, x->patcherClass, &refpagefileName);
		classname_openrefpage((char*)refpagefileName->s_name);
	}
}

void model_internals(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	ObjectPtr p = jamoma_patcher_get((ObjectPtr)x);
	
	object_method(p, _sym_vis);
}

void model_autodoc(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	defer(self, (method)model_doautodoc, msg, argc, argv);
}

void model_doautodoc(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	char				filename[MAX_FILENAME_CHARS];
	TTSymbolPtr			fullpath;
	TTValue				o, v;
	TTTextHandlerPtr	aTextHandler;
	TTErr				tterr;
	
	if (x->wrappedObject) {
		
		// Default HTML file name
		snprintf(filename, MAX_FILENAME_CHARS, DocumentationFormat->data(), x->patcherClass->getCString());
		fullpath = jamoma_file_write((ObjectPtr)x, argc, argv, filename);
		v.append(fullpath);
		
		tterr = x->internals->lookup(TT("TextHandler"), o);
		
		if (!tterr) {
			o.get(0, (TTPtr*)&aTextHandler);
			
			critical_enter(0);
			aTextHandler->sendMessage(TT("Write"), v, kTTValNONE);
			critical_exit(0);
		}
	}
}

void model_mute(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	ObjectPtr					patcher = jamoma_patcher_get((ObjectPtr)x);
	long						mute;
	t_atom						a[2];
	
	// 'setrock' is the message that is used by pcontrol to enable patcher
	// it was inside former jcom.in or out. Not sure for what it was used (audio mute maybe...)
	
	/*
	if (argc && argv)
		if (atom_gettype(argv) == A_LONG) {
			mute = atom_getlong(argv);
			atom_setlong(a+0, !mute);
			atom_setlong(a+1, 1);
			object_method(patcher, gensym("setrock"), 2, a);
		}
	 */
}

void model_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	// In view patcher only
	if (x->patcherContext == kTTSym_view) {
		
		if (atom_gettype(argv) == A_SYM) {
			EXTRA->modelAddress = TTADRS(atom_getsym(argv)->s_name);
		}
	}
}