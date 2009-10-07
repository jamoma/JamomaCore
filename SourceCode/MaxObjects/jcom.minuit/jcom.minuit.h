/* 
 * jcom.minuit
 * External for Jamoma:  ...
 * By Theo de la Hogue and Stan Bundervoet, Copyright 2009
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html
 */

#include "Jamoma.h"

// define default values
#define REQUEST_SIZE 1024

/**
	This Max external implements part of the Minuit Protocol, 
	more specifically it implements a syntax for messages used 
	for scrutinizing the namespace and obtaining/changing values 
	of nodes or leaves (non containing nodes) in the Nodelib nodetree. */
	

// Data Structure for this object
typedef struct _node{
	t_object				ob;
	void					*p_info;	// the leftmost outlet
	Controller				*c_control; // a pointer to the controller
	t_symbol				*device;	// memorized the current device
	t_symbol				*address;	// memorized the current adress
	TTNodePtr				p_node;		// a pointer to a TTnode of the tree
	TTListPtr				lk_nodes;	// a pointer to a selection of TTnodes of the tree
	bool					b_debug;	// true : display bebug message in the console
} t_node;

// Prototypes for methods

// Public methods
void*			minuit_new(t_symbol *name, long argc, t_atom *argv);
void			minuit_free(t_node *x);
t_max_err		minuit_notify(t_node *x, t_symbol *s, t_symbol *msg, void *sender, void *data);
void			minuit_assist(t_node *x, void *b, long m, long a, char *s);

// methods for jcom.minuit
/** this method receive data from the Minuit network */
void			minuit_callback(void *arg, std::string message);

/** this method parses a minuit protocol message and returns the children (leaves or nodes) and the properties of the node which address is given to the outlet */
void			minuit_namespace(t_node *x, t_symbol *address);
void			minuit_donamespace(t_node *x, t_symbol *address);

/** this method parses a minuit protocol message and returns the value(s) of an attribute of a certain node*/
void			minuit_get(t_node *x, t_symbol *attraddress);
void			minuit_doget(t_node *x, t_symbol *attraddress);

/** this method parses a minuit protocol message and sets the value(s) of an attribute of a certain node */
void			minuit_set(t_node *x, t_symbol *msg, long argc, t_atom *argv);
void			minuit_doset(t_node *x, t_symbol *msg, long argc, t_atom *argv);

/** this method allows the user to set the jcom.minuit in Debug mode */
void			minuit_debug(t_node *x, long n);

// Private methods
void			minuit_goto(t_node *x, t_symbol *address);
t_symbol*		minuit_convert_attribut_jamoma2minuit(t_symbol *attribute);
t_symbol*		minuit_convert_attribut_minuit2jamoma(t_symbol *attribute);
