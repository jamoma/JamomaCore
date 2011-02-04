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
#define dumpout 2

// Definitions
void		WrapTTExplorerClass(WrappedClassPtr c);
void		WrappedExplorerClass_new(TTPtr self, AtomCount argc, AtomPtr argv);

void		nmspc_assist(TTPtr self, void *b, long m, long a, char *s);

void		nmspc_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		nmspc_bang(TTPtr self);
void		nmspc_symbol(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		nmspc_write(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		nmspc_dowrite(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		nmspc_build(TTPtr self, SymbolPtr address);

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
	CLASS_ATTR_ENUM(c->maxClass,		"format",	0,		"none umenu umenu_prefix jit.cellblock");

	
}

void WrappedExplorerClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	SymbolPtr					address;
 	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments
	
	// A Modular object needs an address argument
	if (attrstart && argv) 
		address = atom_getsym(argv);
	else
		address = _sym_nothing;
	
	// create the explorer
	jamoma_explorer_create((ObjectPtr)x, &x->wrappedObject);
	
	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	defer_low((ObjectPtr)x, (method)nmspc_build, address, 0, 0);
	
	// Make two outlets
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 2);
	x->outlets[none_one_out] = outlet_new(x, NULL);
	x->outlets[data_out] = outlet_new(x, NULL);
	
	x->msg = _sym_none;
	
	// handle attribute args
	attr_args_process(x, argc, argv);
}

void nmspc_build(TTPtr self, SymbolPtr address)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	//TTValue						v;
	//TTNodePtr					node;
	//TTSymbolPtr					absoluteAddress;
	
	/* To make jcom.namespace relative to his context...
	 
	if (node = jamoma_context_node_get((ObjectPtr)self)) {
	
		// Get his absolute address
		node->getOscAddress(&absoluteAddress);
		v.append(absoluteAddress);
		x->wrappedObject->setAttributeValue(kTTSym_Address, v);
	}
	 */
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
			case dumpout:
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
	Atom		a[1];
	
	// Ask Explorer object
	x->wrappedObject->getAttributeValue(TT("lookfor"), v);
	v.get(0, &lookfor);
	
	x->wrappedObject->getAttributeValue(kTTSym_address, v);
	v.get(0, &address);
	
	// UMENU FORMAT
	if (x->msg == gensym("umenu") || x->msg == gensym("umenu_prefix")) {

		// clear umenu
		outlet_anything(x->outlets[data_out], _sym_clear, 0, NULL);
		
		// prepare umenu prefix to be concatenated
		if (x->msg == gensym("umenu_prefix")) {
			
			atom_setlong(a, 0);
			outlet_anything(x->outlets[data_out], gensym("prefix_mode"), 1, a);
			
			// prepare umenu prefix 
			// (except in case the explorer look for Instances)
			if(address == S_SEPARATOR)
				atom_setsym(a, gensym((char*)address->getCString()));
			else{
				TTString prefix = address->getCString();
				
				if(lookfor == kTTSym_children)
					prefix += "/";
				if(lookfor == kTTSym_instances)
					prefix += ".";
				if(lookfor == kTTSym_attributes)
					prefix += ":";
				else
					prefix += "";
				
				atom_setsym(a, gensym((char*)prefix.data()));
			}
			
			outlet_anything(x->outlets[data_out], gensym("prefix"), 1, a);
		}
		
		// fill umenu
		// output msg
		s = msg;
		if(lookfor == kTTSym_attributes)
			s = jamoma_TTName_To_MaxName(TT(s->s_name));
		
		if (lookfor == kTTSym_instances && s == _sym_nothing)
			s = gensym("_");
		if (s) {
			atom_setsym(a, s);
			outlet_anything(x->outlets[data_out], _sym_append, 1, a);
		}
		
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
	
	// NO FORMAT
	outlet_anything(x->outlets[data_out], msg, argc, argv);
}

void nmspc_bang(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;

	x->wrappedObject->sendMessage(TT("Explore"));
}

void nmspc_symbol(TTPtr self, t_symbol *msg, long argc, t_atom *argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue v;
	
	if (msg->s_name[0] == C_SEPARATOR) {
		v.append(TT(nmspc_filter_underscore_instance(msg)->s_name));
		x->wrappedObject->setAttributeValue(kTTSym_address, v);
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
	char 			filepath[MAX_FILENAME_CHARS];	// for storing the name of the file locally
	char 			fullpath[MAX_PATH_CHARS];		// for storing the absolute path of the file
	short 			path, err;						// pathID#, error number
	t_filehandle	file_handle;					// a reference to our file (for opening it, closing it, etc.)
	long			filetype = 'TEXT', outtype;		// the file type that is actually true
	TTValue			args, v;
	SymbolPtr		userpath;
	TTSymbolPtr		nodeAddress;
	TTXmlHandlerPtr	aXmlHandler = NULL;
	//TTTextHandlerPtr	aTextHandler;
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
		x->subscriberObject->getAttributeValue(TT("nodeAddress"), v);
		v.get(0, (TTPtr*)&nodeAddress);
		object_error((t_object*)x, "%s : file not created", gensym((char*)nodeAddress->getCString()));
		return;
	}
	
	jcom_file_get_path(path, filepath, fullpath);
	
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


/*
{

	// write the tree as an opml file
	critical_enter(0);
	nmspc_write_string(x, "<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>");
	nmspc_write_string(x, LB);
	nmspc_write_string(x, "<opml version=\"2.0\">");
	nmspc_write_string(x, LB);

	// write head info
	nmspc_opml_header(x);

	// write the body (the tree)

	nmspc_write_string(x, "	<body>");
	nmspc_write_string(x, LB);

	nmspc_dump_as_opml(x, jamoma_directory->getRoot(), 0);	// dump the tree from the root

	nmspc_write_string(x, "		</body>");
	nmspc_write_string(x, LB);

	// close the opml file
	nmspc_write_string(x, "	</opml>");

	// write the buffer
	nmspc_write_buffer(x);
}

void nmspc_opml_header(t_nmspc *x)
{
	nmspc_write_string(x, "	<head>");
	nmspc_write_string(x, LB);
	nmspc_write_string(x, "		<title>workspace.userlandsamples.doSomeUpstreaming</title>");
	nmspc_write_string(x, LB);
	nmspc_write_string(x, "		<dateCreated>Mon, 11 Feb 2002 22:48:02 GMT</dateCreated>");
	nmspc_write_string(x, LB);
	nmspc_write_string(x, "		<dateModified>Sun, 30 Oct 2005 03:30:17 GMT</dateModified>");
	nmspc_write_string(x, LB);
	nmspc_write_string(x, "		<ownerName>Dave Winer</ownerName>");
	nmspc_write_string(x, LB);
	nmspc_write_string(x, "		<ownerEmail>dwiner@yahoo.com</ownerEmail>");
	nmspc_write_string(x, LB);
	nmspc_write_string(x, "		<expansionState>1, 2, 4</expansionState>");
	nmspc_write_string(x, LB);
	nmspc_write_string(x, "		<vertScrollState>1</vertScrollState>");
	nmspc_write_string(x, LB);
	nmspc_write_string(x, "		<windowTop>74</windowTop>");
	nmspc_write_string(x, LB);
	nmspc_write_string(x, "		<windowLeft>41</windowLeft>");
	nmspc_write_string(x, LB);
	nmspc_write_string(x, "		<windowBottom>314</windowBottom>");
	nmspc_write_string(x, LB);
	nmspc_write_string(x, "		<windowRight>475</windowRight>");
	nmspc_write_string(x, LB);
	nmspc_write_string(x, "		</head>");
	nmspc_write_string(x, LB);
}

void nmspc_dump_as_opml(t_nmspc *x, TTNodePtr parent, ushort level)
{
	unsigned int i;
	char		temp[512];
	TTSymbolPtr attr;
	TTValue		attributeNameList;
	TTSymbolPtr attributeName;
	TTList		lk_chd;
	TTNodePtr	p_node;

	// get info about the node
	t_symbol *type = jamoma_node_type(parent);
	
	if((type == gensym("hub")) || 
	   (type == jps_subscribe_parameter) || 
	   (type == jps_subscribe_message) || 
	   (type == jps_subscribe_return) || 
	   (type == gensym("container")))
	{
		t_symbol *name = jamoma_node_name(parent);
		t_symbol *instance = jamoma_node_instance(parent);
		
		parent->getAttributeNames(attributeNameList);
		jamoma_node_children(parent, lk_chd);
		
		// make (2 + level) tabs
		nmspc_write_string(x, TAB);
		nmspc_write_string(x, TAB);
		for(i=0; i<level; i++)
			nmspc_write_string(x, TAB);
		
		// write an outline for the node
		nmspc_write_string(x, "<outline text=\"");
		if(name != gensym("")){
			if(instance != gensym(""))
				snprintf(temp, sizeof(temp), "%s.%s", name->s_name, instance->s_name);
			else
				snprintf(temp, sizeof(temp), "%s", name->s_name);
			
			nmspc_write_string(x,temp);
		}
		nmspc_write_string(x, "\">");
		nmspc_write_string(x, LB);
		
		// if there are properties
		if(attributeNameList.getSize()){
			// write an outline for each attribute
			attr = NULL;
			for(i = 0; i < attributeNameList.getSize(); i++)
			{
				attributeNameList.get(i,(TTSymbolPtr*)&attributeName);
				nmspc_write_string(x, "<outline text=\"");
				nmspc_write_string(x, (char*)attributeName->getCString());
				nmspc_write_string(x,"\"/>");
				nmspc_write_string(x, LB);
			}
			
		}
		
		// if there are children : do the same for each child
		if(!lk_chd.isEmpty()){
			for(lk_chd.begin(); lk_chd.end(); lk_chd.next()){
				
				lk_chd.current().get(0,(TTPtr*)&p_node);
				nmspc_dump_as_opml(x, p_node, level+1);
			}
		}
		
		// close the outline of this node
		nmspc_write_string(x, "</outline>");
		nmspc_write_string(x, LB);
	}
}
 */

/*
// append an atom to a string
void nmspc_write_atom(t_nmspc *x, t_atom *src)
{
	char temp[512];
	t_symbol* sym;

	switch(src->a_type) 
	{
		case A_SYM:
			sym = atom_getsym(src);
			snprintf(temp, sizeof(temp), "%s ", sym->s_name);
			break;
		case A_FLOAT:
			snprintf(temp, sizeof(temp), "%f ", atom_getfloat(src));
			break;
		case A_LONG:
			snprintf(temp, sizeof(temp), "%ld ", atom_getlong(src));
			break;
	}

	x->eobuf += strlen(temp);

	// before buffer becomes full ...
	if(x->eobuf >= TEXT_BUFFER_SIZE){
		// ... write the buffer into the text file
		nmspc_write_buffer(x);
	}

	// append the temp to the text buffer
	if(*(x->buf))
		strcat(*(x->buf),temp);
}

void nmspc_write_sym(t_nmspc *x, t_symbol *src)
{
	nmspc_write_string(x, src->s_name);
}

void nmspc_write_string(t_nmspc *x, char *src)
{
	char temp[256];

	snprintf(temp, sizeof(temp), "%s ", src);

	x->eobuf += strlen(temp);

	// before buffer becomes full ...
	if(x->eobuf >= TEXT_BUFFER_SIZE){
		// ... write the buffer into the text file
		nmspc_write_buffer(x);
	}

	// append the temp to the text buffer
	if(*(x->buf))
		strcat(*(x->buf),temp);
}

void nmspc_write_long(t_nmspc *x, long src)
{
	char temp[32];

	snprintf(temp, sizeof(temp), "%ld ", src);

	x->eobuf += strlen(temp);

	// before buffer becomes full ...
	if(x->eobuf >= TEXT_BUFFER_SIZE){
		// ... write the buffer into the text file
		nmspc_write_buffer(x);
	}

	// append the temp to the text buffer
	if(*(x->buf))
		strcat(*(x->buf),temp);
}

void nmspc_write_float(t_nmspc *x, float src)
{
	char temp[32];

	snprintf(temp, sizeof(temp), "%f ", src);

	x->eobuf += strlen(temp);

	// before buffer becomes full ...
	if(x->eobuf >= TEXT_BUFFER_SIZE){
		// ... write the buffer into the text file
		nmspc_write_buffer(x);
	}

	// append the temp to the text buffer
	if(*(x->buf))
		strcat(*(x->buf),temp);
}

// write the buffer into a text file
void nmspc_write_buffer(t_nmspc *x)
{
	short	err = 0;
	long	len = 0;
	
	len = strlen(*(x->buf));

	// write into a text file
	err = sysfile_write(x->fh, &len, *(x->buf));

	if(err){
		error("nmspc_write_buffer : sysfile_write error (%d)", err);
		return;
	}
	x->eof += len;

	// clear the buffer
	x->eobuf = 0;
	sysmem_freehandle(x->buf);
	x->buf = sysmem_newhandleclear(TEXT_BUFFER_SIZE);
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

