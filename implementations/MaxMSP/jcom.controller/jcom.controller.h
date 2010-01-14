/* 
 * jcom.controller
 * External for Jamoma: to manage network plugins
 *
 * By Theo de la Hogue, Copyright 2010
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html
 */

#include "Jamoma.h"


// Data Structure for this object
typedef struct _ctrl{
	
	t_object				ob;
	void					*p_info;	// the leftmost outlet
	t_symbol				*device;	// the current device name
	bool					b_debug;	// true : display bebug message in the console
	
} t_ctrl;

// Prototypes for methods

// Public methods
void*			ctrl_new(t_symbol *name, long argc, t_atom *argv);
void			ctrl_free(t_ctrl *x);
t_max_err		ctrl_notify(t_ctrl *x, t_symbol *s, t_symbol *msg, void *sender, void *data);
void			ctrl_assist(t_ctrl *x, void *b, long m, long a, char *s);

// methods for jcom.controller

/** to add a Minuit device to the Jamoma Controller : /device_name IP port */
void			ctrl_add_minuit_device(t_ctrl *x, t_symbol *device_name, t_symbol *ip, long port);

/** to discover a remote device on the network */
void			ctrl_discover(t_ctrl *x, t_symbol *device, t_symbol *address);

/** to get a value from a remote device on the network */
void			ctrl_get(t_ctrl *x,  t_symbol *device, t_symbol *address, t_symbol *attribute);

/** to set a value into a remote device on the network */
void			ctrl_set(t_ctrl *x, t_symbol *msg, long argc, t_atom *argv);

/** to listen an attribute of a remote device on the network */
void			ctrl_listen(t_ctrl *x,  t_symbol *device, t_symbol *address, t_symbol *attribute, long enable);

/** to set the jcom.controller in Debug mode */
void			ctrl_debug(t_ctrl *x, long n);
void			ctrl_dump(t_ctrl *x);
