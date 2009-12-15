/* 
 * jcom.minuit
 * External for Jamoma:  ...
 * By Theo de la Hogue and Stan Bundervoet, Copyright 2009
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html
 */

#include "Jamoma.h"
//#include "ControllerLib.h"				// Plugin manager for network communication

// define default values
#define REQUEST_SIZE 1024

/**
	This Max external implements part of the Minuit Protocol, 
	more specifically it implements a syntax for messages used 
	for scrutinizing the namespace and obtaining/changing values 
	of nodes or leaves (non containing nodes) in the TTNodelib nodedirectory. */
	

// Data Structure for this object
typedef struct _minuit{
	t_object				ob;
	void					*p_info;	// the leftmost outlet
	TTNodeDirectoryPtr		p_directory;// a pointer to the Jamoma Node Directory
	t_symbol				*device;	// memorized the current device
	t_symbol				*address;	// memorized the current address
	TTNodePtr				p_node;		// a pointer to a TTnode of the directory
	bool					b_debug;	// true : display bebug message in the console
	
	// Minuit standard symbol
	t_symbol				*minuit_namespace_request;
	t_symbol				*minuit_get_request;
	t_symbol				*minuit_namespace_answer;
	t_symbol				*minuit_get_answer;
	
	t_symbol				*minuit_start_nodes;
	t_symbol				*minuit_start_leaves;
	t_symbol				*minuit_start_attributes;
	
	t_symbol				*minuit_type;
	t_symbol				*minuit_value;
	t_symbol				*minuit_access;
	t_symbol				*minuit_range;
	t_symbol				*minuit_comment;
	
	t_symbol				*minuit_getsetter;
	t_symbol				*minuit_getter;
	t_symbol				*minuit_setter;
	
} t_minuit;

// Prototypes for methods

// Public methods
void*			minuit_new(t_symbol *name, long argc, t_atom *argv);
void			minuit_free(t_minuit *x);
t_max_err		minuit_notify(t_minuit *x, t_symbol *s, t_symbol *msg, void *sender, void *data);
void			minuit_assist(t_minuit *x, void *b, long m, long a, char *s);

// methods for jcom.minuit
/** this method receive data from the Minuit network */
void			minuit_callback(void *arg, std::string message);

/** this method add a Minuit device to the Jamoma Controller : /device_name IP port */
void			minuit_add_device(t_minuit *x, t_symbol *device_name, t_symbol *ip, long port);

/** this method parses a minuit protocol message and returns the children (leaves or nodes) and the properties of the node which address is given to the outlet */
void			minuit_namespace(t_minuit *x, t_symbol *address);
void			minuit_donamespace(t_minuit *x, t_symbol *address);

/** this method parses a minuit protocol message and returns the value(s) of an attribute of a certain node*/
void			minuit_get(t_minuit *x, t_symbol *attraddress);
void			minuit_doget(t_minuit *x, t_symbol *attraddress);

/** this method parses a minuit protocol message and sets the value(s) of an attribute of a certain node */
void			minuit_anything(t_minuit *x, t_symbol *msg, long argc, t_atom *argv);
void			minuit_set(t_minuit *x, t_symbol *msg, long argc, t_atom *argv);
void			minuit_doset(t_minuit *x, t_symbol *msg, long argc, t_atom *argv);

/** this method allows the user to set the jcom.minuit in Debug mode */
void			minuit_debug(t_minuit *x, long n);
void			minuit_dump(t_minuit *x);

// Private methods
void			minuit_goto(t_minuit *x, t_symbol *address);
t_symbol*		minuit_convert_attribut_jamoma2minuit(t_minuit *x, t_symbol *attribute);
t_symbol*		minuit_convert_attribut_minuit2jamoma(t_minuit *x, t_symbol *attribute);
