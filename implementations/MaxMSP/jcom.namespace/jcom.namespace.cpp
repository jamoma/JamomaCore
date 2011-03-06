/* 
 * jcom.namespace
 * External to deal with the Jamoma Namespace
 * By Théo de la Hogue, Copyright 2010
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTModularClassWrapperMax.h"

#define data_out 0
#define none_one_out 1
#define dump_out 2

// Definitions
void		WrapTTExplorerClass(WrappedClassPtr c);
void		WrappedExplorerClass_new(TTPtr self, AtomCount argc, AtomPtr argv);

void		nmspc_assist(TTPtr self, void *b, long m, long a, char *s);

void		nmspc_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		nmspc_bang(TTPtr self);
void		nmspc_symbol(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		nmspc_write(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		nmspc_dowrite(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		nmspc_subscribe(TTPtr self, SymbolPtr relativeAddress);

t_max_err	nmspc_get_format(TTPtr self, TTPtr attr, AtomCount *ac, AtomPtr *av);
t_max_err	nmspc_set_format(TTPtr self, TTPtr attr, AtomCount ac, AtomPtr av);

/*
void		nmspc_add_max_namespace(TTPtr self);
long		nmspc_myobject_iterator(TTPtr self, ObjectPtr b);
*/

SymbolPtr	nmspc_filter_underscore_instance(SymbolPtr a);



int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTExplorerClass;
	spec->_new = &WrappedExplorerClass_new;
	spec->_free = NULL;
	spec->_any = NULL;
	
	return wrapTTModularClassAsMaxClass(TT("Explorer"), "jcom.namespace", NULL, spec);
}

void WrapTTExplorerClass(WrappedClassPtr c)
{
	// add methods
	class_addmethod(c->maxClass, (method)nmspc_assist,				"assist",					A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)nmspc_return_value,		"return_value",				A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)nmspc_bang,				"bang",						0);
	
	class_addmethod(c->maxClass, (method)nmspc_symbol,				"anything",					A_GIMME, 0);

	class_addmethod(c->maxClass, (method)nmspc_write,				"write",					A_GIMME, 0);

	//class_addmethod(c->maxClass, (method)nmspc_add_max_namespace,	"add_max_namespace",		0);
	
	CLASS_ATTR_SYM(c->maxClass,			"format",	0,		WrappedModularInstance,	msg);	// use msg member to store format
	CLASS_ATTR_ACCESSORS(c->maxClass,	"format",	nmspc_get_format,	nmspc_set_format);
	CLASS_ATTR_ENUM(c->maxClass,		"format",	0,		"none umenu umenu_prefix jit.cellblock coll");

	
}

void WrappedExplorerClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	SymbolPtr					relativeAddress;
 	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments
	
	// possible relativeAddress (to make jcom.namespace relative to his context ... ?)
	if (attrstart && argv) 
		relativeAddress = atom_getsym(argv);
	else
		relativeAddress = _sym_nothing;
	
	// create the explorer
	jamoma_explorer_create((ObjectPtr)x, &x->wrappedObject);
	
	// Make two outlets
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 2);
	x->outlets[none_one_out] = outlet_new(x, NULL);
	x->outlets[data_out] = outlet_new(x, NULL);
	
	x->msg = _sym_none;
	
	// Prepare Internals hash to store XmlHanler object
	x->internals = new TTHash();
	
	// handle attribute args
	attr_args_process(x, argc, argv);
	
	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	defer_low((ObjectPtr)x, (method)nmspc_subscribe, relativeAddress, 0, 0);
}

void nmspc_subscribe(TTPtr self, SymbolPtr relativeAddress)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue			v, args;
	TTOpmlHandlerPtr aOpmlHandler;
	
	// create internal TTXmlHandler and internal messages for Read and Write
	aOpmlHandler = NULL;
	TTObjectInstantiate(TT("OpmlHandler"), TTObjectHandle(&aOpmlHandler), args);
	v = TTValue(TTPtr(aOpmlHandler));
	x->internals->append(TT("OpmlHandler"), v);
	v = TTValue(TTPtr(x->wrappedObject));
	aOpmlHandler->setAttributeValue(kTTSym_object, v);
}

void nmspc_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	if (msg==1) 						// Inlet
		strcpy(dst, "input");
	else {							// Outlets
		switch(arg) {
			case data_out:
				strcpy(dst, "result of exploration");
				break;
			case none_one_out:
				strcpy(dst, "output 'none' or 'one' flag");
				break;
			case dump_out:
				strcpy(dst, "dumpout");
				break;
		}
 	}
}

void nmspc_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue		v;
	TTSymbolPtr	lookfor, address;
	SymbolPtr	s;
	Atom		a[1], c[2];
	
	// Ask Explorer object
	x->wrappedObject->getAttributeValue(TT("lookfor"), v);
	v.get(0, &lookfor);
	
	x->wrappedObject->getAttributeValue(kTTSym_address, v);
	v.get(0, &address);
	
	// UMENU OR UMENU_PREFIX FORMAT
	if (x->msg == gensym("umenu") || x->msg == gensym("umenu_prefix")) {
		
		// clear menu
		outlet_anything(x->outlets[data_out], _sym_clear, 0, NULL);

		// prepare umenu prefix to be concatenated
		if (x->msg == gensym("umenu_prefix")) {
			
			atom_setlong(a, 0);
			outlet_anything(x->outlets[data_out], gensym("prefix_mode"), 1, a);
			
			// prepare umenu prefix 
			// (except in case the explorer look for Instances)
			if (address == S_SEPARATOR)
				atom_setsym(a, gensym((char*)address->getCString()));
			else {
				TTString prefix = address->getCString();
				
				if(lookfor == kTTSym_children)
					prefix += "/";
				else if(lookfor == kTTSym_instances)
					prefix += ".";
				else if(lookfor == kTTSym_attributes)
					prefix += ":";
				else
					prefix = "";
				
				atom_setsym(a, gensym((char*)prefix.data()));
			}
			
			outlet_anything(x->outlets[data_out], gensym("prefix"), 1, a);
		}
		
		// fill umenu
		// output argv
		for (long i=0; i<argc; i++) {
			s = atom_getsym(argv+i);
			
			if(lookfor == kTTSym_attributes)
				s = jamoma_TTName_To_MaxName(TT(s->s_name));
			
			if (lookfor == kTTSym_instances && s == _sym_nothing)
				s = gensym("_");
			if (s) {
				atom_setsym(a, s);
				outlet_anything(x->outlets[data_out], _sym_append, 1, a);
			}
		}
		
		if (argc == 0)
			outlet_anything(x->outlets[none_one_out], _sym_none, 0, NULL);
		
		if (argc == 1)
			outlet_anything(x->outlets[none_one_out], _sym_one, 0, NULL);
		
		return;
	}
	
	// JIT CELLBLOCK FORMAT
	if (x->msg == gensym("jit.cellblock")) {
		object_error((ObjectPtr)x, "sorry the jit.cellblock format is not available");
		return;
	}
	
	// COLL FORMAT
	if (x->msg == gensym("coll")) {
		
		// clear coll
		outlet_anything(x->outlets[data_out], _sym_clear, 0, NULL);
		
		// fill coll
		// output argv
		for (long i=0; i<argc; i++) {
			s = atom_getsym(argv+i);
			
			if (lookfor == kTTSym_attributes)
				s = jamoma_TTName_To_MaxName(TT(s->s_name));
			
			if (lookfor == kTTSym_instances && s == _sym_nothing)
				s = gensym("_");
			if (s) {
				atom_setlong(c, i+1);
				atom_setsym(c+1, s);
				outlet_anything(x->outlets[data_out], _sym_store, 2, c);
			}
		}
		
		return;
	}
	
	// NO FORMAT
	if (argc)
		outlet_atoms(x->outlets[data_out], argc, argv);
	else if (msg != _sym_nothing)
		outlet_anything(x->outlets[data_out], msg, argc, argv);
}

void nmspc_bang(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	// UMENU OR UMENU_PREFIX FORMAT : clear umenu
	if (x->msg == gensym("umenu") || x->msg == gensym("umenu_prefix"))
		outlet_anything(x->outlets[data_out], _sym_clear, 0, NULL);

	x->wrappedObject->sendMessage(TT("Explore"));
}

void nmspc_symbol(TTPtr self, t_symbol *msg, long argc, t_atom *argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue v;
	
	if (msg->s_name[0] == C_SEPARATOR) {
		v.append(TT(nmspc_filter_underscore_instance(msg)->s_name));
		x->wrappedObject->setAttributeValue(kTTSym_address, v);
		
		// UMENU OR UMENU_PREFIX FORMAT : clear umenu
		if (x->msg == gensym("umenu") || x->msg == gensym("umenu_prefix"))
			outlet_anything(x->outlets[data_out], _sym_clear, 0, NULL);
		
		x->wrappedObject->sendMessage(TT("Explore"));
	}
}

void nmspc_write(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	defer(self, (method)nmspc_dowrite, msg, argc, argv);
}

void nmspc_dowrite(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	char 			filename[MAX_FILENAME_CHARS];
	TTSymbolPtr		fullpath;
	TTValue			o, v;
	TTOpmlHandlerPtr aOpmlHandler;
	TTErr			tterr;
	
	if (x->wrappedObject) {
		
		// Default XML File Name
		snprintf(filename, MAX_FILENAME_CHARS, "namespace.opml");
		fullpath = jamoma_file_write((ObjectPtr)x, argc, argv, filename);
		v.append(fullpath);
		
		tterr = x->internals->lookup(TT("OpmlHandler"), o);
		
		if (!tterr) {
			o.get(0, (TTPtr*)&aOpmlHandler);
			
			critical_enter(0);
			aOpmlHandler->sendMessage(TT("Write"), v);
			critical_exit(0);
		}
	}
}


/*
void nmspc_add_max_namespace(t_nmspc *x)
{
	t_object *patcher;
	t_max_err err;
	long result = 0;

	err = object_obex_lookup(x, gensym("#P"), &patcher);

	object_method(patcher, gensym("iterate"), nmspc_myobject_iterator, (void *)x, PI_WANTBOX | PI_DEEP, &result);
}

long nmspc_myobject_iterator(t_nmspc *x, t_object *b)
{
	TTNodePtr newTTNode;
	bool newInstanceCreated;
	char temp[256];
    t_symbol *varname = object_attr_getsym(b, gensym("varname"));
	uint i;

	// Make sure we are dealing with valid OSC input by looking for a leading slash
	if(varname){
		if(varname->s_name[0] == C_SEPARATOR){
			newInstanceCreated = false;
			
			// put all scripting name in a /max node
			snprintf(temp,256,"/max%s", varname->s_name);
			
			// search for [ and ] cause this is how max declare instance. 
			for(i=0; i<strlen(temp); i++){
				if(temp[i] == '[')
					temp[i] = '.';
				else if(temp[i] == ']')
					temp[i] = 0;
			}

			jamoma_directory_register(gensym(temp), gensym("maxobject"), (t_object *)b, &newTTNode, &newInstanceCreated);

			// add varname and maxclass as properties of the node
			//TODO : max_node_attribute_add(newTTNode,gensym("varname"), b);
			//TODO : max_node_attribute_add(newTTNode,gensym("maxclass"), b);

			//if(newInstanceCreated)
			//	object_warn((t_object *)x,"%s : this scripting name is already registered in the tree", varname->s_name);
		}
	}

    return 0;
}
 */

SymbolPtr nmspc_filter_underscore_instance(SymbolPtr a)
{
	SymbolPtr b;
	TTString toParse = a->s_name;
	
	//post("before parsing : %s", a->s_name);
	int foundDot = toParse.find_last_of('.');
	int foundUnd = toParse.find_last_of('_');
	
	//post("toParse : %d", toParse.size());
	//post("foundDot : %d", foundDot);
	//post("foundUnd : %d", foundUnd);
	
	if (foundUnd == (foundDot+1)) {

		if (foundDot > 0 && foundUnd > 0) {
			
			TTString parsed = toParse.substr(0,foundDot);
			if (foundUnd+1 < (int)toParse.size())
				parsed += toParse.substr(foundUnd+1);
		
			b = gensym((char*)parsed.data());
		}
		else
			b = a;
	}		
	else
		b = a;
	
	//post("after parsing : %s", b->s_name);
	return b;
}

t_max_err nmspc_get_format(TTPtr self, TTPtr attr, AtomCount *ac, AtomPtr *av)
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
	
	atom_setsym(*av, x->msg);
	
	return MAX_ERR_NONE;
}

t_max_err nmspc_set_format(TTPtr self, TTPtr attr, AtomCount ac, AtomPtr av) 
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if (ac&&av) {
		x->msg = atom_getsym(av);
	} else {
		// no args, set to none
		x->msg = _sym_none;
	}
	return MAX_ERR_NONE;
}

