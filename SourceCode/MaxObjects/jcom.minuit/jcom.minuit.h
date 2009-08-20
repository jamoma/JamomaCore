/* 
 * jcom.minuit
 * External for Jamoma:  ...
 * By ThÈo de la Hogue, Copyright 2009
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html
 */

#include "Jamoma.h"

// define default values
#define TAB "	"
#define LB "\n"

#define TEXT_BUFFER_SIZE 4096

// Data Structure for this object
typedef struct _node{

	t_object				ob;
	void					*p_out;		// the leftmost outlet
	t_symbol				*address;	// memorized the current adress
	NodePtr					p_node;		// a pointer to a node of the tree
	t_linklist				*lk_nodes;	// a pointer to a selection of nodes of the tree

} t_node;

// Prototypes for methods

// Public methods
void*			node_new(t_symbol *name, long argc, t_atom *argv);
void			node_free(t_node *x);
t_max_err		node_notify(t_node *x, t_symbol *s, t_symbol *msg, void *sender, void *data);
void			node_assist(t_node *x, void *b, long m, long a, char *s);

// methods for jcom.minuit
void			node_namespace(t_node *x, t_symbol *address);
void			node_get(t_node *x, t_symbol *address);

// Private methods
void node_goto(t_node *x, t_symbol *address);
