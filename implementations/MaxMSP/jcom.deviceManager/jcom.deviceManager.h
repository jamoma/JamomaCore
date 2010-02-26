/* 
 * jcom.deviceManager
 * External for Jamoma : to manage network devices
 *
 * By Theo de la Hogue, Copyright 2010
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html
 */

#include "Jamoma.h"


// Data Structure for this object
typedef struct _dvmg{
	
	t_object				ob;
	void					*p_info;	// the leftmost outlet
	t_symbol				*name;		// the application name (default : Jamoma)
	t_symbol				*device;	// the current device name
	bool					b_debug;	// true : display bebug message in the console
	
} t_dvmg;

// Prototypes for methods

// Public methods
void*			dvmg_new(t_symbol *name, long argc, t_atom *argv);
void			dvmg_free(t_dvmg *x);
t_max_err		dvmg_notify(t_dvmg *x, t_symbol *s, t_symbol *msg, void *sender, void *data);
void			dvmg_assist(t_dvmg *x, void *b, long m, long a, char *s);

// methods for jcom.controller

/** to load the plugins from a folder that the user can choose */
void			dvmg_load_plugins(t_dvmg *x, t_symbol *path);

/** scan the network in order to add devices automatically */
void			dvmg_add_scan(t_dvmg *x);

/** to add a Minuit device to the Jamoma Controller : /device_name IP port */
void			dvmg_add_minuit_device(t_dvmg *x, t_symbol *device_name, t_symbol *ip, long port);

/** to discover a remote device on the network */
void			dvmg_discover(t_dvmg *x, t_symbol *device, t_symbol *address);

/** to get a value from a remote device on the network */
void			dvmg_get(t_dvmg *x,  t_symbol *device, t_symbol *address);

/** to set a value into a remote device on the network */
void			dvmg_set(t_dvmg *x, t_symbol *msg, long argc, t_atom *argv);

/** to listen an attribute of a remote device on the network */
void			dvmg_listen(t_dvmg *x,  t_symbol *device, t_symbol *address, t_symbol *attribute, long enable);

/** to get a snapshot from a remote device on the network at an address */
void			dvmg_add_snapshot(t_dvmg *x,  t_symbol *device, t_symbol *address);

/** to set the jcom.controller in Debug mode */
void			dvmg_debug(t_dvmg *x, long n);
void			dvmg_dump(t_dvmg *x);
