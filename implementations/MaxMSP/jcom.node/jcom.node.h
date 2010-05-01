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
	void			*p_out;						///< the leftmost outlet
	
	bool			built;						///< true when the TTNode is built
	
	TTSymbolPtr		name;						///< the name of the node
	TTSymbolPtr		parent;						///< the name of the parent node
	TTListPtr		modelList;					///< the list containing each <modelName, patcher> above the jcom.node
	
	TTNodePtr		node;						///< the TTNode relative to this jcom.node
	TTNodePtr		modelNode;					///< the TTNode relative to the model
	TTSymbolPtr		address;					///< the address of this jcom.node in the jamoma tree
	
	TTObjectPtr		life_observer;				///< a pointer to a life cycle observer

} t_node;

// Prototypes for methods

// Private methods
void			node_share_model_node(t_node *x, TTNodePtr *modelNode);

// Public methods
void*			node_new(t_symbol *name, long argc, t_atom *argv);
void			node_free(t_node *x);
t_max_err		node_notify(t_node *x, t_symbol *s, t_symbol *msg, void *sender, void *data);
void			node_assist(t_node *x, void *b, long m, long a, char *s);

void			node_bang(t_node *x);

void			node_build(t_node *x);

void			node_directory_callback(t_node *x, t_symbol *msg, long argc, t_atom *argv);
