/* 
 * jcom.node
 * External for Jamoma:  experimental 
 * By Theo de la Hogue, Copyright 2009
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html
 */

#include "Jamoma.h"

// Data Structure for this object
typedef struct _node{

	t_object		ob;
	void			*p_out;					// the leftmost outlet

} t_node;

// Prototypes for methods

// Public methods
void*			node_new(t_symbol *name, long argc, t_atom *argv);
void			node_free(t_node *x);
t_max_err		node_notify(t_node *x, t_symbol *s, t_symbol *msg, void *sender, void *data);
void			node_assist(t_node *x, void *b, long m, long a, char *s);
