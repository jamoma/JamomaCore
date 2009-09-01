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

/**
	This Max external implements part of the Minuit Protocol, 
	more specifically it implements a syntax for messages used 
	for scrutinizing the namespace and obtaining/changing values 
	of nodes or leaves (non containing nodes) in the Nodelib nodetree. */
	

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

/** this method parses a minuit protocol message and returns the children (leaves or nodes) and the properties of the node which address is given to the outlet */
void			minuit_namespace(t_node *x, t_symbol *address);

/** this method parses a minuit protocol message and returns the value(s) of an attribute of a certain node*/
void			minuit_get(t_node *x, t_symbol *attraddress);

/** this method parses a minuit protocol message and sets the value(s) of an attribute of a certain node */
void			minuit_set(t_node *x, t_symbol *msg, long argc, t_atom *argv);


// Private methods
void node_goto(t_node *x, t_symbol *address);
