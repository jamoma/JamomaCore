/* 
 * jcom.namespace
 * External to deal with the Jamoma Namespace
 * By Theo de la Hogue, Copyright 2010
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html
 */

#include "Jamoma.h"

// define default values
#define TAB "	"
#define LB "\n"

#define TEXT_BUFFER_SIZE 4096

typedef void (*pf_sym)(void *x, t_symbol *adr);			// pointer to a function with the struct pointer given and a symbol for the address

// Data Structure for this object
typedef struct _nmspc{

	t_object		ob;
	void			*_out;					// outlet for value or extra info (the leftmost outlet)
	
	t_symbol		*attr_operation;		///< ATTRIBUTE: an operation to perform
	t_symbol		*attr_address;			///< ATTRIBUTE: the address to discover or observe
	long			attr_observe;			///< ATTRIBUTE: to observe or not the address in order to update the content of umenu
	
	method			operation;				///< pointer on the a method
	
	short			nmspc_file_path;		// a text file /path/name
	t_symbol		*nmspc_file_name;		// the name of the namespace file

	t_object		*m_editor;				// a textfile editor
	t_object		*editorview;			// the textfile window
	t_filehandle	fh;						// a reference to a file (for opening it, closing it, etc.).
	unsigned int	eof;					// the number of written char in the file.
	char			**buf;					// a text handler //(pointer to a text buffer)
	long			eobuf;					// the number of written char in the text buffer

} t_nmspc;

// Prototypes for methods

// Public methods
void*			nmspc_new(t_symbol *name, long argc, t_atom *argv);
void			nmspc_free(t_nmspc *x);
t_max_err		nmspc_notify(t_nmspc *x, t_symbol *s, t_symbol *msg, void *sender, void *data);
void			nmspc_assist(t_nmspc *x, void *b, long m, long a, char *s);

t_max_err		nmspc_attr_set_operation(t_nmspc *x, void *attr, long argc, t_atom *argv);
t_max_err		nmspc_attr_set_address(t_nmspc *x, void *attr, long argc, t_atom *argv);
t_max_err		nmspc_attr_set_observe(t_nmspc *x, void *attr, long argc, t_atom *argv);

void			nmspc_bang(t_nmspc *x);
void			nmspc_symbol(t_nmspc *x, t_symbol *msg, long argc, t_atom *argv);

void			nmspc_write(t_nmspc *x, t_symbol *msg, long argc, t_atom *argv);
void			nmspc_writeagain(t_nmspc *x);

void			nmspc_get_children(t_nmspc *x, t_symbol *address);
void			nmspc_get_instances(t_nmspc *x, t_symbol *address);
void			nmspc_get_attributes(t_nmspc *x, t_symbol *address);

void			nmspc_get_hubs(t_nmspc *x);
void			nmspc_get_parameters(t_nmspc *x, t_symbol *address);
void			nmspc_get_messages(t_nmspc *x, t_symbol *address);
void			nmspc_get_returns(t_nmspc *x, t_symbol *address);

void			nmspc_dump(t_nmspc *x);

void			nmspc_add_max_namespace(t_nmspc *x);

// Private methods
void			nmspc_dowrite(t_nmspc *x, t_symbol *msg, long argc, t_atom *argv);
void			nmspc_opml_header(t_nmspc *x);
void			nmspc_dump_as_opml(t_nmspc *x, TTNodePtr n, ushort level);
void			nmspc_write_atom(t_nmspc *x, t_atom *src);
void			nmspc_write_sym(t_nmspc *x, t_symbol *src);
void			nmspc_write_string(t_nmspc *x, char *src);
void			nmspc_write_long(t_nmspc *x, long src);
void			nmspc_write_float(t_nmspc *x, float src);
void			nmspc_write_buffer(t_nmspc *x);
long			nmspc_myobject_iterator(t_nmspc *x, t_object *b);
