/* 
 * jcom.paramArray
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
	
	class_addmethod(c, (method)paramarray_anything,				"anything",			A_GIMME, 0);
	class_addmethod(c, (method)paramarray_create_parameter,		"create",			A_GIMME, 0);
	class_addmethod(c, (method)paramarray_destroy_parameter,	"destroy",			A_SYM, 0);
	
	class_register(CLASS_BOX, c);
	s_paramarray_class = c;
	return 0;
}

t_paramarray* paramarray_new(t_symbol *s, long argc, t_atom *argv)
{
	t_paramarray	*x = NULL;
	t_symbol *returnedInstance = NULL;

	if(x = (t_paramarray*)object_alloc(s_paramarray_class)){
		
		object_obex_lookup(x, gensym("#P"), &(x->patcher));
		x->hub = NULL;
		x->outlet = outlet_new(x, 0L);
		x->hash_internals = hashtab_new(0);
		
		
		if(atom_gettype(&argv[0]) == A_SYM){
			
			x->attr_name = NULL;
			paramarray_splitNameInstance(atom_getsym(&argv[0]), &x->attr_name, &returnedInstance);
			x->attr_argc = argc-1;
			x->attr_argv = argv+1;	// TODO : should we copy the array ?
				
			paramarray_create_parameter(x, NULL, argc, argv);
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
		if(!err)
			delete anObject;
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
	InternalObject *anObject;
	t_symbol *returnedName = NULL;
	t_symbol *returnedInstance = NULL;
	t_symbol *s_i;
	t_linklist *lk_instances;
	t_max_err err;
	bool parsing;
	char *s_num;
	int i, j, lk_size, ht_size;
	
	if(argc && argv){
		if(atom_gettype(&argv[0]) == A_SYM){
			
			// here we have to parse "name.[N]" to create N instances of parameter "name"
			// TODO : here we have to parse "name.{shi foo me}" to create the parameters "name.shi", "name.foo", "name.me"
			// and check if the name is correct
			paramarray_splitNameInstance(atom_getsym(&argv[0]), &returnedName, &returnedInstance);
			if(returnedName == x->attr_name){
				
				lk_instances = paramarray_parseInstance(returnedName, returnedInstance, &parsing);
				
				// note : doesn't works when the user want to create an unique parameter like "create foo.3"
				// so we check that a parsing of brackets have been done.
				if(parsing){
					
					if(lk_instances){
						
						// for each new parameter
						lk_size = linklist_getsize(lk_instances);
						ht_size = hashtab_getsize(x->hash_internals);
						for(i = 0; i < linklist_getsize(lk_instances); i++){
							
							s_i = (t_symbol*)linklist_getindex(lk_instances,i);
							
							// check if the parameter already exists in the hash tab
							err = hashtab_lookup(x->hash_internals, s_i, (t_object**)&anObject);
							
							// if it doesn't exist, create it
							if(err){
								// if there is no attribute
								if(argc == 1)
									// use the native attribute
									anObject = new InternalObject(x->patcher, gensym("jcom.parameter"), s_i, x->attr_argc, x->attr_argv);
								else
									// use the new ones
									anObject = new InternalObject(x->patcher, gensym("jcom.parameter"), s_i, argc-1, argv+1);
								
								anObject->setAction((method)paramarray_callback, (t_object*)x);
								hashtab_store(x->hash_internals, s_i, (t_object*)anObject);
							}
							// if it already exists 
							else{
								// if it's unsuscribed, subscribe it
								if(!anObject->subscribe){
									object_method(anObject->theObject, jps_subscribe);
									anObject->subscribe = true;
								}
							}
						}
						
						// then, if it is a creation of a smaler array than the previous
						// unsubscribe parameters witch are out of the array (no destruction to keep the value)
						if(lk_size < ht_size){
							for(j = lk_size+1; j <= ht_size; j++){
								s_num = (char *)malloc(sizeof(char)*256);
								anObject = NULL;
								snprintf(s_num, 256, "%s.%d", x->attr_name->s_name, j);
								err = hashtab_lookup(x->hash_internals, gensym(s_num), (t_object**)&anObject);
								if(!err && x->hub){
									object_method(x->hub, jps_unsubscribe, anObject->theObject);
									anObject->subscribe = false;
								}
								free(s_num);
							}
						}
						linklist_chuck(lk_instances);
					}
					else
						object_error((t_object*)x, "Error during the parsing of the instance");
				}
				else
					object_error((t_object*)x, "The instance number have to be into brackets");
			}
			else
				object_error((t_object*)x, "The name of the parameter array have to be %s", x->attr_name->s_name);
		}
		else
			object_error((t_object*)x, "The first argument have to be a symbol to named the parameter");
	}
	else
		object_error((t_object*)x, "The create method needs arguments");
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
	// A parameter sends his name using the symbol msg so we can retrieve it into the hashtab
	// and know which parameter is using the callback
	
	// output the data
	outlet_anything(x->outlet, msg, argc, argv);
}

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

// returned a list of name.instance 
t_linklist*	paramarray_parseInstance(t_symbol *name, t_symbol *instance, bool *parsing)
{
	int len, pos, i, i_num = 1;
	char *start_bracket = NULL;
	char *end_bracket = NULL;
	char *to_parse, *s_num;
	t_linklist *lk_instances = linklist_new();
	
	if(name){
		
		if(instance){
		
			to_parse = (char *)malloc(sizeof(char)*(strlen(instance->s_name)+1));
			strcpy(to_parse,instance->s_name);
			
			// find '[' and ']' in the instance
			start_bracket = strrchr(to_parse,'[');
			end_bracket = strrchr(to_parse,']');
			
			// if both exist, keep only what there is beetween
			if(start_bracket && end_bracket){
				pos = (int)start_bracket - (int)to_parse;
				len = (int)end_bracket - (int)start_bracket;
				s_num = (char *)malloc(sizeof(char)*(len+1));
				strcpy(s_num,to_parse + pos + 1);
				
				sscanf(s_num, "%d", &i_num);	// only for Mac ???
			
				// editing the list of name.1, name.2, ...
				for(i = 1; i <= i_num; i++){
					//free(s_num); ???
					s_num = (char *)malloc(sizeof(char)*256);
					snprintf(s_num, 256, "%s.%d", name->s_name, i);
					linklist_append(lk_instances,gensym(s_num));
				}
				*parsing = true;
			}
			// else return name.instance
			else{
				*parsing = false;
				snprintf(s_num, 256, "%s.%s", name->s_name, instance->s_name);
				linklist_append(lk_instances,gensym(s_num));
			}
			return lk_instances;	
		}
		*parsing = false;
		linklist_append(lk_instances,name);
		return lk_instances;
	}
	*parsing = false;
	return NULL;	
}
