/* 
 * jcom.node
 * External for Jamoma:  ...
 * By Théo de la Hogue, Copyright 2009
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html
 */

#include "Jamoma.h"

// define default values
#define TAB "	"
#define LB "\n"

#define TEXT_BUFFER_SIZE 5000

// Data Structure for this object
typedef struct _node{

	t_object				ob;
	void					*p_out;		// the leftmost outlet
	JamomaNodePtr			p_node;		// a pointer to a node of the tree

	short		node_tree_path;			// a text file /path/name
	t_symbol	*node_tree_file;		// the name of the node_tree

	t_object	*m_editor;				// a textfile editor
	t_object	*editorview;			// the textfile window
	char		*ht;					// a pointer to the text
	long		eof;					// the number of written char in text
	long		ht_size;				// the size of the text

} t_node;

// Prototypes for methods

// Public methods
void*			node_new(t_symbol *name, long argc, t_atom *argv);
void			node_free(t_node *x);
t_max_err		node_notify(t_node *x, t_symbol *s, t_symbol *msg, void *sender, void *data);
void			node_assist(t_node *x, void *b, long m, long a, char *s);

void			node_saveas(t_node *x, t_symbol *msg, long argc, t_atom *argv);
void			node_save(t_node *x);
void			node_dump(t_node *x);

// Private methods
void			node_dosave(t_node *x, t_symbol *msg, long argc, t_atom *argv);
void			node_dump_as_post(t_node *x, short level);
void			node_opml_header(t_node *x);
void			node_dump_as_opml(t_node *x, short level);
void			node_write_atom(t_node *x, t_atom *src);
void			node_write_sym(t_node *x, t_symbol *src);
void			node_write_string(t_node *x, char *src);
void			node_write_long(t_node *x, long src);
void			node_write_float(t_node *x, float src);
