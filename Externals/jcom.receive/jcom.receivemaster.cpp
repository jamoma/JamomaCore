/* 
 * jcom.receivemaster
 * Manage jcom.receive instances
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ext.h"				// Max Header
#include "ext_obex.h"			// Max Object Extensions (attributes) Header
#include "commonsyms.h"			// Common symbols used by the Max 4.5 API
#include "jcom.core.h"
#include "jcom.sendreceive.h"


// Prototypes
void *receivemaster_new(t_symbol *msg, long argc, t_atom *argv);
void receivemaster_free(t_jcom_receivemaster *x);
void receivemaster_dispatch(t_jcom_receivemaster *x, t_symbol *name, t_symbol *msg, long argc, t_atom *argv);
void receivemaster_add(t_jcom_receivemaster *x, t_symbol *name, t_object *obj);
void receivemaster_remove(t_jcom_receivemaster *x, t_symbol *name, t_object *obj);


// Globals
t_class		*s_receivemaster_class;		// Required: Global pointer the jcom.receivemaster class


/************************************************************************************/

void receivemaster_initclass()
{
	// Define our class
	s_receivemaster_class = class_new(	"jcom.receivemaster", 
										(method)jcom_receivemaster_new, 
										(method)jcom_receivemaster_free, 
										(short)sizeof(t_jcom_receivemaster), 
										(method)0L, 
										A_GIMME, 
										0);
	class_obexoffset_set(s_receivemaster_class, calcoffset(t_jcom_receivemaster, obex));

	// Make methods accessible for our class: 
	class_addmethod(c, (method)receivemaster_dispatch,	"dispatch",	A_CANT, 0L);
	class_addmethod(c, (method)receivemaster_add,		"add",		A_CANT, 0L);
	class_addmethod(c, (method)receivemaster_remove,	"remove",	A_CANT, 0L);

	// Finalize our class
	class_register(CLASS_NOBOX, s_receivemaster_class);
}

/************************************************************************************/
// Object Life

void *receivemaster_new(t_symbol *msg, long argc, t_atom *argv)
{
	t_jcom_receivemaster *x = (t_jcom_receivemaster *)object_alloc(s_receivemaster_class);

	if(x){
		x->receive_lists = hashtab_new(0);
	}
	return x;
}

void receivemaster_free(t_jcom_receivemaster *x)
{
	;	// we could delete the hashtab, but this class is never deleted so it doesn't really make a difference
		// does it?
}


/************************************************************************************/
// Methods

void receivemaster_dispatch(t_jcom_receivemaster *x, t_symbol *name, t_symbol *msg, long argc, t_atom *argv)
{
	// 1. Look up the correct linklist in the hashtab
	// 2. Iterate over the linklist sending the message to all of them
	;
}

void receivemaster_add(t_jcom_receivemaster *x, t_symbol *name, t_object *obj)
{
	// 1. Look for the name in the hashtab
	// 2. If it exists, add this to the fetched linklist
	// 3. If it does not exist, create a new linklist, store it in the hastab, and add this obj to it
	;
}


void receivemaster_remove(t_jcom_receivemaster *x, t_symbol *name, t_object *obj)
{
	// 1. Look for the name in the hashtab
	// 2. Remove this obj from the fetched linklist
	// 3. If the linklist size is zero, then free the linklist and chuck the key from the hashtab
	;
}
