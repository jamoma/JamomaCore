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
typedef struct _paramcoll{
	t_object			ob;
	t_object			*patcher;				///< the patcher
	//t_object			*hub;					///< the hub
	void				*ui_outlet;				///< outlet reserved for ui updating
	void				*val_outlet;			///< outlet to output the value
	void				*info_outlet;			///< outlet to output the parameter and info about the object
	t_hashtab			*hash_internals;		///< hash table of internal jcom.parameter and jcom.message instances
	t_symbol			*attr_selection;		///< selected parameter(s) to send data
	long				attr_argc;				///< attribute lenght (used to create more parameters with the same attributes)
	t_atom				*attr_argv;				///< attribute atoms (used to create more parameters with the same attributes)
	t_symbol			*last_param;			///< to memorize the last modified parameter and don't output the name if it doesn't change
	t_symbol			*jps_wildcard;			///< the * symbol
} t_paramcoll;

// prototypes: general
t_paramcoll*	paramcoll_new(t_symbol *s, long argc, t_atom *argv);
void			paramcoll_free(t_paramcoll *x);
void			paramcoll_subscribe(t_paramcoll *x);

void			paramcoll_bang(t_paramcoll *x);
void			paramcoll_int(t_paramcoll *x, long n);
void			paramcoll_flt(t_paramcoll *x, double d);
void			paramcoll_list(t_paramcoll *x, t_symbol *msg, long argc, t_atom* argv);
void			paramcoll_anything(t_paramcoll *x, t_symbol *msg, long argc, t_atom* argv);
void			paramcoll_add(t_paramcoll* x, t_symbol *msg, long argc, t_atom *argv);
void			paramcoll_remove(t_paramcoll* x, t_symbol *msg);
void			paramcoll_clear(t_paramcoll *x);
void			paramcoll_set(t_paramcoll* x, t_symbol *msg);

// prototypes: internal parameters
void			paramcoll_destroy_coll(t_paramcoll *x);
void			paramcoll_callback(t_paramcoll *x, t_symbol *msg, long argc, t_atom* argv);
void			paramcoll_output_list(t_paramcoll *x);

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

