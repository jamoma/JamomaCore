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
static t_class		*s_paramarray_class = NULL;

#pragma mark -
#pragma mark life cycle

int JAMOMA_EXPORT_MAXOBJ main(void)
{
	t_class *c;

	jamoma_init();
	common_symbols_init();

	c = class_new("jcom.parameterCollection",
				  (method)paramarray_new,
				  (method)paramarray_free,
				  sizeof(t_paramarray),
				  (method)NULL,
				  A_GIMME,
				  0L);

	class_addmethod(c, (method)paramarray_subscribe,			"subscribe",		A_CANT, 0);
//	class_addmethod(c, (method)paramarray_notify,				"notify",			A_CANT, 0);
	class_addmethod(c, (method)paramarray_anything,				"anything",			A_GIMME, 0);
	class_addmethod(c, (method)paramarray_create_parameter,		"create",			A_GIMME, 0);
	class_addmethod(c, (method)paramarray_destroy,				"destroy",			A_SYM, 0);
	
	class_register(CLASS_BOX, c);
	s_paramarray_class = c;
	return 0;
}


t_paramarray* paramarray_new(t_symbol *s, long argc, t_atom *argv)
{
	t_paramarray	*x = NULL;


	

	if(x = (t_paramarray*)object_alloc(s_paramarray_class)){
		
		object_obex_lookup(x, gensym("#P"), &(x->patcher));
		x->outlet = outlet_new(x, 0L);
		x->hash_internals = hashtab_new(0);
		
		paramarray_create_parameter(x, NULL, argc, argv);
	}
	return x;
}


void paramarray_free(t_paramarray *x)
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


#pragma mark -
#pragma mark methods


void paramarray_bang(t_paramarray *x)
{
	;
}

void paramarray_anything(t_paramarray *x, t_symbol *msg, long argc, t_atom* argv)
{
	InternalObject		*anObject;
	t_max_err			err;
	
	err = hashtab_lookup(x->hash_internals, msg, (t_object**)&anObject);
	if(!err)
		object_method_typed(anObject->theObject, jps_dispatched, argc, argv, NULL);

}

void paramarray_create_parameter(t_paramarray* x, t_symbol *msg, long argc, t_atom* argv)
{
	InternalObject		*anObject;
	
	if(argc && argv){
		if(atom_gettype(&argv[0]) == A_SYM){
			
			// here we have to parse "name.[N]" to create N instances of parameter "name"
			// here we have to parse "name.{shi foo me}" to create the parameters "name.shi", "name.foo", "name.me"
			
			anObject = new InternalObject(x->patcher, gensym("jcom.parameter"), atom_getsym(&argv[0]), argc-1, argv+1);
			anObject->setAction((method)paramarray_callback, (t_object*)x);
			hashtab_store(x->hash_internals, atom_getsym(&argv[0]), (t_object*)anObject);
		}
	}
}

void paramarray_create_message(t_paramarray* x, t_symbol *msg, long argc, t_atom* argv)
{
	// ???
}
void paramarray_create_return(t_paramarray* x, t_symbol *msg, long argc, t_atom* argv)
{
	// ???
}


void paramarray_destroy(t_paramarray* x, t_symbol *msg)
{
	InternalObject		*anObject;
	t_max_err			err;
	
	err = hashtab_lookup(x->hash_internals, msg, (t_object**)&anObject);
	if(!err)
		delete anObject;
}


void paramarray_callback(t_paramarray *x, t_symbol *msg, long argc, t_atom* argv)
{
	// A parameter sends his name using the symbol msg so we can retrieve it into the hashtab
	// and know which parameter is using the callback
	
	// output the data
	outlet_anything(x->outlet, msg, argc, argv);
}

/*
 t_max_err paramarray_notify(t_paramarray *x, t_symbol *s, t_symbol *msg, void *sender, void *data)
 {
 t_symbol	*attrname;
 
 if((msg == _sym_attr_modified) && (sender == x)){
 attrname = (t_symbol *)object_method((t_object *)data, gensym("getname"));
 
 }
 }
 */
 
 void paramarray_subscribe(t_paramarray *x)
 {
	 SymbolPtr*			keys = NULL;
	 long				numkeys = 0;
	 InternalObject*	anObject = NULL;
	 
	 hashtab_getkeys(x->hash_internals, &numkeys, &keys);
	 if(numkeys && keys){
		 for(int i=0; i<numkeys; i++){
			 hashtab_lookup(x->hash_internals, keys[i], (t_object**)&anObject);
			 object_method(anObject->theObject, jps_subscribe);
		 }
		 sysmem_freeptr(keys);
	 }
 }