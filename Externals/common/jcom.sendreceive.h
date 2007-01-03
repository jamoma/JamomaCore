/* 
 * jcom.sendreceive.h
 * shared code for jcom.send and jcom.receive objects
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __JCOM_SENDRECEIVE_H__
#define __JCOM_SENDRECEIVE_H__

typedef void (*t_receive_callback)(t_symbol *name, t_symbol *msg, short argc, t_atom *argv);

// Receive Object
typedef struct _receive{
	t_object					ob;							// REQUIRED: Our object
	void						*obex;						// REQUIRED: Object Extensions used by Jitter/Attribute stuff
	void						*outlet;					// Need one for each outlet
	t_symbol					*attr_name;					// ATTRIBUTE: name
	t_receive_callback			receive_master_callback;	// These all point to the same shared function
	t_receive_obex_callback		receive_obex_callback;
	void						*receive_obex_callback_arg;
} t_receive;

// Set up a linked list for maintaining pointers to each instance of the jcom.receive external
typedef struct _receiver{
	t_receive		*object;
	_receiver		*next;
} t_receiver;

// Send Object
typedef struct _send{
	t_object		ob;					// REQUIRED: Our object
	void			*obex;				// REQUIRED: Object Extensions used by Jitter/Attribute stuff
	t_symbol		*attr_name;			// ATTRIBUTE: name
} t_send;

#endif // #ifndef __JCOM_SENDRECEIVE_H__
