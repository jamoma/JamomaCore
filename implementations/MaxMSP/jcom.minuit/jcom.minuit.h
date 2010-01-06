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

/**
	This Max external implements part of the Minuit Protocol, 
	more specifically it implements a syntax for messages used 
	for scrutinizing the namespace and obtaining/changing values 
	of nodes or leaves (non containing nodes) in the TTNodelib nodedirectory. */
	

// Data Structure for this object
typedef struct _minuit{
	
	t_object				ob;
	void					*p_info;	// the leftmost outlet
	t_symbol				*device;	// the current device name
	bool					b_debug;	// true : display bebug message in the console
	
} t_minuit;

// Prototypes for methods

// Public methods
void*			minuit_new(t_symbol *name, long argc, t_atom *argv);
void			minuit_free(t_minuit *x);
t_max_err		minuit_notify(t_minuit *x, t_symbol *s, t_symbol *msg, void *sender, void *data);
void			minuit_assist(t_minuit *x, void *b, long m, long a, char *s);

// methods for jcom.minuit

/** this method add a Minuit device to the Jamoma Controller : /device_name IP port */
void			minuit_add_device(t_minuit *x, t_symbol *device_name, t_symbol *ip, long port);

/** this method sends a Minuit namespace request */
void			minuit_namespace(t_minuit *x, t_symbol *address);

/** this method sends a Minuit get request */
void			minuit_get(t_minuit *x, t_symbol *address);

/** this method sends a Minuit set request */
void			minuit_set(t_minuit *x, t_symbol *msg, long argc, t_atom *argv);
void			minuit_anything(t_minuit *x, t_symbol *msg, long argc, t_atom *argv);

/** this method allows users to set the jcom.minuit in Debug mode */
void			minuit_debug(t_minuit *x, long n);
void			minuit_dump(t_minuit *x);
