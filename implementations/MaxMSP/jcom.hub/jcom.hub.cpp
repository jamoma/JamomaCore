/* 
 *	jcom.node
 *	External object
 *	Copyright © 2010 by Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTModularClassWrapperMax.h"

// This is used to store extra data
typedef struct extra {
	ObjectPtr	modelInternal;		// store an internal model patcher
	TTSymbolPtr modelAddress;		// store the /model/address parameter
} t_extra;
#define EXTRA ((t_extra*)x->extra)

#define data_out 0

// Definitions
void		WrapTTContainerClass(WrappedClassPtr c);
void		WrappedContainerClass_new(TTPtr self, AtomCount argc, AtomPtr argv);
void		WrappedContainerClass_free(TTPtr self);
void		WrappedContainerClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		hub_assist(TTPtr self, void *b, long msg, long arg, char *dst);

void		hub_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		hub_return_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		hub_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		hub_build(TTPtr self, SymbolPtr address);

void		hub_init(TTPtr self);

void		hub_help(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		hub_reference(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		hub_internals(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		hub_mute(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		hub_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);		// only in jview patch

void		hub_autodoc(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		hub_doautodoc(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		hub_nmspcExplorer_callback(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

t_max_err	hub_get_context(TTPtr self, TTPtr attr, AtomCount *ac, AtomPtr *av);
t_max_err	hub_set_context(TTPtr self, TTPtr attr, AtomCount ac, AtomPtr av);

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTContainerClass;
	spec->_new = &WrappedContainerClass_new;
	spec->_free = &WrappedContainerClass_free;
	spec->_any = &WrappedContainerClass_anything;
	
	return wrapTTModularClassAsMaxClass(TT("Container"), "jcom.hub", NULL, spec);
}

void WrapTTContainerClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)hub_assist,					"assist",				A_CANT, 0L);
	
	class_addmethod(c->maxClass, (method)hub_return_address,			"return_address",		A_CANT, 0);
	class_addmethod(c->maxClass, (method)hub_return_value,				"return_value",			A_CANT, 0);
	class_addmethod(c->maxClass, (method)hub_nmspcExplorer_callback,	"return_nmpscExploration",A_CANT, 0);
	class_addmethod(c->maxClass, (method)hub_help,						"hub_help",				A_CANT, 0);
	class_addmethod(c->maxClass, (method)hub_reference,					"hub_reference",		A_CANT, 0);
	class_addmethod(c->maxClass, (method)hub_internals,					"hub_internals",		A_CANT, 0);
	class_addmethod(c->maxClass, (method)hub_mute,						"hub_mute",				A_CANT, 0);
	class_addmethod(c->maxClass, (method)hub_address,					"hub_address",			A_CANT, 0);			// only in jview patch
	class_addmethod(c->maxClass, (method)hub_autodoc,					"doc_generate",			A_CANT, 0);
	
	CLASS_ATTR_SYM(c->maxClass,			"context",	0,		WrappedModularInstance,	patcherContext);	// use msg member to store format
	CLASS_ATTR_ACCESSORS(c->maxClass,	"context",			hub_get_context,	hub_set_context);
	CLASS_ATTR_ENUM(c->maxClass,		"context",	0,		"none model view");
}

void WrappedContainerClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	SymbolPtr					address;
 	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments
	
	// A Modular object needs an address argument
	if (attrstart && argv)
		address = atom_getsym(argv);
	else
		address = _sym_nothing;
	
	// create a container
	jamoma_container_create((ObjectPtr)x, &x->wrappedObject);
	
	// handle attribute args
	x->patcherContext = kTTSym_none;
	attr_args_process(x, argc, argv);
	
	// if the hub have an address : it shouldn't get his context from the attribute
	// but from the hub at the root of the patch. So set it at none.
	if (address != _sym_nothing) {
		x->patcherContext = kTTSym_none;
		object_warn((ObjectPtr)x, "can't set the context attribute for %s hub. Only unnamed hub can set this attribute", address->s_name);
	}
	
	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	defer_low((ObjectPtr)x, (method)hub_build, address, 0, 0);
	
	// Make two outlets
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 1);
	x->outlets[data_out] = outlet_new(x, NULL);						// anything outlet to output data
	
	// Prepare memory to store internal datas
	x->internals = new TTHash();
	
	// Prepare extra data
	x->extra = (t_extra*)malloc(sizeof(t_extra));
	EXTRA->modelAddress = kTTSymEmpty;
}

void WrappedContainerClass_free(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	free(EXTRA);
}

void hub_build(TTPtr self, SymbolPtr address)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue						v, args;
	TTNodePtr					node = NULL;
	TTBoolean					newInstance;
	TTSymbolPtr					nodeAddress, relativeAddress;
	TTSymbolPtr					classAdrs, helpAdrs, refAdrs, internalsAdrs, documentationAdrs, muteAdrs;
	TTObjectPtr					aData, anExplorer;
	TTTextHandlerPtr			aTextHandler;
	TTPtr						context;
	AtomCount					ac;
	AtomPtr						av;
	ObjectPtr					patcher;
	
	if (x->patcherContext == kTTSym_none) {
		jamoma_patcher_get_context_class((ObjectPtr)x, &x->patcherContext, &x->patcherClass);
		object_post((ObjectPtr)x, "context : %s", x->patcherContext->getCString());
		
		if (x->patcherContext == kTTSym_none) {
			object_error((ObjectPtr)x, "can't find any context. Have you set the context attribute or named your patch with .model or .view at the end");
			return;
		}
	}
		
	jamoma_subscriber_create((ObjectPtr)x, x->wrappedObject, jamoma_parse_dieze((ObjectPtr)x, address), x->patcherContext, &x->subscriberObject);
	
	// if the subscription is successful
	if (x->subscriberObject) {
		
		// Is a new instance have been created ?
		x->subscriberObject->getAttributeValue(TT("newInstanceCreated"), v);
		v.get(0, newInstance);
		
		if (newInstance) {
			x->subscriberObject->getAttributeValue(TT("relativeAddress"), v);
			v.get(0, &relativeAddress);
			object_warn((t_object*)x, "Jamoma cannot create multiple jcom.node with the same OSC identifier (%s).  Using %s instead.", jamoma_parse_dieze((ObjectPtr)x, address)->s_name, relativeAddress->getCString());
		}
		
		// Set the address attribute of the Container
		x->subscriberObject->getAttributeValue(TT("nodeAddress"), v);
		x->wrappedObject->setAttributeValue(TT("address"), v);
		
		// get absolute node address
		v.get(0, &nodeAddress);
		
		// debug
		object_post((ObjectPtr)x, "address = %s", nodeAddress->getCString());
		
		// get the Node
		x->subscriberObject->getAttributeValue(TT("node"), v);
		v.get(0, (TTPtr*)&node);
		
		// attach to the patcher to be notified of his destruction
		context = node->getContext();
		// Crash : object_attach_byptr_register(x, context, _sym_box);
		
		// special case for jcom.node at the root of the model
		if ((address == gensym("/") || address == _sym_nothing)) {
			
			if (x->patcherContext == TT(ModelPatcher)) {
				classAdrs = TT("/model/class");
				helpAdrs =  TT("/model/help");
				refAdrs = TT("/model/reference");
				internalsAdrs = TT("/model/internals");
				documentationAdrs = TT("/model/documentation/generate");
				muteAdrs = TT("/model/mute");
			}
			else if (x->patcherContext == TT(ViewPatcher)) {
				classAdrs = TT("/view/class");
				helpAdrs =  TT("/view/help");
				refAdrs = TT("/view/reference");
				internalsAdrs = TT("/view/internals");
				documentationAdrs = TT("/view/documentation/generate");
				muteAdrs = TT("/view/mute");
			}
			else {
				classAdrs = TT("/class");
				helpAdrs =  TT("/help");
				refAdrs = TT("/reference");
				internalsAdrs = TT("/internals");
				documentationAdrs = TT("/documentation/generate");
				muteAdrs = TT("/mute");
			}
			
			// Add a /class data
			makeInternals_data(x, nodeAddress, classAdrs, gensym("hub_class"), context, kTTSym_return, &aData);
			aData->setAttributeValue(kTTSym_type, kTTSym_string);
			aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
			aData->setAttributeValue(kTTSym_description, TT("The patcher class"));
			aData->setAttributeValue(kTTSym_value, x->patcherClass);
			
			// Add a /help data
			makeInternals_data(x, nodeAddress, helpAdrs, gensym("hub_help"), context, kTTSym_message, &aData);
			aData->setAttributeValue(kTTSym_type, kTTSym_none);
			aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
			aData->setAttributeValue(kTTSym_description, TT("Open the maxhelp patch"));
			
			// Add a /reference data
			makeInternals_data(x, nodeAddress, refAdrs, gensym("hub_reference"), context, kTTSym_message, &aData);
			aData->setAttributeValue(kTTSym_type, kTTSym_none);
			aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
			aData->setAttributeValue(kTTSym_description, TT("Open the reference page"));
			
			// Add a /internals data
			makeInternals_data(x, nodeAddress, internalsAdrs, gensym("hub_internals"), context, kTTSym_message, &aData);
			aData->setAttributeValue(kTTSym_type, kTTSym_none);
			aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
			aData->setAttributeValue(kTTSym_description, TT("Open the patcher"));
			
			// Add a /documentation/generate data
			makeInternals_data(x, nodeAddress, documentationAdrs, gensym("doc_generate"), context, kTTSym_message, &aData);
			aData->setAttributeValue(kTTSym_type, kTTSym_none);
			aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
			aData->setAttributeValue(kTTSym_description, TT("Make a html page description"));
			
			// Add a /model/mute data
			makeInternals_data(x, nodeAddress, muteAdrs, gensym("hub_mute"), context, kTTSym_parameter, &aData);
			aData->setAttributeValue(kTTSym_type, kTTSym_boolean);
			aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
			aData->setAttributeValue(kTTSym_description, TT("Turned off patcher processing to save CPU"));
			
			// In jmod *and* jview patcher : Add /model/address data
			if (x->patcherContext == TT(ModelPatcher)) // as return
				makeInternals_data(x, nodeAddress,  TT("/model/address"), gensym("hub_address"), context, kTTSym_return, &aData);
			if (x->patcherContext == TT(ViewPatcher)) // as parameter
				makeInternals_data(x, nodeAddress,  TT("/model/address"), gensym("hub_address"), context, kTTSym_parameter, &aData);
			aData->setAttributeValue(kTTSym_type, kTTSym_string);
			aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
			aData->setAttributeValue(kTTSym_description, TT("The model address to bind for the view. A jmod patcher bind on himself"));
			aData->setAttributeValue(kTTSym_priority, -1); // very high priority flag
			
			// In jmod patcher : set /modeladdress with his address
			if (x->patcherContext == TT(ModelPatcher))
				aData->setAttributeValue(kTTSym_value, nodeAddress);
			
			// In jview patcher :
			// if exists, the second argument of the patcher is the /model/address value
			// else observe the entire namespace to find a model of our class
			if (x->patcherContext == TT(ViewPatcher)) {
				
				ac = 0;
				av = NULL;
				patcher = jamoma_patcher_get((ObjectPtr)x);
				
				// If x is in a bpatcher, the patcher is NULL
				if (!patcher){
					patcher = object_attr_getobj(x, _sym_parentpatcher);
				}
				
				jamoma_patcher_get_args(patcher, &ac, &av);
				if (ac) {
					EXTRA->modelAddress = TT(atom_getsym(av)->s_name);
					aData->setAttributeValue(kTTSym_value, EXTRA->modelAddress);
				}
				
				if (EXTRA->modelAddress != kTTSymEmpty) {
					makeInternals_explorer((ObjectPtr)x, TT("nmspcExplorer"), gensym("return_nmpscExploration"), &anExplorer);
					anExplorer->setAttributeValue(kTTSym_lookfor, TT("Container"));
					anExplorer->setAttributeValue(kTTSym_address, S_SEPARATOR);
					anExplorer->sendMessage(TT("Explore"), kTTValNONE);
				}
			}
			
			// create internal TTTextHandler and expose Write message
			aTextHandler = NULL;
			TTObjectInstantiate(TT("TextHandler"), TTObjectHandle(&aTextHandler), args);
			v = TTValue(TTPtr(aTextHandler));
			x->internals->append(TT("TextHandler"), v);
			v = TTValue(TTPtr(x->wrappedObject));
			aTextHandler->setAttributeValue(kTTSym_object, v);
			
			// output ContextNode address
			Atom a;
			x->subscriberObject->getAttributeValue(TT("contextNodeAddress"), v);
			v.get(0, &nodeAddress);
			atom_setsym(&a, gensym((char*)nodeAddress->getCString()));
			object_obex_dumpout(self, gensym("address"), 1, &a);
			
			// init the hub
			defer_low(x, (method)hub_init, 0, 0, 0L);
		}
	}
}

void hub_init(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	x->wrappedObject->sendMessage(TT("Init"));
}

// Method for Assistance Messages
void hub_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	if (msg==1)			// Inlets
		strcpy(dst, "");		
	else if (msg==2)		// Outlets
		strcpy(dst, "");
}

void hub_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTString					addSlash;
	
	// if the address part doesn't begin by a slash : add it.
	if (msg->s_name[0] != C_SEPARATOR) {
		addSlash = "/";
		addSlash += msg->s_name;
		jamoma_container_send((TTContainerPtr)x->wrappedObject, gensym((char*)addSlash.data()), argc, argv);
	}
	
	jamoma_container_send((TTContainerPtr)x->wrappedObject, msg, argc, argv);
}

void WrappedContainerClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTString					addSlash;
	TTErr						err;
	
	// if the address part doesn't begin by a slash : add it.
	if (msg->s_name[0] != C_SEPARATOR) {
		addSlash = "/";
		addSlash += msg->s_name;
		err = jamoma_container_send((TTContainerPtr)x->wrappedObject, gensym((char*)addSlash.data()), argc, argv);
	}
	else
		err = jamoma_container_send((TTContainerPtr)x->wrappedObject, msg, argc, argv);
}

void hub_return_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	x->msg = msg;
}

void hub_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	outlet_anything(x->outlets[data_out], x->msg, argc, argv);
}

void hub_help(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	TTString helpfile = x->patcherContext->getCString();
	helpfile += ".";
	helpfile += x->patcherClass->getCString();
	
	//post("hub_help : %s", (char*)helpfile.data());
	
	classname_openhelp((char*)helpfile.data());
}

void hub_reference(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	TTString refpage = x->patcherContext->getCString();
	refpage += ".";
	refpage += x->patcherClass->getCString();
	
	//post("hub_reference : %s", (char*)refpage.data());
	
	classname_openrefpage((char*)refpage.data());
}

void hub_internals(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	ObjectPtr p = jamoma_patcher_get((ObjectPtr)x);
	
	object_method(p, _sym_vis);
}

void hub_autodoc(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	defer(self, (method)hub_doautodoc, msg, argc, argv);
}

void hub_doautodoc(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	char				filename[MAX_FILENAME_CHARS];
	TTSymbolPtr			fullpath;
	TTValue				o, v;
	TTTextHandlerPtr	aTextHandler;
	TTErr				tterr;
	
	if (x->wrappedObject) {
		
		// Default HTML file name
		snprintf(filename, MAX_FILENAME_CHARS, "%s%s.html", x->patcherClass->getCString(), x->patcherContext->getCString());
		fullpath = jamoma_file_write((ObjectPtr)x, argc, argv, filename);
		v.append(fullpath);
		
		tterr = x->internals->lookup(TT("TextHandler"), o);
		
		if (!tterr) {
			o.get(0, (TTPtr*)&aTextHandler);
			
			critical_enter(0);
			aTextHandler->sendMessage(TT("Write"), v);
			critical_exit(0);
		}
	}
}

void hub_mute(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	ObjectPtr					patcher = jamoma_patcher_get((ObjectPtr)x);
	long						mute;
	t_atom						a[2];
	
	// 'setrock' is the message that is used by pcontrol to enable patcher
	// it was inside former jcom.in or out. Not sure for what it was used (audio mute maybe...)
	
	if (argc && argv)
		if (atom_gettype(argv) == A_LONG) {
			mute = atom_getlong(argv);
			atom_setlong(a+0, !mute);
			atom_setlong(a+1, 1);
			object_method(patcher, gensym("setrock"), 2, a);
		}
}

void hub_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTList		returnedTTNodes;
	TTNodePtr	firstReturnedTTNode;
	TTValue		v;
	TTSymbolPtr patcherClass, patcherClassAdrs;
	TTObjectPtr anObject;
	TTErr		err;
	
	// In jview patcher only
	if (x->patcherContext == TT(ViewPatcher)) {
		
		if (atom_gettype(argv) == A_SYM) {
			EXTRA->modelAddress = TT(atom_getsym(argv)->s_name);
			
			// Test the class of the /model/address patcher
			joinOSCAddress(EXTRA->modelAddress, TT("/model/class"), &patcherClassAdrs);
			err = JamomaDirectory->Lookup(patcherClassAdrs, returnedTTNodes, &firstReturnedTTNode);
			
			if (!err) {
				if (anObject = firstReturnedTTNode->getObject()) {
					
					anObject->getAttributeValue(kTTSym_value, v);
					v.get(0, &patcherClass);
					
					if (patcherClass == x->patcherClass)
						// DEBUG
						object_post((ObjectPtr)x, "set /model/address : %s", EXTRA->modelAddress->getCString());
					else
						object_warn((ObjectPtr)x, "/model/address refers to a \"%s\" model instead of a \"%s\" model", patcherClass->getCString(), x->patcherClass->getCString());
				}
				else
					object_warn((ObjectPtr)x, "/model/address doesn't refer to a %s patcher", ModelPatcher);
			}
			else
				object_warn((ObjectPtr)x, "/model/address doesn't refer to a %s patcher", ModelPatcher);
		}
	}
}

void hub_nmspcExplorer_callback(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTSymbolPtr parent, name, instance, attribute;
	SymbolPtr	paramName;
	TTValue		v;
	TTObjectPtr	aData;
	
	// if there is no address
	if (EXTRA->modelAddress == kTTSymEmpty) {
		
		// look the namelist to know which data exist
		for (long i=0; i<argc; i++) {
			
			paramName = atom_getsym(argv+i);
			
			// try to bind on the patherName
			// if a name is equal to the patcherClass and parent is /
			splitOSCAddress(TT(paramName->s_name), &parent, &name, &instance, &attribute);
			if (name == x->patcherClass && parent == S_SEPARATOR) {
				
				if (!x->internals->lookup(TT("/model/address"), v)) {
					
					v.get(0, (TTPtr*)&aData);
					aData->setAttributeValue(kTTSym_value, TT(paramName->s_name));
				}
			}
		}
	}
}


t_max_err hub_get_context(TTPtr self, TTPtr attr, AtomCount *ac, AtomPtr *av)
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
	
	atom_setsym(*av, gensym((char*)x->patcherContext->getCString()));
	
	return MAX_ERR_NONE;
}

t_max_err hub_set_context(TTPtr self, TTPtr attr, AtomCount ac, AtomPtr av) 
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if (ac&&av) {
		x->patcherContext = TT(atom_getsym(av)->s_name);
	}
	else
		x->patcherContext = kTTSym_none;
	
	return MAX_ERR_NONE;
}


