/* 
 * jcom.parameterArray
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
	t_object			*hub;					///< the hub
	void				*ui_outlet;				///< outlet reserved for ui updating
	void				*val_outlet;			///< outlet to output the value
	void				*info_outlet;			///< outlet to output the instance and info about the object
	t_hashtab			*hash_internals;		///< hash table of internal jcom.parameter and jcom.message instances
	t_symbol			*attr_name;				///< the name of each parameter of the array
	long				attr_size;				///< the size of the hash table
	t_symbol			*attr_selection;		///< selected parameter(s) to send data
	long				attr_argc;				///< attribute lenght (used to create more parameters with the same attributes)
	t_atom				*attr_argv;				///< attribute atoms (used to create more parameters with the same attributes)
	long				last_instance;			///< to memorize the last modified instance and don't output the number if it doesn't change
	t_symbol			*jps_wildcard;			///< the * symbol
} t_paramarray;

// prototypes: general
t_paramarray*	paramarray_new(t_symbol *s, long argc, t_atom *argv);
void			paramarray_free(t_paramarray *x);
void			paramarray_subscribe(t_paramarray *x);

void			paramarray_bang(t_paramarray *x);
void			paramarray_int(t_paramarray *x, long n);
void			paramarray_flt(t_paramarray *x, double d);
void			paramarray_anything(t_paramarray *x, t_symbol *msg, long argc, t_atom* argv);
void			paramarray_add(t_paramarray* x, long i_add);
void			paramarray_remove(t_paramarray* x, long i_rm);
void			paramarray_size(t_paramarray* x, long new_size);
void			paramarray_set(t_paramarray* x, long n);

void			paramarray_in1(t_paramarray *x, long n);

// prototypes: internal parameters
void			paramarray_create_array(t_paramarray* x, t_symbol *name, long size, long argc, t_atom* argv);
void			paramarray_destroy_parameter(t_paramarray *x, t_symbol *msg);
void			paramarray_callback(t_paramarray *x, t_symbol *msg, long argc, t_atom* argv);
long			paramarray_count_subscription(t_paramarray *x);

// prototypes: parsing (TODO : include this into the NodeLib)
void			paramarray_splitNameInstance(t_symbol *name_instance, t_symbol **returnedName, t_symbol **returnedInstance);
long			paramarray_parse_bracket(t_symbol *s);


class InternalObject {
public:
	t_object *theObject;
	bool subscribe;
	long index;
	
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
		subscribe = true;
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

