/* 
 * jcom.paramCollection
 * External for Jamoma: a wrapper for jcom.parameter
 * By Théo de la Hogue, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "jcom.parameterCollection.h"

// class variables
static t_class		*s_paramcoll_class = NULL;

#pragma mark -
#pragma mark life cycle

int JAMOMA_EXPORT_MAXOBJ main(void)
{
	t_class *c;

	jamoma_init();
	common_symbols_init();

	c = class_new("jcom.parameterCollection",
				  (method)paramcoll_new,
				  (method)paramcoll_free,
				  sizeof(t_paramcoll),
				  (method)NULL,
				  A_GIMME,
				  0L);

	class_addmethod(c, (method)paramcoll_subscribe,				"subscribe",		A_CANT, 0);
	
	class_addmethod(c, (method)paramcoll_bang,					"bang",				0);
	class_addmethod(c, (method)paramcoll_int,					"int",				A_DEFLONG, 0);
	class_addmethod(c, (method)paramcoll_flt,					"float",			A_DEFFLOAT, 0);
	class_addmethod(c, (method)paramcoll_list,					"list",				A_GIMME, 0);
	class_addmethod(c, (method)paramcoll_anything,				"anything",			A_GIMME, 0);
	class_addmethod(c, (method)paramcoll_add,					"add",				A_GIMME, 0);
	class_addmethod(c, (method)paramcoll_remove,				"remove",			A_SYM, 0);
	class_addmethod(c, (method)paramcoll_set,					"set",				A_SYM, 0);
	
	class_register(CLASS_BOX, c);
	s_paramcoll_class = c;
	return 0;
}

t_paramcoll* paramcoll_new(t_symbol *s, long argc, t_atom *argv)
{
	t_paramcoll	*x = NULL;
	int				i;
	
	if(x = (t_paramcoll*)object_alloc(s_paramcoll_class)){
		
		object_obex_lookup(x, gensym("#P"), &(x->patcher));
		
		//x->hub = NULL;
		
		x->info_outlet = outlet_new(x, 0L);
		x->val_outlet = outlet_new(x, 0L);
		x->ui_outlet = outlet_new(x, 0L);
		
		x->hash_internals = hashtab_new(0);
		
		if(atom_gettype(&argv[0]) == A_SYM){
			
			x->attr_selection = _sym_nothing;
			x->last_param = _sym_nothing;
		
			// copy the attributes
			x->attr_argc = argc;
			x->attr_argv = (t_atom *)malloc((long)sizeof(t_atom)*x->attr_argc);
			for(i = 0; i < x->attr_argc; i++)
				jcom_core_atom_copy(&x->attr_argv[i],&argv[i]);

			x->jps_wildcard = gensym("*");

			paramcoll_output_list(x);
		}
	}
	return x;
}
void paramcoll_free(t_paramcoll *x)
{	
	paramcoll_destroy_coll(x);
}

// This method is called by the hub
// to examine the context to find parameters.
void paramcoll_subscribe(t_paramcoll *x)
{
	SymbolPtr*			keys = NULL;
	long				numkeys = 0;
	InternalObject*		anObject = NULL;
	//t_object			*box;
	//t_symbol			*objclass = NULL;
	
	// Subcribe all parameters
	hashtab_getkeys(x->hash_internals, &numkeys, &keys);
	if(numkeys && keys){
		for(int i=0; i<numkeys; i++){
			hashtab_lookup(x->hash_internals, keys[i], (t_object**)&anObject);
			if(anObject->theObject){
				object_method(anObject->theObject, jps_subscribe);
			}
		}
		sysmem_freeptr(keys);
	}
	
	// now the hub exists : we looking for it into the patcher
	
	// this is usefull in case we want unsbuscribe parameter
	// instead of destroy them when we resize the array to a
	// a smmaller size than before.
	/*	
	 again:	 
	 box = object_attr_getobj(x->patcher, _sym_firstobject);
	 while(box){
	 objclass = object_attr_getsym(box, _sym_maxclass);
	 if(objclass == jps_jcom_hub){
	 x->hub = object_attr_getobj(box, _sym_object);
	 return;
	 }
	 box = object_attr_getobj(box, _sym_nextobject);
	 }
	 x->patcher = object_attr_getobj(x->patcher, _sym_parentpatcher);
	 if(x->patcher)
	 goto again;
	 */
}

#pragma mark -
#pragma mark methods
	
void paramcoll_bang(t_paramcoll *x)
{
	InternalObject		*anObject;
	t_max_err			err;
	
	if(x->attr_selection == x->jps_wildcard){
		
	}
	else{
		err = hashtab_lookup(x->hash_internals, x->attr_selection, (t_object**)&anObject);
		if(!err)
			object_method(anObject->theObject, _sym_bang);
	}
}

void paramcoll_int(t_paramcoll *x, long n)
{
	InternalObject		*anObject;
	t_max_err			err;
	t_atom				a[1];
	
	if(x->attr_selection == x->jps_wildcard){
		
	}
	else{
		err = hashtab_lookup(x->hash_internals, x->attr_selection, (t_object**)&anObject);
		if(!err){
			atom_setlong(a,n);
			object_method_typed(anObject->theObject, _sym_int, 1, a, NULL);
		}
	}
}

void paramcoll_flt(t_paramcoll *x, double d)
{
	InternalObject		*anObject;
	t_max_err			err;
	t_atom				a[1];
	
	if(x->attr_selection == x->jps_wildcard){
		
	}
	else{
		err = hashtab_lookup(x->hash_internals, x->attr_selection, (t_object**)&anObject);
		if(!err){
			atom_setfloat(a,d);
			object_method_typed(anObject->theObject, _sym_float, 1, a, NULL);
		}
	}
}

void paramcoll_list(t_paramcoll *x, t_symbol *msg, long argc, t_atom* argv)
{
	InternalObject		*anObject;
	t_max_err			err;
	
	if(x->attr_selection == gensym("*")){
		;
	}
	else{
		err = hashtab_lookup(x->hash_internals, x->attr_selection, (t_object**)&anObject);
		if(!err)
			object_method_typed(anObject->theObject, jps_dispatched, argc, argv, NULL);
	}
}

void paramcoll_anything(t_paramcoll *x, t_symbol *msg, long argc, t_atom* argv)
{
	InternalObject		*anObject;
	t_max_err			err;
	
	if(argc && argv){
		if(x->attr_selection == x->jps_wildcard){
			
		}
		else{
			err = hashtab_lookup(x->hash_internals, msg, (t_object**)&anObject);
			if(!err){
				x->attr_selection = msg;
				object_method_typed(anObject->theObject, jps_dispatched, argc, argv, NULL);
			}
		}
	}
	else{
		// edit selection
		x->attr_selection = msg;
		
		// bang selection
		defer((t_object*)x,(method)paramcoll_bang,_sym_bang,NULL,NULL);
	}
}

void paramcoll_add(t_paramcoll* x, t_symbol *msg, long argc, t_atom* argv)
{
	InternalObject	*anObject;
	t_symbol		*s_param;
	t_max_err		err;
	
	if(argc && argv){
		if(atom_gettype(&argv[0]) == A_SYM){
			
			s_param =  atom_getsym(&argv[0]);
			err = hashtab_lookup(x->hash_internals, s_param, (t_object**)&anObject);
			
			// if the parameter doesn't exist
			if(err){
				if(argc-1 && argv)
					// use the new attributes
					anObject = new InternalObject(x->patcher, gensym("jcom.parameter"), s_param, argc-1, argv+1);
				else
					// use the native attributes
					anObject = new InternalObject(x->patcher, gensym("jcom.parameter"), s_param, x->attr_argc, x->attr_argv);
				
				anObject->setAction((method)paramcoll_callback, (t_object*)x);
				hashtab_store(x->hash_internals, atom_getsym(&argv[0]), (t_object*)anObject); 
			}
			else
				object_error((t_object*)x, "This parameter already exists");

		}
	}
	
	paramcoll_output_list(x);
}

void paramcoll_remove(t_paramcoll* x, t_symbol *msg)
{
	InternalObject		*anObject;
	t_max_err			err;
	
	err = hashtab_lookup(x->hash_internals, msg, (t_object**)&anObject);
	if(!err){
		delete anObject;
		hashtab_delete(x->hash_internals,  msg);
	}
	
	paramcoll_output_list(x);
}

void paramcoll_set(t_paramcoll* x, t_symbol *msg)
{	
	// edit selection
	x->attr_selection = msg;
}

void paramcoll_destroy_coll(t_paramcoll* x)
{
	long				i;
	long				numKeys = 0;
	t_symbol			**keys = NULL;
	InternalObject		*anObject;
	t_max_err			err;
	
	hashtab_getkeys(x->hash_internals, &numKeys, &keys);
	for(i=0; i<numKeys; i++){
		err = hashtab_lookup(x->hash_internals, keys[i], (t_object**)&anObject);
		if(!err)
			delete anObject;
	}
	
	if(keys)
		sysmem_freeptr(keys);
	
	hashtab_chuck(x->hash_internals);
}

void paramcoll_callback(t_paramcoll *x, t_symbol *msg, long argc, t_atom* argv)
{
	InternalObject	*anObject;
	t_max_err		err;
	
	// TODO : a way to select wich paramaters we want to output (via a 'solo' and 'mute' message)
	// currently we output only the  selected parameter.
	if(msg == x->attr_selection){
		
		// A parameter sends his name using the symbol msg so we can retrieve it into the hashtab
		// and know which parameter is using the callback
		err = hashtab_lookup(x->hash_internals, msg, (t_object**)&anObject);
		if(!err){
			
			// output the data
			outlet_anything(x->ui_outlet, _sym_set, argc, argv);
			outlet_atoms(x->val_outlet, argc, argv);
			
			// only if the instance have changed
			if(msg != x->last_param){
				outlet_anything(x->info_outlet, msg, 0, NULL);
				x->last_param = msg;
			}
		}
	}
}

void paramcoll_output_list(t_paramcoll *x)
{
	long				i;
	long				numKeys = 0;
	t_symbol			**keys = NULL;
	InternalObject		*anObject;
	t_atom				a[2];
	t_max_err			err;
	
	// clear the umenu
	atom_setsym(a,gensym("clear"));
	outlet_anything(x->info_outlet, gensym("collection"), 1, a);
	
	// append parameter's name into the umenu
	atom_setsym(a,gensym("append"));
	hashtab_getkeys(x->hash_internals, &numKeys, &keys);
	for(i=0; i<numKeys; i++){
		err = hashtab_lookup(x->hash_internals, keys[i], (t_object**)&anObject);
		if(!err){
				atom_setsym(a+1,keys[i]);
				outlet_anything(x->info_outlet, gensym("collection"), 2, a);
		}
	}
	
	if(keys)
		sysmem_freeptr(keys);
}