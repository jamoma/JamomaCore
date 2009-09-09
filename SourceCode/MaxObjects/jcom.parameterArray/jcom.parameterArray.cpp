/* 
 * jcom.parameterArray
 * External for Jamoma: a wrapper for jcom.parameter
 * By Théo de la Hogue, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "jcom.parameterArray.h"

// class variables
static t_class		*s_paramarray_class = NULL;

#pragma mark -
#pragma mark life cycle

int JAMOMA_EXPORT_MAXOBJ main(void)
{
	t_class *c;

	jamoma_init();
	common_symbols_init();

	c = class_new("jcom.parameterArray",
				  (method)paramarray_new,
				  (method)paramarray_free,
				  sizeof(t_paramarray),
				  (method)NULL,
				  A_GIMME,
				  0L);

	class_addmethod(c, (method)paramarray_subscribe,			"subscribe",		A_CANT, 0);
	
	class_addmethod(c, (method)paramarray_bang,					"bang",				0);
	class_addmethod(c, (method)paramarray_int,					"int",				A_DEFLONG, 0);
	class_addmethod(c, (method)paramarray_flt,					"float",			A_DEFFLOAT, 0);
	class_addmethod(c, (method)paramarray_anything,				"anything",			A_GIMME, 0);
	class_addmethod(c, (method)paramarray_add,					"add",				A_LONG, 0);
	class_addmethod(c, (method)paramarray_remove,				"remove",			A_LONG, 0);
	class_addmethod(c, (method)paramarray_size,					"size",				A_LONG, 0);
	class_addmethod(c, (method)paramarray_set,					"set",				A_LONG, 0);
	
	class_addmethod(c, (method)paramarray_in1,					"in1",				A_LONG, 0);
	
	class_register(CLASS_BOX, c);
	s_paramarray_class = c;
	return 0;
}

t_paramarray* paramarray_new(t_symbol *s, long argc, t_atom *argv)
{
	t_paramarray	*x = NULL;
	char			*s_num;
	int				i;

	if(x = (t_paramarray*)object_alloc(s_paramarray_class)){
		
		object_obex_lookup(x, gensym("#P"), &(x->patcher));
		
		x->hub = NULL;
		
		intin(x, 1); // creates an inlet (the right inlet) that will send your object the "in2" message
		
		x->info_outlet = outlet_new(x, 0L);
		x->val_outlet = outlet_new(x, 0L);
		x->ui_outlet = outlet_new(x, 0L);
		
		x->hash_internals = hashtab_new(0);
		
		if(atom_gettype(&argv[0]) == A_SYM){
			
			x->attr_size = 0;
			x->attr_selection = _sym_nothing;
			x->last_instance = 0;
			
			// get the instance part of the first argument
			//paramarray_splitNameInstance(atom_getsym(&argv[0]), &x->attr_name, &returnedInstance);
			
			// edit the format string to create parameter's name
			x->attr_size = paramarray_parse_bracket(atom_getsym(&argv[0]), &x->attr_format);
		
			post("Format");
			post(x->attr_format, x->attr_size);
			
			x->attr_argc = argc-1;
			x->attr_argv = (t_atom *)sysmem_newptr((long)sizeof(t_atom)*x->attr_argc);
			for(i = 0; i < x->attr_argc; i++)
				jcom_core_atom_copy(&x->attr_argv[i],&argv[i+1]);

			if(x->attr_size){
				paramarray_create_array(x, x->attr_size, x->attr_argc, x->attr_argv);
				
				// select the first parameter
				s_num = (char *)malloc(sizeof(char)*256);
				snprintf(s_num, 256, x->attr_format, 1);
				x->attr_selection = gensym(s_num);
				free(s_num);
			}
			else
				object_error((t_object*)x, "Error during the parsing of the name");
			
			x->jps_wildcard = gensym("*");
		}
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
		if(!err){
			// if it's unsubscribed, subscribe it before.
			//if(!anObject->subscribe)
				//object_method(anObject->theObject, jps_subscribe);
			
			delete anObject;
		}
	}
	
	if(keys)
		sysmem_freeptr(keys);
	
	hashtab_chuck(x->hash_internals);
}

// This method is called by the hub
// to examine the context to find parameters.
void paramarray_subscribe(t_paramarray *x)
{
	SymbolPtr*			keys = NULL;
	long				numkeys = 0;
	InternalObject*	anObject = NULL;
	
	// Subcribe all parameters
	hashtab_getkeys(x->hash_internals, &numkeys, &keys);
	if(numkeys && keys){
		for(int i=0; i<numkeys; i++){
			hashtab_lookup(x->hash_internals, keys[i], (t_object**)&anObject);
			object_method(anObject->theObject, jps_subscribe);
			anObject->subscribe = true;
		}
		sysmem_freeptr(keys);
	}
	
	// now the hub exists : we looking for it into the patcher
	t_object	*box;
	t_symbol	*objclass = NULL;
	
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
}

#pragma mark -
#pragma mark methods

void paramarray_bang(t_paramarray *x)
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

void paramarray_int(t_paramarray *x, long n)
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

void paramarray_flt(t_paramarray *x, double d)
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

void paramarray_anything(t_paramarray *x, t_symbol *msg, long argc, t_atom* argv)
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

void paramarray_add(t_paramarray* x, long i_add)
{
	long ht_size, new_size;
	
	if(i_add > 0){
		
		ht_size =  paramarray_count_subscription(x);
		new_size =  ht_size + i_add;
		
		if(new_size >= 0)
			paramarray_create_array(x, new_size, NULL, NULL);
	}
}

void paramarray_remove(t_paramarray* x, long i_rm)
{
	long ht_size, new_size;
	
	if(i_rm > 0){
		
		ht_size =  paramarray_count_subscription(x);
		new_size =  ht_size - i_rm;
		
		if(new_size >= 0)
			paramarray_create_array(x, new_size, NULL, NULL);
	}
}

void paramarray_size(t_paramarray* x, long new_size)
{	
	if(new_size >= 0)
		paramarray_create_array(x, new_size, NULL, NULL);
}

void paramarray_set(t_paramarray* x, long n)
{
	char *s_num;
	
	// edit selection
	s_num = (char *)malloc(sizeof(char)*256);
	snprintf(s_num, 256, x->attr_format, n);
	x->attr_selection = gensym(s_num);
	
	free(s_num);
}

void paramarray_in1(t_paramarray *x, long n)
{
	char *s_num;
	
	// edit selection
	s_num = (char *)malloc(sizeof(char)*256);
	snprintf(s_num, 256, x->attr_format, n);
	x->attr_selection = gensym(s_num);
	
	// bang selection
	defer((t_object*)x,(method)paramarray_bang,_sym_bang,NULL,NULL);
	
	free(s_num);
}

void paramarray_create_array(t_paramarray* x, long size, long argc, t_atom* argv)
{
	InternalObject *anObject;
	t_symbol *s_i;
	t_linklist *lk_instances;
	t_max_err err;
	char *s_num;
	int i, j, ht_size;
	t_atom a[1];
	
	// editing the list of name.1, name.2, ..., name.size
	lk_instances = linklist_new();
	for(i = 1; i <= size; i++){
		s_num = (char *)malloc(sizeof(char)*256);
		snprintf(s_num, 256, x->attr_format, i);
		linklist_append(lk_instances,gensym(s_num));
		free(s_num);
	}
	
	if(lk_instances){
		
		// memorize how many parameters subscribe currently
		ht_size = paramarray_count_subscription(x);
		
		// for each new parameter of lk_instances
		for(i = 0; i < size; i++){
			
			s_i = (t_symbol*)linklist_getindex(lk_instances,i);
			
			// check if the parameter already exists in the hash tab
			err = hashtab_lookup(x->hash_internals, s_i, (t_object**)&anObject);
			
			// if it doesn't exist, create it
			if(err){
				
				if(argc && argv)
					// use the new attributes
					anObject = new InternalObject(x->patcher, gensym("jcom.parameter"), s_i, argc, argv);
				else
					// use the native attributes
					anObject = new InternalObject(x->patcher, gensym("jcom.parameter"), s_i, x->attr_argc, x->attr_argv);

				
				anObject->setAction((method)paramarray_callback, (t_object*)x);
				hashtab_store(x->hash_internals, s_i, (t_object*)anObject);
				anObject->index = i+1;	// store the instance to avoid a parse of the instance in the callback
			}
			// if it already exists 
			else{
				// if it's unsuscribed, subscribe it
				if(!anObject->subscribe){
					object_method(anObject->theObject, jps_subscribe);
					anObject->subscribe = true;
				}
			}
		}// end for each parameter lk_instances
		
		// then, if it is a creation of a smaler array than the previous
		// TODO : unsubscribe parameters witch are out of the array (no destruction to keep the value)
		// CURRENTLY : destroy the parameter
		if(size < ht_size){
			for(j = size+1; j <= ht_size; j++){
				s_num = (char *)malloc(sizeof(char)*256);
				anObject = NULL;
				snprintf(s_num, 256, x->attr_format, j);
				err = hashtab_lookup(x->hash_internals, gensym(s_num), (t_object**)&anObject);
				if(!err && x->hub){
					// TODO : object_method(x->hub, jps_unsubscribe, anObject->theObject);
					// TODO : anObject->subscribe = false;
					
					// CURRENTLY
					hashtab_delete(x->hash_internals, gensym(s_num));
					delete anObject;
				}
				free(s_num);
			}
		}
		
		// output the new array size
		x->attr_size = paramarray_count_subscription(x);
		atom_setlong(a, x->attr_size); 
		outlet_anything(x->info_outlet, _sym_size, 1, a);
		
		linklist_chuck(lk_instances);
	}
}
	
void paramarray_destroy_parameter(t_paramarray* x, t_symbol *msg)
{
	InternalObject	*anObject;
	t_max_err		err;
	
	err = hashtab_lookup(x->hash_internals, msg, (t_object**)&anObject);
	if(!err){
		hashtab_delete(x->hash_internals, msg);
		delete anObject;
	}
}

void paramarray_callback(t_paramarray *x, t_symbol *msg, long argc, t_atom* argv)
{
	InternalObject	*anObject;
	t_max_err		err;
	
	// TODO : a way to select wich paramaters we want to output (via a 'solo' and 'mute' message)
	// currently we output only the parameter selected with in1.
	if(msg == x->attr_selection){
	
		// A parameter sends his name using the symbol msg so we can retrieve it into the hashtab
		// and know which parameter is using the callback
		err = hashtab_lookup(x->hash_internals, msg, (t_object**)&anObject);
		if(!err){
			
			// output the data
			outlet_anything(x->ui_outlet, _sym_set, argc, argv);
			outlet_atoms(x->val_outlet, argc, argv);
			
			// only if the instance have changed
			if(anObject->index != x->last_instance){
				outlet_int(x->info_outlet, anObject->index);
				x->last_instance = anObject->index;
			}
		}
	}
}

long paramarray_count_subscription(t_paramarray *x)
{
	SymbolPtr*			keys = NULL;
	long				numkeys = 0;
	InternalObject*	anObject = NULL;
	long				count = 0;
	
	// Subcribe all parameters
	hashtab_getkeys(x->hash_internals, &numkeys, &keys);
	if(numkeys && keys){
		for(int i=0; i<numkeys; i++){
			hashtab_lookup(x->hash_internals, keys[i], (t_object**)&anObject);
			if(anObject->subscribe) count++;
		}
		sysmem_freeptr(keys);
	}
	return count;
}

/*
void paramarray_splitNameInstance(t_symbol *name_instance, t_symbol **returnedName, t_symbol **returnedInstance)
{
	int len, pos;
	char *last_dot;
	char *s_instance;
	char *to_split;
	
	to_split = (char *)malloc(sizeof(char)*(strlen(name_instance->s_name)+1));
	strcpy(to_split,name_instance->s_name);
	
	// find the last '.' in the OSCaddress
	// if exists, split the name.instance
	len = strlen(to_split);
	last_dot = strrchr(to_split,'.');
	pos = (int)last_dot - (int)to_split;
	
	if(last_dot){
		s_instance = (char *)malloc(sizeof(char)*(len - (pos+1)));
		strcpy(s_instance,to_split + pos+1);
		*returnedInstance = gensym(s_instance);
		
		to_split[pos] = NULL;	// split to keep only the name part
	}
	*returnedName = gensym(to_split);
}
 */

// returned the N inside "pp/xx[N]/yyy" and return a format string as "pp/xx.%d/yy"
long	paramarray_parse_bracket(t_symbol *s, char **s_format)
{
	int len, flen, ablen, pos, i_num = 1;
	char *start_bracket = NULL;
	char *end_bracket = NULL;
	char *after_bracket = NULL;
	char *to_parse, *s_num;

	if(s){
		
		to_parse = (char *)malloc(sizeof(char)*(strlen(s->s_name)+1));
		strcpy(to_parse,s->s_name);
		
		// find '[' and ']' in the instance
		start_bracket = strrchr(to_parse,'[');
		end_bracket = strrchr(to_parse,']');
		
		// if both exist, keep only what there is beetween
		if(start_bracket && end_bracket){
			pos = (int)start_bracket - (int)to_parse;
			len = (int)end_bracket - (int)start_bracket;
			s_num = (char *)malloc(sizeof(char)*(len+1));
			strcpy(s_num,to_parse + pos + 1);
			free(to_parse);
			sscanf(s_num, "%d", &i_num);	// only for Mac ???
			
			// edit a format string
			flen = strlen(to_parse) - len + 3; // +3 for \%d
			ablen = strlen(to_parse) - pos - len; // lenght of after_bracket
			*s_format = (char *)malloc(sizeof(char)*(flen+1));
			after_bracket = (char *)malloc(sizeof(char)*(ablen+1));
			
			strncpy(*s_format,to_parse,pos);
			strcpy(after_bracket, to_parse + pos + len + 1);
			(*s_format)[pos] = '\%';
			(*s_format)[pos+1] = 'd';
			(*s_format)[pos+2] = '\0';
			strcat(*s_format, after_bracket);
			(*s_format)[flen] = '\0';
			
			return i_num;
		}	
	}
	return NULL;	
}
