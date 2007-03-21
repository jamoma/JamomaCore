/* 
 * jcom.hub
 * External for Jamoma: dispatch messages to jcom.param objects (a potential replacement for jcom.hub)
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __jcom_HUB_H__
#define __jcom_HUB_H__

#include "ext.h"					// Max Header
#include "ext_obex.h"				// Max Object Extensions (attributes) Header
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API
#include "jcom.core.h"

#define MAX_STRING_LEN 2048
#define LISTSIZE 512

enum outlets{
	k_outlet_return = 0,
	k_outlet_dumpout,
	k_num_outlets
};


typedef struct _subscriber{
	void			*object;		// the max object instance that represents this subscriber
	t_symbol		*name;			// name of the parameter/message/return/remote
	t_symbol		*type;			// examples: subscribe_parameter, subscribe_message, subscribe_in, subscribe_out, subscribe_remote, subscribe_return
	_subscriber		*next;			// next subscriber in the linked list
} t_subscriber;



typedef struct _preset_item{
	t_symbol		*param_name;
	t_symbol		*type;
	long			priority;
	t_atom			value_list[LISTSIZE];
	long			list_size;
	_preset_item	*next;
} t_preset_item;


typedef struct _preset{
	long			number;
	t_symbol		*name;
	t_preset_item	*item;			// a preset may have N items (stored as a linked list)
	_preset			*next;
} t_preset;


typedef struct _hub{							// Data Structure for this object
	t_object		ob;							// REQUIRED: Our object
	void			*obex;						// REQUIRED: Object Extensions used by Jitter/Attribute stuff
	void			*outlets[k_num_outlets];	// outlet array
	t_patcher		*container;					// the owning patcher
	t_subscriber	*subscriber;				// top of the linked list of parameters
	t_preset		*preset;					// top of the linked list of presets
	long			num_parameters;				// count used for working with presets
	void			*init_qelem;				// qelem used for initialization messages
	void			*in_object;					// cache the jcom.in object directly for quick access
	void			*out_object;				// cache the jcom.out object directly for quick access
	void			*meter_object[16];			// cache any meter objects so they can be handed to jcom.out
	void			*preview_object;			// cache the remote for sending jitter matrix preview frames
	void			*gui_object;				// cache the jcom.remote object in the gui for quick access
	t_symbol		*attr_name;					// ATTRIBUTE: module name
	t_symbol		*attr_type;					// ATTRIBUTE: what kind of module is this?  (audio, video, control, etc.)
	t_symbol		*attr_size;					// ATTRIBUTE: gui size
	t_symbol		*attr_description;			// ATTRIBUTE: textual description of this module
	t_symbol		*attr_skin;					// ATTRIBUTE: skin
	t_symbol		*attr_algorithm_type;		// ATTRIBUTE: poly, blue, jitter, etc.
	long			attr_inspector;
	t_object		*jcom_send;					// jcom.send and jcom.receive objects for remote communication
	t_object		*jcom_receive;				//	...
	t_symbol		*osc_name;					// the OSC name of this module for remote communication
} t_hub;


// Prototypes for our methods:
void*		hub_new(t_symbol *s, long argc, t_atom *argv);
void		hub_examine_context(t_hub *x);
void		hub_free(t_hub *x);
void		hub_assist(t_hub *x, void *b, long msg, long arg, char *dst);
void		hub_symbol(t_hub *x, t_symbol *msg, short argc, t_atom *argv);
t_symbol*	hub_subscribe(t_hub *x, t_symbol *name, void *param_object, t_symbol *type);
//void		hub_release(t_hub *x, t_symbol *subscriber_name);
void		hub_unsubscribe(t_hub *x, void *subscriber_object);
void		hub_receive(t_hub *x, t_symbol *name, short argc, t_atom *argv);
void		hub_private(t_hub *x, t_symbol *name, short argc, t_atom *argv);
void 		hub_return(t_hub *x, t_symbol *name, short argc, t_atom *argv);
void		hub_return_extended(t_hub *x, t_symbol *name, short argc, t_atom *argv);
void 		hub_outlet_return(t_hub *x, t_symbol *msg, short argc, t_atom *argv);
void		hub_paramnames_get(t_hub *x);
void		hub_messagenames_get(t_hub *x);
void		hub_returnnames_get(t_hub *x);
void		hub_paramvalues_get(t_hub *x);
void		hub_allnames_get(t_hub *x);
t_symbol*	hub_modulename_get(t_hub *x);
t_symbol*	hub_algorithmtype_get(t_hub *x);
void 		hub_init(t_hub *x);
void 		hub_qfn_init(t_hub *x);
void 		hub_gui_build(t_hub *x);
void		hub_module_view_alg(t_hub *x);
void 		hub_ui_freeze(t_hub *x, long value);
void 		hub_ui_refresh(t_hub *x);
void		hub_receive_callback(void *x, t_symbol *msg, short argc, t_atom *argv);
// These are in jcom.hub.autodoc.cpp
void		hub_autodoc(t_hub *x, t_symbol *userpath);
void		hub_doautodoc(t_hub *x, t_symbol *userpath);
void 		table_heading(t_filehandle *file_handle, long *myEof);
// These are in jcom.hub.presets.cpp
void 		hub_preset_read(t_hub *x, t_symbol *userpath);
void 		hub_preset_doread(t_hub *x, t_symbol *userpath);
void 		hub_preset_parse(t_hub *x, char *path);
short		hub_preset_validate(t_hub *x, char *path);
void 		hub_preset_write(t_hub *x, t_symbol *userpath);
void 		hub_preset_dowrite(t_hub *x, t_symbol *userpath);
void 		hub_preset_recall(t_hub *x, t_symbol *msg, short argc, t_atom *argv);	// number or name
void 		hub_preset_store(t_hub *x, t_symbol *msg, short argc, t_atom *argv);	// number & optional name
void 		hub_preset_default(t_hub *x);
void 		hub_presets_clear(t_hub *x);
void 		hub_presets_dump(t_hub *x);
void		hub_preset_buildmenu(t_hub *x);


// Globals
extern 		t_class		*hub_class;				// Required: Global pointer for our class


#endif // #ifndef __jcom_HUB_H__
