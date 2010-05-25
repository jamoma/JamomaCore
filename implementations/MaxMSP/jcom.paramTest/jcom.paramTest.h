/* 
 * jcom.paramTest
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
typedef struct _paramTest{

	t_object		ob;
	void			*p_out;						///< the leftmost outlet
	
	TTSubscriberPtr	subscriber;					///< a pointer to a TTSubscriber object
	TTParameterPtr	parameter;					///< a pointer to a TTParameter object

} t_paramTest;

// Prototypes for methods

// Private methods
void			paramTest_share_context_node(t_paramTest *x, TTNodePtr *contextNode);
void			paramTest_return_value(t_paramTest *x, SymbolPtr msg, AtomCount argc, AtomPtr argv);

// Public methods
void*			paramTest_new(t_symbol *name, long argc, t_atom *argv);
void			paramTest_free(t_paramTest *x);
t_max_err		paramTest_notify(t_paramTest *x, t_symbol *s, t_symbol *msg, void *sender, void *data);
void			paramTest_assist(t_paramTest *x, void *b, long m, long a, char *s);

void			paramTest_bang(t_paramTest *x);

void			paramTest_build(t_paramTest *x, SymbolPtr relativeAddress, AtomCount argc, AtomPtr argv);
