/* 
 * jcom.node
 * External for Jamoma:  experimental 
 * By Theo de la Hogue, Copyright 2009
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html
 */

#include "Jamoma.h"
#include "TTNode.h"
#include "TTSubscriber.h"

// Data Structure for this object
typedef struct _node{

	t_object		ob;
	void			*p_out;						///< the leftmost outlet
	
	TTSubscriberPtr	subscriber;					///< a pointer to a TTSubscriber object
	TTContainerPtr	container;					///< a pointer to a TTContainer object
	
	TTObjectPtr		param_observer;				///< a life cycle observer to observe any parameter creation (if asked by the user)

} t_node;

// Prototypes for methods

// Private methods
void			node_share_context_node(t_node *x, TTNodePtr *modelNode);

// Public methods
void*			node_new(t_symbol *name, long argc, t_atom *argv);
void			node_free(t_node *x);
t_max_err		node_notify(t_node *x, t_symbol *s, t_symbol *msg, void *sender, void *data);
void			node_assist(t_node *x, void *b, long m, long a, char *s);

void			node_bang(t_node *x);

void			node_build(t_node *x, SymbolPtr relativeAddress);
