/* 
 * jcom.parameterCollection
 * External for Jamoma: a wrapper for jcom.parameter
 * By Théo de la Hogue, Copyright © 2009
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ext.h"
#include "ext_obex.h"
#include "ext_user.h"
#include "ext_common.h"
#include "Jamoma.h"
#include "ext_symobject.h"

// members
typedef struct _paramarray{
	t_object			ob;
	t_object			*patcher;				///< the patcher
	void				*outlet;				///< outlet
	t_hashtab			*hash_internals;		///< hash table of internal jcom.parameter and jcom.message instances
} t_paramarray;

// prototypes: general
t_paramarray*	paramarray_new(t_symbol *s, long argc, t_atom *argv);
void			paramarray_free(t_paramarray *x);

//t_max_err		paramarray_notify(t_paramarray *x, t_symbol *s, t_symbol *msg, void *sender, void *data);
void			paramarray_subscribe(t_paramarray *x);

void			paramarray_bang(t_paramarray *x);
void			paramarray_anything(t_paramarray *x, t_symbol *msg, long argc, t_atom* argv);

// prototypes: internal parameters
void			paramarray_create_parameter(t_paramarray *x, t_symbol *msg, long argc, t_atom* argv);
void			paramarray_callback(t_paramarray *x, t_symbol *msg, long argc, t_atom* argv);
void			paramarray_destroy(t_paramarray *x, t_symbol *msg);

class InternalObject {
public:
	t_object	*theObject;
	
	InternalObject(ObjectPtr patcher, t_symbol *classname, t_symbol *subscribername, long argc, t_atom *argv)
	{
		t_atom	*a = (t_atom *)malloc(sizeof(t_atom)*(argc+2));
		int		i;
		
		// Add the patcher and the subscriber name as argument
		atom_setsym(a, subscribername);
		atom_setobj(a+1, patcher);
		for(i=2 ; i < argc+2; i++){
			a[i] = argv[i-2];
		}
		theObject = NULL;
		jcom_core_loadextern(classname, i, a, &theObject);
	}
	
	~InternalObject()
	{
		if(theObject)
			object_free(theObject);
	}
	
	void setAction(method aCallback, t_object *aCallbackArg)
	{
		if(theObject)
			object_method(theObject, gensym("setcallback"), aCallback, aCallbackArg);
	}
	
	void setName(char* newName)
	{
		if(theObject)
			object_attr_setsym(theObject, _sym_name, gensym(newName));
	}
	
	void setReadonly(bool value)
	{
		if(theObject)
			object_attr_setlong(theObject, _sym_readonly, value);
	}

	void setValue(AtomCount ac, AtomPtr av)
	{
		if(theObject)
			object_attr_setvalueof(theObject, _sym_value, ac, av);
	}
};

