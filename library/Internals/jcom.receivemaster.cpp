/* 
 * jcom.receivemaster
 * Manage jcom.receive instances
 * By Tim Place, Copyright � 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"


// Prototypes
void *receivemaster_new(t_symbol *msg, long argc, t_atom *argv);
void receivemaster_free(t_jcom_receivemaster *x);
void receivemaster_dispatch(t_jcom_receivemaster *x, t_symbol *name, t_symbol *msg, long argc, t_atom *argv);
void receivemaster_add(t_jcom_receivemaster *x, t_symbol *name, t_object *obj);
void receivemaster_remove(t_jcom_receivemaster *x, t_symbol *name, t_object *obj);


// Globals
static t_class		*s_receivemaster_class = NULL;	///< Required: Global pointer the jcom.receivemaster class
static t_hashtab	*s_receive_lists = NULL;		///< hash full of linked lists, keyed on the name of the jcom.receive instances


/************************************************************************************/

void receivemaster_initclass()
{
	// Define our class
	s_receivemaster_class = class_new(	"jcom.receivemaster", 
										(method)receivemaster_new, 
										(method)receivemaster_free, 
										sizeof(t_jcom_receivemaster), 
										(method)0L, 
										A_GIMME, 
										0);

	// Make methods accessible for our class: 
	class_addmethod(s_receivemaster_class, (method)receivemaster_dispatch,	"dispatch",	A_CANT, 0L);
	class_addmethod(s_receivemaster_class, (method)receivemaster_add,		"add",		A_CANT, 0L);
	class_addmethod(s_receivemaster_class, (method)receivemaster_remove,	"remove",	A_CANT, 0L);

	// Finalize our class
	class_register(CLASS_NOBOX, s_receivemaster_class);
}

/************************************************************************************/
// Object Life

void *receivemaster_new(t_symbol *msg, long argc, t_atom *argv)
{
	t_jcom_receivemaster *x = (t_jcom_receivemaster *)object_alloc(s_receivemaster_class);

	if(!s_receive_lists)
		s_receive_lists = hashtab_new(0);
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
	t_linklist	*list = NULL;										// linklist of receives with this name

	hashtab_lookup(s_receive_lists, name, (t_object **)&list);		// 1. Look up the correct linklist in the hashtab
	if(list)
		linklist_methodall(list, jps_dispatch, msg, argc, argv);		// 2. Call method on every object in the linklist
}

void receivemaster_add(t_jcom_receivemaster *x, t_symbol *name, t_object *obj)
{
	t_linklist	*list = NULL;

	hashtab_lookup(s_receive_lists, name, (t_object **)&list);		// 1. Look up the correct linklist in the hashtab
	if(!list){
		list = (t_linklist *)linklist_new();						// if there isn't a linklist for this name yet,
		hashtab_store(s_receive_lists, name, (t_object *)list);		//	then we make one and store it in the hashtab
	}
	linklist_append(list, obj);										// 2. We add the object to the appropriate linklist
}


// TODO: When we switch to Max5 then remove these function definitions
#if 1
/*
long linklist_match(void *a, void *b)
{
	return a == b;
}

void linklist_chuckobject(t_linklist *x, void *o)
{
	void *obj;
	
	long index = linklist_findfirst(x, &obj, linklist_match, o);
	if(index != -1)
		linklist_chuckindex(x, index);
}
 */
#endif


void receivemaster_remove(t_jcom_receivemaster *x, t_symbol *name, t_object *obj)
{
	t_linklist	*list = NULL;

	hashtab_lookup(s_receive_lists, name, (t_object **)&list);		// 1. Look up the correct linklist in the hashtab
	linklist_chuckobject(list, obj);
	if(!linklist_getsize(list))
		hashtab_chuckkey(s_receive_lists, name);					// 2. Chuck the key if there are no more objects with this name
}
