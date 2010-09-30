/* 
 *	jcom.node
 *	External object
 *	Copyright © 2010 by Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTModularClassWrapperMax.h"

// those stuffes are needed for handling patchers without using the pcontrol object
#include "jpatcher_api.h"
typedef struct dll {
	t_object d_ob;
	struct dll *d_next;
	struct dll *d_prev;
	void *d_x1;
} t_dll;

typedef struct outlet {
	struct tinyobject o_ob;
	struct dll *o_dll;
} t_outlet;

typedef struct inlet {
	struct tinyobject i_ob;
	void *i_who;
	struct object *i_owner;
} t_inlet;

#define data_out 0

// Definitions
void		WrapTTContainerClass(WrappedClassPtr c);
void		WrappedContainerClass_new(TTPtr self, AtomCount argc, AtomPtr argv);

void		node_assist(TTPtr self, void *b, long msg, long arg, char *dst);

void		node_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		node_share_context_node(TTPtr self, TTNodePtr *contextNode);

void		node_return_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		node_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		node_build(TTPtr self, SymbolPtr address);

void		node_set_viewpanel(TTPtr self, long n);

void		node_model_help(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		node_model_reference(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		node_view_internals(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		node_view_panel(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		node_autodoc(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		node_doautodoc(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTContainerClass;
	spec->_new = &WrappedContainerClass_new;
	spec->_any = NULL;
	
	return wrapTTModularClassAsMaxClass(TT("Container"), "jcom.node", NULL, spec);
}

void WrapTTContainerClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)node_assist,					"assist",				A_CANT, 0L);
	
	class_addmethod(c->maxClass, (method)node_share_context_node,		"share_context_node",	A_CANT,	0);
	
	class_addmethod(c->maxClass, (method)node_return_address,			"return_address",		A_CANT, 0);
	class_addmethod(c->maxClass, (method)node_return_value,				"return_value",			A_CANT, 0);
	class_addmethod(c->maxClass, (method)node_model_help,				"model_help",			A_CANT, 0);
	class_addmethod(c->maxClass, (method)node_model_reference,			"model_reference",		A_CANT, 0);
	class_addmethod(c->maxClass, (method)node_view_internals,			"view_internals",		A_CANT, 0);
	class_addmethod(c->maxClass, (method)node_view_panel,				"view_panel",			A_CANT, 0);
	class_addmethod(c->maxClass, (method)node_autodoc,					"doc_generate",			A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)node_list,						"anything",				A_GIMME, 0L);
	
	class_addmethod(c->maxClass, (method)node_set_viewpanel,			"has_panel",			A_LONG, 0L);
	
	class_addmethod(c->maxClass, (method)node_model_help,				"model/help",			0);
	class_addmethod(c->maxClass, (method)node_model_reference,			"model/reference",		0);
	class_addmethod(c->maxClass, (method)node_view_internals,			"view/internals",		0);
	class_addmethod(c->maxClass, (method)node_view_panel,				"view/panel",			0);
	
	class_addmethod(c->maxClass, (method)node_autodoc,					"documentation/generate",A_GIMME, 0);
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
	
	// create the container
	jamoma_container_create((ObjectPtr)x, &x->wrappedObject);
	
	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	defer_low((ObjectPtr)x, (method)node_build, address, 0, 0);
	
	// Make two outlets
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 1);
	x->outlets[data_out] = outlet_new(x, NULL);						// anything outlet to output data
	
	// Prepare memory to store attributes
	//x->attr_long = (long*)sysmem_newptr(sizeof(long) * 1);

	// Prepare memory to store internal datas
	x->internals = new TTHash();
}

void node_build(TTPtr self, SymbolPtr address)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue						v, args;
	TTNodePtr					node = NULL;
	TTBoolean					newInstance;
	TTSymbolPtr					nodeAddress, relativeAddress;
	TTObjectPtr					aData;
	TTTextHandlerPtr			aTextHandler;
	TTPtr						context;
	
	jamoma_subscriber_create((ObjectPtr)x, x->wrappedObject, address, &x->subscriberObject);
	
	// if the subscription is successful
	if (x->subscriberObject) {
		
		// Is a new instance have been created ?
		x->subscriberObject->getAttributeValue(TT("NewInstanceCreated"), v);
		v.get(0, newInstance);
		
		if (newInstance) {
			x->subscriberObject->getAttributeValue(TT("RelativeAddress"), v);
			v.get(0, &relativeAddress);
			object_warn((t_object*)x, "Jamoma cannot create multiple jcom.node with the same OSC identifier (%s).  Using %s instead.", address->s_name, relativeAddress->getCString());
		}
		
		// Set the Address attribute of the Container
		x->subscriberObject->getAttributeValue(TT("NodeAddress"), v);
		x->wrappedObject->setAttributeValue(kTTSym_Address, v);
		
		// get absolute node address
		v.get(0, &nodeAddress);
		
		// debug
		object_post((ObjectPtr)x, "address = %s", nodeAddress->getCString());
		
		// get the Node
		x->subscriberObject->getAttributeValue(TT("Node"), v);
		v.get(0, (TTPtr*)&node);
		
		// attach to the patcher to be notified of his destruction
		node->getAttributeValue(TT("Context"), v);
		v.get(0, (TTPtr*)&context);
		object_attach_byptr_register(x, context, _sym_box);
		
		// special case for jcom.node at the root of the model
		if ((address == gensym("/") || address == _sym_nothing)) {
			// Add a /model/help data
			makeInternals_data(x, nodeAddress, TT("/model/help"), gensym("model_help"), context, kTTSym_message, &aData);
			aData->setAttributeValue(kTTSym_Type, kTTSym_none);
			aData->setAttributeValue(kTTSym_Description, TT("Open the maxhelp patch of this model"));
		
			// Add a /model/reference data
			makeInternals_data(x, nodeAddress, TT("/model/reference"), gensym("model_reference"), context, kTTSym_message, &aData);
			aData->setAttributeValue(kTTSym_Type, kTTSym_none);
			aData->setAttributeValue(kTTSym_Description, TT("Open the reference page of this model"));
			
			// Add a /view/internals data
			makeInternals_data(x, nodeAddress, TT("/view/internals"), gensym("view_internals"), context, kTTSym_message, &aData);
			aData->setAttributeValue(kTTSym_Type, kTTSym_none);
			aData->setAttributeValue(kTTSym_Description, TT("Open the patch of this model"));
			
			// Add a /documentation/generate data
			makeInternals_data(x, nodeAddress, TT("/documentation/generate"), gensym("doc_generate"), context, kTTSym_message, &aData);
			aData->setAttributeValue(kTTSym_Type, kTTSym_none);
			aData->setAttributeValue(kTTSym_Description, TT("Make a html page to describe the model"));
			
			// create internal TTTextHandler and expose Write message
			aTextHandler = NULL;
			TTObjectInstantiate(TT("TextHandler"), TTObjectHandle(&aTextHandler), args);
			v = TTValue(TTPtr(aTextHandler));
			x->internals->append(TT("TextHandler"), v);
			v = TTValue(TTPtr(x->wrappedObject));
			aTextHandler->setAttributeValue(kTTSym_Object, v);
		}
	}
}

// Method for Assistance Messages
void node_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	if (msg==1)			// Inlets
		strcpy(dst, "");		
	else if (msg==2)		// Outlets
		strcpy(dst, "");
}

void node_list(TTPtr self, t_symbol *msg, long argc, t_atom *argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	jamoma_container_send((TTContainerPtr)x->wrappedObject, msg, argc, argv);
}

void node_return_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	x->msg = msg;
}

void node_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	outlet_anything(x->outlets[data_out], x->msg, argc, argv);
}

void node_share_context_node(TTPtr self, TTNodePtr *contextNode)
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

void node_set_viewpanel(TTPtr self, long n)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTObjectPtr					aData;
	TTValue						v;
	TTSymbolPtr					address;
	TTNodePtr					node = NULL;
	TTPtr						context;
	
	if (x->subscriberObject) {
		x->subscriberObject->getAttributeValue(TT("ContextAddress"), v);
		v.get(0, &address);
		
		x->subscriberObject->getAttributeValue(TT("Node"), v);
		v.get(0, (TTPtr*)&node);
		node->getAttributeValue(TT("Context"), v);
		v.get(0, (TTPtr*)&context);
		
		if (n) {
			
			// Add a /view/panel data
			makeInternals_data(self, address, TT("view/panel"), gensym("view_panel"), context, kTTSym_message, &aData);
			
			// Set attribute of the data
			aData->setAttributeValue(kTTSym_Type, kTTSym_none);
			aData->setAttributeValue(kTTSym_Description, TT("Open a module's control panel (inspector) if one is present."));
			aData->setAttributeValue(kTTSym_RampDrive, kTTSym_none);
		}
		else
			// Remove a /view/panel data
			removeInternals_data(self, address, TT("view/panel"));
	}
	else
		object_error((ObjectPtr)x, "Can't create /view/panel message at loadbang. Please use a deferlow.");
}

void node_model_help(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTSymbolPtr modelClass;
	
	jamoma_patcher_get_model_class((ObjectPtr)x, &modelClass);
	
	TTString helpfile = "jmod.";
	helpfile += modelClass->getCString();
	
	post("node_model_help : %s", (char*)helpfile.data());
	
	classname_openhelp((char*)helpfile.data());
}

void node_model_reference(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTSymbolPtr modelClass;
	
	jamoma_patcher_get_model_class((ObjectPtr)x, &modelClass);
	
	TTString refpage = "jmod.";
	refpage += modelClass->getCString();
	
	post("node_model_reference : %s", (char*)refpage.data());
	
	classname_openrefpage((char*)refpage.data());
}

void node_view_internals(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	ObjectPtr p = jamoma_object_getpatcher((ObjectPtr)x);
	
	object_method(p, _sym_vis);
}

void node_view_panel(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	ObjectPtr	box;
	t_outlet*	myoutlet = NULL;
	t_dll*		connecteds = NULL;
	ObjectPtr	o;
	SymbolPtr	name;
	TTValue		v;
	TTSymbolPtr nodeAddress;
	AtomPtr		a;
	
	object_obex_lookup(x, _sym_pound_B, &box);
	myoutlet = (t_outlet*)jbox_getoutlet((t_jbox*)box, 1);
	if (myoutlet)
		connecteds = (t_dll*)myoutlet->o_dll;
	
	// search through all connected objects for a patcher object
	while (connecteds) {
		o = (t_object*)connecteds->d_x1;
		name = object_classname(o);
		if (name == _sym_inlet) {
			o = ((t_inlet *)connecteds->d_x1)->i_owner;
			name = object_classname(o);
			if (name == _sym_jpatcher) {
				
				// get absolute node address
				x->subscriberObject->getAttributeValue(TT("NodeAddress"), v);
				v.get(0, &nodeAddress);
				atom_setsym(a, gensym((char*)nodeAddress->getCString()));
				object_attr_setvalueof(o, _sym_title, 1, a);
				object_method(o, _sym_vis);
			}
		}
		o = NULL;
		name = NULL;
		connecteds = connecteds->d_next;
	}
}

void node_autodoc(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	defer(self, (method)node_doautodoc, msg, argc, argv);
}

void node_doautodoc(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
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
	TTTextHandlerPtr aTextHandler;
	TTErr			tterr;
	
	if (argc && argv)
		if (atom_gettype(argv) == A_SYM)
			userpath = atom_getsym(argv);
		else {
			object_error((t_object*)x, "%s : needs a symbol", msg->s_name);
			return;
		}
	
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
		v.append(TT(fullpath));
		
		tterr = x->internals->lookup(TT("TextHandler"), o);
			
		if (!tterr) {
				
			o.get(0, (TTPtr*)&aTextHandler);
				
			critical_enter(0);
			aTextHandler->sendMessage(TT("Write"), v);
			critical_exit(0);
		}
	}
}

