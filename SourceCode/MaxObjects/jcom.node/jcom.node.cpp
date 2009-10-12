/* 
 * jcom.node
 * External for Jamoma : ...
 * By Théo de la Hogue, Copyright 2009
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */
#include "jcom.node.h"

// Globals
t_class		*node_class;

// implementation
#if 0
#pragma mark -
#pragma mark Class Definition
#endif 0

int JAMOMA_EXPORT_MAXOBJ main(void)
{
	t_class *c;
	
	jamoma_init();
	common_symbols_init();

	// Define our class
	c = class_new("jcom.node",(method)node_new, (method)node_free, (long)sizeof(t_node), 0L, A_GIMME, 0);

	// add methods
	class_addmethod(c, (method)node_notify,			"notify",		A_CANT, 0);
	class_addmethod(c, (method)node_assist,			"assist",		A_CANT, 0);

	// this method save the node tree in an opml file
	// at selected path (if the path already exist)
	class_addmethod(c, (method)node_writeagain,		"writeagain",			0);

	// this method save the node tree in an opml file at the given path or,
	// if there isn't path, open a dialog to select one.
	class_addmethod(c, (method)node_write,			"write",		A_GIMME, 0);

	// this method dump all the address of the tree in the max window
	class_addmethod(c, (method)node_dump,			"dump",			0);

	// send something to a param object registered in the tree
	class_addmethod(c, (method)node_anything,		"anything",		A_GIMME, 0);
	
	// this method listen the given address
	class_addmethod(c, (method)node_set_receive,	"receive",		A_SYM, 0);

	// this method go to the given address
	class_addmethod(c, (method)node_goto,			"goto",			A_SYM, 0);

	// this method add the tree of scripting name space of Max to the Jamoma tree
	class_addmethod(c, (method)node_add_max_tree,	"add_max_tree",	0);

	// Finalize our class
	class_register(CLASS_BOX, c);
	node_class = c;
	return 0;
}

#if 0
#pragma mark -
#pragma mark Life Cycle
#endif 0

void *node_new(t_symbol *name, long argc, t_atom *argv)
{
	t_node *x;

	x = (t_node*)object_alloc(node_class);

	if(x){
		
		x->p_out = outlet_new(x, 0);

		// default : get the root of the tree
		x->p_directory = jamoma_directory_init();

		x->node_tree_file = gensym("nodetree.opml");
		x->node_tree_path = 0;

	}
	return x;
}

void node_free(t_node *x)
{
	;
}

#if 0
#pragma mark -
#pragma mark Methods
#endif 0

t_max_err node_notify(t_node *x, t_symbol *s, t_symbol *msg, void *sender, void *data)
{
	object_post((t_object *)x, "notification : %s", msg->s_name);
	return MAX_ERR_NONE;
}

void node_assist(t_node *x, void *b, long msg, long arg, char *dst)
{
	if (msg == ASSIST_INLET) { // inlet
		//if(arg == 0)
		//strcpy(dst, "I am inlet 0");
	} 
	else {	// outlet
		//if(arg == 0)
		//strcpy(dst, "I am outlet 0");
	}		
}

void node_write(t_node *x, t_symbol *msg, long argc, t_atom *argv)
{
	if(argc && argv)
		defer((t_object*)x, (method)node_dowrite, 0, argc, argv);
	else 
		defer((t_object*)x, (method)node_dowrite, gensym("no args in write"), argc, argv);
}

void node_writeagain(t_node *x)
{
	defer((t_object*)x, (method)node_dowrite, 0, 0, NULL);
}

void node_anything(t_node *x, t_symbol *msg, long argc, t_atom *argv)
{
	t_object *obj;
	t_symbol *type;
	NodePtr p_node;
	JamomaError err = JAMOMA_ERR_NONE;

	// Are we dealing with an OSC message ?
	if(msg->s_name[0] == C_SEPARATOR){

		if(msg != x->address)
			err = jamoma_directory_get_node(msg, &(x->lk_nodes), &p_node);

		// if the address exists
		if(err == JAMOMA_ERR_NONE){

			x->address = msg;

			for(x->lk_nodes->begin(); x->lk_nodes->end(); x->lk_nodes->next()){

				x->lk_nodes->current().get(0,(TTPtr*)&p_node);
				
				obj = jamoma_node_max_object(p_node);
				type = jamoma_node_type(p_node);

				// if the node have an object
				if(obj){
					// to send to a maxobject
					if(type == gensym("maxobject")){

						if(atom_gettype(&argv[0]) == A_SYM)
							if(object_getmethod(obj, atom_getsym(&argv[0])))
								object_method_typed((t_object*)obj, atom_getsym(&argv[0]), argc-1, argv+1,NULL);
							else
								object_method_typed((t_object*)obj, NULL, argc, argv, NULL);
							
					}
					// to send to a jcom.parameter
					else
						object_method_typed((t_object*)obj, jps_dispatched, argc, argv, NULL);
				}
				else
					object_error((t_object*)x,"send : %s have no object", jamoma_node_name(p_node)->s_name);
			}
		}
		else
			object_error((t_object*)x,"send : %s doesn't exist", msg->s_name);
	}
}

void node_goto(t_node *x, t_symbol *address)
{
	NodePtr p_node = NULL;
	JamomaError err = JAMOMA_ERR_NONE;

	// Are we dealing with an OSC message ?
	if(address->s_name[0] == C_SEPARATOR){

		if(address != x->address){
			err = jamoma_directory_get_node(address, &(x->lk_nodes), &p_node);

			// if the address exists
			if(err == JAMOMA_ERR_NONE)
			x->address = address;
		}
	}
}



void node_set_receive(t_node *x, t_symbol *address)
{	
	ObserverPtr p_obsv;
	NodePtr p_node;
	
	jamoma_directory_get_node(address, &x->lk_nodes, &p_node);
	
	if(!x->lk_nodes->isEmpty()){
		for(x->lk_nodes->begin(); x->lk_nodes->end(); x->lk_nodes->next()){
			
			x->lk_nodes->current().get(0,(TTPtr*)&p_node);
			p_obsv = new Observer();
			p_obsv->addCallback(&node_receive_callback, x);
			p_node->addObserver(p_obsv);
		}
	}
}
							   
void node_receive_callback(void *x, char *address, long argc, void *argv)
{
	t_node* thisX = (t_node*)x;
	t_atom *argument = (t_atom*)argv;
	
	//if(argc && argv)
			outlet_anything(thisX->p_out, gensym(address), argc, argument);
}

void node_dump(t_node *x)
{
	// dump all the address of the tree
	jamoma_directory_dump();

	//for(i=0; i<attr_nb; i++){
	//	
	//	object_attr_getvalueof(obj, attr_names[i], &value_nb, &attr_value);

	//	for(j=0; j<value_nb; j++){

	//		if(atom_gettype(&attr_value[j]) == A_LONG)
	//			object_post((t_object *)x,"		> %s %d", attr_names[i]->s_name, atom_getlong(&attr_value[j]));

	//		if(atom_gettype(&attr_value[j]) == A_FLOAT)
	//			object_post((t_object *)x,"		> %s %f", attr_names[i]->s_name, atom_getfloat(&attr_value[j]));

	//		if((atom_gettype(&attr_value[j]) == A_SYM) && atom_getsym(&attr_value[j]))
	//			object_post((t_object *)x,"		> %s %s", attr_names[i]->s_name, atom_getsym(&attr_value[j])->s_name);
	//	}
	//}
}

void node_add_max_tree(t_node *x)
{
	t_object *patcher;
	t_max_err err;
	long result = 0;

	err = object_obex_lookup(x, gensym("#P"), &patcher);

	object_method(patcher, gensym("iterate"), node_myobject_iterator, (void *)x, PI_WANTBOX | PI_DEEP, &result);
}

long node_myobject_iterator(t_node *x, t_object *b)
{
	NodePtr newNode;
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

			jamoma_directory_register(gensym(temp), gensym("maxobject"), (t_object *)b, &newNode, &newInstanceCreated);

			// add varname and maxclass as properties of the node
			jamoma_node_set_properties(newNode,gensym("varname"));
			jamoma_node_set_properties(newNode,gensym("maxclass"));

			//if(newInstanceCreated)
			//	object_warn((t_object *)x,"%s : this scripting name is already registered in the tree", varname->s_name);
		}
	}

    return 0;
}


// Private methods
void node_dowrite(t_node *x, t_symbol *msg, long argc, t_atom *argv)
{
	long 			type = 'TEXT';					// four-char code for Mac file type
	char 			filename[MAX_FILENAME_CHARS];	// for storing the name of the file locally
	char 			fullpath[MAX_PATH_CHARS];		// for storing the absolute path of the file
	short 			err;							// error number
	long			outtype;						// the file type that is actually true

	// GET THE PATH
	// check the args to see if there is a user_path
	if(argc){
		strcpy(fullpath, atom_getsym(argv)->s_name);
		path_frompathname(fullpath, &x->node_tree_path, filename);
	}
	else{
		// Does a former cuelist_path exist ?
		if(x->node_tree_path && (msg != gensym("no args in write"))){
			strcpy(filename,x->node_tree_file->s_name);
		}
		else{
			// open a dialog to ask for a name
			strcpy(filename,x->node_tree_file->s_name);
			saveas_promptset("Save node tree...");										// Instructional Text in the dialog
			err = saveasdialog_extended(filename, &x->node_tree_path, &outtype, &type, 1);// Returns 0 if successful
			if(err)																		// User Cancelled
				return;
		}
	}

	// NOW ATTEMPT TO CREATE THE FILE...
	err = path_createsysfile(filename, x->node_tree_path, type, &x->fh);

	if(err){
		object_error((t_object *)x, "save : error saving %s", filename);
		return;
	}

	// AND WE SAVE THE filename IN x->cuelist_file.
	x->node_tree_file = gensym(filename);

	// HERE WE CAN FINALLY WRITE THE DATA OUT TO THE FILE
	x->eof = 0;

	// create a new buffer
	x->eobuf = 0;
	x->buf = sysmem_newhandleclear(TEXT_BUFFER_SIZE);

	// write the tree as an opml file
	critical_enter(0);
	node_write_string(x, "<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>");
	node_write_string(x, LB);
	node_write_string(x, "<opml version=\"2.0\">");
	node_write_string(x, LB);

	// write head info
	node_opml_header(x);

	// write the body (the tree)

	node_write_string(x, "	<body>");
	node_write_string(x, LB);

	x->p_directory = jamoma_directory_init();
	node_dump_as_opml(x,0);	// dump the tree from the root

	node_write_string(x, "		</body>");
	node_write_string(x, LB);

	// close the opml file
	node_write_string(x, "	</opml>");

	// write the buffer
	node_write_buffer(x);

	critical_exit(0);

	// close the file
	err = sysfile_seteof(x->fh, x->eof);
	if(err){
		object_error((t_object*)x, "save : error %d creating EOF of %s", err, filename);
		return;	
	}
	sysfile_close(x->fh);
}

void node_opml_header(t_node *x)
{
	node_write_string(x, "	<head>");
	node_write_string(x, LB);
	node_write_string(x, "		<title>workspace.userlandsamples.doSomeUpstreaming</title>");
	node_write_string(x, LB);
	node_write_string(x, "		<dateCreated>Mon, 11 Feb 2002 22:48:02 GMT</dateCreated>");
	node_write_string(x, LB);
	node_write_string(x, "		<dateModified>Sun, 30 Oct 2005 03:30:17 GMT</dateModified>");
	node_write_string(x, LB);
	node_write_string(x, "		<ownerName>Dave Winer</ownerName>");
	node_write_string(x, LB);
	node_write_string(x, "		<ownerEmail>dwiner@yahoo.com</ownerEmail>");
	node_write_string(x, LB);
	node_write_string(x, "		<expansionState>1, 2, 4</expansionState>");
	node_write_string(x, LB);
	node_write_string(x, "		<vertScrollState>1</vertScrollState>");
	node_write_string(x, LB);
	node_write_string(x, "		<windowTop>74</windowTop>");
	node_write_string(x, LB);
	node_write_string(x, "		<windowLeft>41</windowLeft>");
	node_write_string(x, LB);
	node_write_string(x, "		<windowBottom>314</windowBottom>");
	node_write_string(x, LB);
	node_write_string(x, "		<windowRight>475</windowRight>");
	node_write_string(x, LB);
	node_write_string(x, "		</head>");
	node_write_string(x, LB);
}

void node_dump_as_opml(t_node *x, ushort level)
{
	unsigned int i;
	char temp[512];
	long len, err;
	TTSymbolPtr attr;
	NodePtr p_node;
	len = err = 0;

	// get info about the node
	t_symbol *name = jamoma_node_name(p_node);
	t_symbol *instance = jamoma_node_instance(p_node);
	//t_symbol *type = jamoma_node_type(p_node);
	TTListPtr lk_prp = jamoma_node_properties(p_node);
	TTListPtr lk_chd = jamoma_node_children(p_node);

	// make (2 + level) tabs
	node_write_string(x, TAB);
	node_write_string(x, TAB);
	for(i=0; i<level; i++)
		node_write_string(x, TAB);

	// write an outline for the node
	node_write_string(x, "<outline text=\"");
	if(name != gensym("")){
		if(instance != gensym(""))
			snprintf(temp, sizeof(temp), "%s.%s", name->s_name, instance->s_name);
		else
			snprintf(temp, sizeof(temp), "%s", name->s_name);

		node_write_string(x,temp);
	}
	node_write_string(x, "\">");
	node_write_string(x, LB);

	// if there are properties
	if(lk_prp){
		// write an outline for the attributes
		node_write_string(x, "<outline text=\":\">");
		node_write_string(x, LB);

		// write an outline for each attribute
		attr = NULL;
		for(lk_prp->begin(); lk_prp->end(); lk_prp->next()){

			lk_prp->current().get(0,(TTSymbol**)attr);
			node_write_string(x, "<outline text=\"");
			node_write_string(x, (char*)attr->getCString());
			node_write_string(x,"\"/>");
			node_write_string(x, LB);
		}

		// close the outline of attributes
		node_write_string(x, "</outline>");
		node_write_string(x, LB);
	}

	// if there are children : do the same for each child
	if(lk_chd){
		for(lk_chd->begin(); lk_chd->end(); lk_chd->next()){

			lk_chd->current().get(0,(TTObject **)&p_node);
			node_dump_as_opml(x, level+1);
		}
	}

	// close the outline of this node
	node_write_string(x, "</outline>");
	node_write_string(x, LB);
}

// append an atom to a string
void node_write_atom(t_node *x, t_atom *src)
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
		node_write_buffer(x);
	}

	// append the temp to the text buffer
	if(*(x->buf))
		strcat(*(x->buf),temp);
}

void node_write_sym(t_node *x, t_symbol *src)
{
	node_write_string(x, src->s_name);
}

void node_write_string(t_node *x, char *src)
{
	char temp[256];

	snprintf(temp, sizeof(temp), "%s ", src);

	x->eobuf += strlen(temp);

	// before buffer becomes full ...
	if(x->eobuf >= TEXT_BUFFER_SIZE){
		// ... write the buffer into the text file
		node_write_buffer(x);
	}

	// append the temp to the text buffer
	if(*(x->buf))
		strcat(*(x->buf),temp);
}

void node_write_long(t_node *x, long src)
{
	char temp[32];

	snprintf(temp, sizeof(temp), "%ld ", src);

	x->eobuf += strlen(temp);

	// before buffer becomes full ...
	if(x->eobuf >= TEXT_BUFFER_SIZE){
		// ... write the buffer into the text file
		node_write_buffer(x);
	}

	// append the temp to the text buffer
	if(*(x->buf))
		strcat(*(x->buf),temp);
}

void node_write_float(t_node *x, float src)
{
	char temp[32];

	snprintf(temp, sizeof(temp), "%f ", src);

	x->eobuf += strlen(temp);

	// before buffer becomes full ...
	if(x->eobuf >= TEXT_BUFFER_SIZE){
		// ... write the buffer into the text file
		node_write_buffer(x);
	}

	// append the temp to the text buffer
	if(*(x->buf))
		strcat(*(x->buf),temp);
}

// write the buffer into a text file
void node_write_buffer(t_node *x)
{
	short	err = 0;
	long	len = 0;
	
	len = strlen(*(x->buf));

	// write into a text file
	err = sysfile_write(x->fh, &len, *(x->buf));

	if(err){
		error("node_write_buffer : sysfile_write error (%d)", err);
		return;
	}
	x->eof += len;

	// clear the buffer
	x->eobuf = 0;
	sysmem_freehandle(x->buf);
	x->buf = sysmem_newhandleclear(TEXT_BUFFER_SIZE);
}
