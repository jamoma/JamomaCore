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
	
	TTSymbolPtr		relativeAddress;			///< the address of this jcom.node relative to the jmod.patcher node
	TTSymbolPtr		absoluteAddress;			///< the address of this jcom.node relative in the tree structure
	ObjectPtr		modelPatcher;				///< the jmod.patcher which contains this jcom.node
	TTSymbolPtr		modelAddress;				///< address of the model node in the tree
	
	TTNodePtr		node;						///< the TTNode relative to this jcom.node
	TTNodePtr		modelNode;					///< the TTNode relative to the model
	
	TTObjectPtr		param_observer;				///< a life cycle observer to observe any parameter creation (if asked by the user)

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
