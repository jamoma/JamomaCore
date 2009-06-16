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
	class_addmethod(c, (method)node_save,			"save",			0);

	// this method save the node tree in an opml file at the given path or,
	// if there isn't path, open a dialog to select one.
	class_addmethod(c, (method)node_saveas,			"saveas",		A_GIMME, 0);

	// this method dump all the address of the tree in the max window
	class_addmethod(c, (method)node_dump,			"dump",			0);

	// this method go to the given address
	class_addmethod(c, (method)node_goto,			"goto",			A_SYM, 0);

	// this method set the name of the actual node
	class_addmethod(c, (method)node_set_name,		"set_name",		A_SYM, 0);

	// this method set the instance of the actual node
	class_addmethod(c, (method)node_set_instance,	"set_instance",	A_SYM, 0);

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

		// default : get the root of the tree
		x->p_node = jamoma_node_init();

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

void node_saveas(t_node *x, t_symbol *msg, long argc, t_atom *argv)
{
	if(argc && argv)
		defer((t_object*)x, (method)node_dosave, 0, argc, argv);
	else 
		defer((t_object*)x, (method)node_dosave, gensym("no args in save as"), argc, argv);
}

void node_save(t_node *x)
{
	defer((t_object*)x, (method)node_dosave, 0, 0, NULL);
}

void node_goto(t_node *x, t_symbol *address)
{
	x->p_node = jamoma_node_get(address);
}

void node_set_name(t_node *x, t_symbol *name)
{
	jamoma_node_set_name(x->p_node,name);
}

void node_set_instance(t_node *x, t_symbol *instance)
{
	jamoma_node_set_instance(x->p_node,instance);
}

void node_dump(t_node *x)
{
	// dump all the address of the tree
	jamoma_node_dump();
}


// Private methods
void node_dosave(t_node *x, t_symbol *msg, long argc, t_atom *argv)
{
	long 			type = 'TEXT';					// four-char code for Mac file type
	char 			filename[MAX_FILENAME_CHARS];	// for storing the name of the file locally
	char 			fullpath[MAX_PATH_CHARS];		// for storing the absolute path of the file
	short 			err;							// error number
	long			outtype;						// the file type that is actually true
	t_filehandle	fh;								// a reference to our file (for opening it, closing it, etc.)

	// GET THE PATH
	// check the args to see if there is a user_path
	if(argc){
		strcpy(fullpath, atom_getsym(argv)->s_name);
		path_frompathname(fullpath, &x->node_tree_path, filename);
	}
	else{
		// Does a former cuelist_path exist ?
		if(x->node_tree_path && (msg != gensym("no args in save as"))){
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
	err = path_createsysfile(filename, x->node_tree_path, type, &fh);

	if(err){
		object_error((t_object *)x, "save : error saving %s", filename);
		return;
	}

	// AND WE SAVE THE filename IN x->cuelist_file.
	x->node_tree_file = gensym(filename);

	// HERE WE CAN FINALLY WRITE THE DATA OUT TO THE FILE
	// create a new ptr to the text
	x->eof = 0;
	x->ht_size = TEXT_BUFFER_SIZE;
	x->ht = sysmem_newptrclear(sizeof(char)*TEXT_BUFFER_SIZE);

	// write the tree as an opml file
	node_write_string(x, "<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>");
	node_write_string(x, LB);
	node_write_string(x, "<opml version=\"2.0\">");
	node_write_string(x, LB);

	// write head info
	node_opml_header(x);

	// write the body (the tree)

	node_write_string(x, "	<body>");
	node_write_string(x, LB);

	x->p_node = jamoma_node_init();
	critical_enter(0);
	node_dump_as_opml(x,0);	// dump the tree from the root
	critical_exit(0);

	node_write_string(x, "		</body>");
	node_write_string(x, LB);

	// close the opml file
	node_write_string(x, "	</opml>");

	// write ht into the text file
	err = sysfile_write(fh, &x->eof, x->ht);

	// close the file
	err = sysfile_seteof(fh, x->eof);
	if(err){
		object_error((t_object*)x, "save : error %d creating EOF of %s", err, filename);
		return;	
	}
	sysfile_close(fh);
}

void node_dump_as_post(t_node *x, short level)
{
	short i;
	char temp[64];
	char *tab = "    ";
	t_symbol *name = jamoma_node_name(x->p_node);
	t_symbol *instance = jamoma_node_instance(x->p_node);
	t_symbol *type = jamoma_node_type(x->p_node);
	t_linklist *lk = jamoma_node_children(x->p_node);

	for(i=0; i<level; i++)
		strcat(temp, tab);
	temp[4*level] = NULL;

	if(name && instance)
		post("%s%s.%s <%s>", temp, name->s_name, instance->s_name, type->s_name);
	else
		if(name)
			post("%s%s <%s>", temp, name->s_name, type->s_name);

	if(lk){
		post("%s{", temp);
		for(i=0; i<linklist_getsize(lk); i++){
			x->p_node = (JamomaNodePtr)linklist_getindex(lk,i);
			node_dump_as_post(x, level+1);
		}
		post("%s}", temp);
	}
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

void node_dump_as_opml(t_node *x, short level)
{
	short i;
	char temp[512];
	long len, err;
	t_symbol* sym;
	len = err = 0;

	// get info about the node
	t_symbol *name = jamoma_node_name(x->p_node);
	t_symbol *instance = jamoma_node_instance(x->p_node);
	t_symbol *type = jamoma_node_type(x->p_node);
	t_linklist *lk = jamoma_node_children(x->p_node);

	// make (2 + level) tabs
	node_write_string(x, TAB);
	node_write_string(x, TAB);
	for(i=0; i<level; i++)
		node_write_string(x, TAB);

	// write an outline for the node
	node_write_string(x, "<outline text=\"");
	if(name && instance){
		snprintf(temp, sizeof(temp), "%s.%s", name->s_name, instance->s_name);
		len = strlen(temp);
		x->eof += len;
	
		if(x->eof >= x->ht_size){
			x->ht_size += TEXT_BUFFER_SIZE;
			sysmem_resizeptr(x->ht,sizeof(char)*x->ht_size);
		}

		strcat(x->ht,temp);
	}
	else
		if(name)
			node_write_sym(x,name);
	node_write_string(x, "\">");

	// if there are children : do the same for each child
	if(lk){
		for(i=0; i<linklist_getsize(lk); i++){
			x->p_node = (JamomaNodePtr)linklist_getindex(lk,i);
			node_dump_as_opml(x, level+1);
		}
	}

	// close the outline of this node
	node_write_string(x, "</outline>");
}

// append an atom to a string
void node_write_atom(t_node *x, t_atom *src)
{
	char temp[512];
	long len, err;
	t_symbol* sym;
	len = err = 0;

	switch(src->a_type) 
	{
		case A_SYM:
			sym = atom_getsym(src);
			snprintf(temp, sizeof(temp), "%s", sym->s_name);
			break;
		case A_FLOAT:
			snprintf(temp, sizeof(temp), "%f", atom_getfloat(src));
			break;
		case A_LONG:
			snprintf(temp, sizeof(temp), "%ld", atom_getlong(src));
			break;
	}
	len = strlen(temp);
	x->eof += len;
	
	if(x->eof >= x->ht_size){
		x->ht_size += TEXT_BUFFER_SIZE;
		sysmem_resizeptr(x->ht,sizeof(char)*x->ht_size);
	}

	strcat(x->ht,temp);
}

void node_write_sym(t_node *x, t_symbol *src)
{
	node_write_string(x, src->s_name);
}

void node_write_string(t_node *x, char *src)
{
	char temp[256];
	long len, err;
	len = err = 0;

	snprintf(temp, sizeof(temp), "%s", src);

	len = strlen(temp);
	x->eof += len;

	if(x->eof >= x->ht_size){
		x->ht_size += TEXT_BUFFER_SIZE;
		sysmem_resizeptr(x->ht,sizeof(char)*x->ht_size);
	}

	strcat(x->ht,temp);
}

void node_write_long(t_node *x, long src)
{
	char temp[32];
	long len, err;
	len = err = 0;

	snprintf(temp, sizeof(temp), "%ld", src);

	len = strlen(temp);
	x->eof += len;

	if(x->eof >= x->ht_size){
		x->ht_size += TEXT_BUFFER_SIZE;
		sysmem_resizeptr(x->ht,sizeof(char)*x->ht_size);
	}

	strcat(x->ht,temp);
}

void node_write_float(t_node *x, float src)
{
	char temp[32];
	long len, err;
	len = err = 0;

	snprintf(temp, sizeof(temp), "%f", src);

	len = strlen(temp);
	x->eof += len;

	if(x->eof >= x->ht_size){
		x->ht_size += TEXT_BUFFER_SIZE;
		sysmem_resizeptr(x->ht,sizeof(char)*x->ht_size);
	}

	strcat(x->ht,temp);
}
