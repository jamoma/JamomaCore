/* 
 * jcom.core
 * shared code used by the jamoma core externals
 * By Tim Place, Copyright � 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ext.h"		// Max externals header
#include "ext_obex.h"	// Obex header
#include "jcom.core.h"
#include "Jamoma.h"

#pragma mark -
#pragma mark Hub Bindings

// Registering with the jcom.hub object
t_object *jcom_core_subscribe(t_object *x, t_symbol *name, t_object *container, t_symbol *object_type)
{
	if(max5){
		return NULL;
	}
	else{
		t_patcher	*p = (t_patcher*)container;
		t_box		*b;
		t_class		*theclass;
		t_object	*hub = NULL;
		
	again:	
		for(b = p->p_box; b; b = b->b_next){							// traverse the linked list of boxes in the patch
			if(b->b_firstin && ((t_object*)(b->b_firstin))->o_magic != 1758379419){
				error("jamoma_core_subscribe: something has gone terribly wrong");
				post("maybe you have multiple modules with the same OSC name?");
				return NULL;
			}
			theclass = object_class(b->b_firstin);
			if(object_classname_compare(b->b_firstin, ps_jcom_hub)){	// if this is a jcom.hub...
				object_method(b->b_firstin, ps_subscribe, name, x, object_type);
				hub = (t_object*)b->b_firstin;							// store the pointer
				break;													// then stop looking
			}
		}
		if(hub == NULL){							// failed to find a hub in the patch...
			if(p->p_vnewobj != NULL){				//	go one level higher and search there
				b = (t_box *)p->p_vnewobj;
				p = b->b_patcher;
				goto again;
			}
			else
				error("object named '%s' could not find a jcom.hub for subscribing", name->s_name);
		}
		return hub;
	}
}

// Unregister from the jcom.hub object
//void jcom_core_unsubscribe(void *hub, t_symbol *name)
void jcom_core_unsubscribe(t_object *hub, void *object)
{
	if(hub)
		object_method(hub, ps_unsubscribe, object);
}


#pragma mark -
#pragma mark Atom Utilities

// Copying all of the elements should be faster than branching and copying one element
//	(that's the theory anyway...)
void jcom_core_atom_copy(t_atom *dst, t_atom *src)
{
	memcpy(dst, src, sizeof(t_atom));
}


bool jcom_core_atom_compare(t_symbol *type, t_atom *a1, t_atom *a2)
{
	if(!a1 || !a2)
		return 0;
		
	if(type == ps_msg_float){				// float is first so that it gets process the most quickly
		if(atom_getfloat(a1) == atom_getfloat(a2))
			return 1;
	}
	else if((type == ps_msg_int) || (type == ps_msg_toggle)){
		if(atom_getlong(a1) == atom_getlong(a2))
			return 1;
	}
	else if(type == ps_msg_symbol){
		if(atom_getsym(a1) == atom_getsym(a2))
			return 1;
	}
	else if((type == ps_msg_generic) || (type == ps_msg_list)){
		// type msg_list should be checked here as well.  If type == msg_list and this function is called
		// it means we are dealing with a list of length 1, so we only need to compare one atom anyway.
		
		// note that if the two are of different types, then they are obviously not the same
		if((a1->a_type == A_LONG) && (a2->a_type == A_LONG)){
			if(a1->a_w.w_long == a2->a_w.w_long)
				return 1;
		}
		else if((a1->a_type == A_FLOAT) && (a2->a_type == A_FLOAT)){
			if(a1->a_w.w_float == a2->a_w.w_float)
				return 1;
		}
		else if((a1->a_type == A_SYM) && (a2->a_type == A_SYM)){
			if(a1->a_w.w_sym == a2->a_w.w_sym)
				return 1;
		}
	}
	else
		error("atom_compare: cannot do comparison on this data type");
	return 0;
}


void jcom_core_file_writeline(t_filehandle *fh, long *the_eof, char *the_text)
{
	char 	tempstring[4096];
	short	err = 0;
	long	len = 0;
	
	strcpy(tempstring, the_text);
	strcat(tempstring, "\n");
	len = strlen(tempstring);
	err = sysfile_write(*fh, &len, &tempstring);
	if(err){
		error("jamoma: sysfile_write error (%d)", err);
		return;
	}
	*the_eof = *the_eof + len;
}


// Compare Strings: Is s2 after s1 in alphabetical order?
bool jcom_core_string_compare(char *s1, char *s2)
{
	short i;
	short len1 = strlen(s1);
	short len2 = strlen(s2);
	bool result = false;
	bool keepgoing = true;
	
	if(len2 < len1)
		len1 = len2;	// only compare the characters of the short string
		
	for(i=0; i<len1 && keepgoing; i++){
		if(s1[i] < s2[i]){
			result = true;
			keepgoing = false;
		}
		else if(s1[i] > s2[i])
			keepgoing = false;
	}
	return result;
}


// Load an external for internal use
// returns true if successful
bool jcom_core_loadextern(t_symbol *objectname, long argc, t_atom *argv, t_object **object)
{
	t_class 	*c = NULL;
	t_object	*p = NULL;

	c = class_findbyname(ps_box, objectname);
	if(!c){
		p = (t_object *)newinstance(objectname, 0, NULL);
		if(p){
			c = class_findbyname(ps_box, objectname);
			freeobject(p);
			p = NULL;
		}
		else{
			error("jamoma: could not load extern (%s) within the core", objectname->s_name);
			return false;
		}
	}

	if(*object != NULL){			// if there was an object set previously, free it first...
		object_free(*object);
		*object = NULL;
	}

	*object = (t_object *)object_new_typed(CLASS_BOX, objectname, argc, argv);
	return true;
}


// Function the translates a Max path+filename combo into a correct absolutepath
// TODO: remove this function once we've completed the transition to Max5, as path_topathname() is fixed for Max5
void jcom_core_getfilepath(short in_path, char *in_filename, char *out_filepath)
{
	char	path[4096];
	
	path_topathname(in_path, in_filename, path);

#ifdef MAC_VERSION
	if(max5)
		strcpy(out_filepath, path);
	else{
		char *temppath;
		temppath = strchr(path, ':');
		*temppath = '\0';
		temppath += 1;
	
		// at this point temppath points to the path after the volume, and out_filepath points to the volume
		sprintf(out_filepath, "/Volumes/%s%s", path, temppath);
	}
#else // WIN_VERSION
	strcpy(out_filepath, path);
#endif
}


// Add attributes that are common to many subscribers (such as parameter, message, and return)
void jcom_core_subscriber_classinit_common(t_class *c, t_object *attr, long offset, bool define_name)
{
	long 		attrflags = 0;
	long		attroffset;

	// METHODS
	class_addmethod(c, (method)jcom_core_subscriber_hubrelease,	"release",		A_CANT, 0);	// notification of hub being freed
	class_addmethod(c, (method)object_obex_dumpout,				"dumpout",		A_CANT, 0);  
	class_addmethod(c, (method)object_obex_quickref,			"quickref",		A_CANT, 0);

	// ATTRIBUTE: name
	if(define_name){
		attroffset = offset + calcoffset(t_jcom_core_subscriber_common, attr_name);
		attr = attr_offset_new("name", _sym_symbol, attrflags,
			(method)0, (method)jcom_core_subscriber_attribute_common_setname,
	 		attroffset);
		class_addattr(c, attr);	
	}
}


void jcom_core_subscriber_classinit_extended(t_class *c, t_object *attr, long offset, bool define_name)
{
	long 		attrflags = 0;
	long		attroffset;

	jcom_core_subscriber_classinit_common(c, attr, offset, define_name);

	// ATTRIBUTE: range <low, high>
	attroffset = offset + calcoffset(t_jcom_core_subscriber_extended, attr_range);
	attr = attr_offset_array_new("range", _sym_float32, 2, attrflags,
		(method)0, (method)0, 
		offset + calcoffset(t_jcom_core_subscriber_extended, attr_range_len), attroffset);
	class_addattr(c, attr);

	// ATTRIBUTE: repetitions - 0 means repetitive values are not allowed, 1 means they are
	attroffset = offset + calcoffset(t_jcom_core_subscriber_extended, attr_repetitions);
	attr = attr_offset_new("repetitions", _sym_long, attrflags,
		(method)0, (method)0, 
		attroffset);
	class_addattr(c, attr);

	// ATTRIBUTE: type 
	// this is not defined here because some objects (i.e jcom.parameter) need to treat this in different ways
	
	// ATTRIBUTE: clipmode - options are none, low, high, both
	attroffset = offset + calcoffset(t_jcom_core_subscriber_extended, attr_clipmode);
	attr = attr_offset_new("clipmode", _sym_symbol, attrflags,
		(method)0, (method)0, 
		attroffset);
	class_addattr(c, attr);

	// ATTRIBUTE: description - does nothing, but is accessed by jcom.dispatcher for /autodoc generation
	attroffset = offset + calcoffset(t_jcom_core_subscriber_extended, attr_description);
	attr = attr_offset_new("description", _sym_symbol, attrflags,
		(method)0, (method)0, 
		attroffset);
	class_addattr(c, attr);	
}


// arg is subscriber name
void jcom_core_subscriber_new_common(t_jcom_core_subscriber_common *x, t_symbol *name, t_symbol *subscriber_type)
{
	t_atom 	a;
	
	x->subscriber_type = subscriber_type;
	x->custom_subscribe = NULL;
	x->hub = NULL;
	x->obj_hub_broadcast = NULL;
	x->module_name = _sym_nothing;

	// we call the function directly here rather than use object_attr_setvalueof() 
	// because parameters with pattr bindings don't actually have their own 'name' attribute
	atom_setsym(&a, name);
	jcom_core_subscriber_attribute_common_setname(x, NULL, 1, &a);
 	
	x->container = jamoma_object_getpatcher((t_object*)x);
	
	// set up the jcom.receive the listens to broadcast messages from the hub
	atom_setsym(&a, ps_jcom_broadcast_fromHub);
	if(!jcom_core_loadextern(ps_jcom_receive, 1, &a, &x->obj_hub_broadcast))
		error("jcom.core: loading jcom.receive extern failed");
	else
		object_method(x->obj_hub_broadcast, ps_setcallback, &jcom_core_broadcast_callback, x);
	
}


void jcom_core_subscriber_new_extended(t_jcom_core_subscriber_extended *x, t_symbol *name, t_symbol *subscriber_type)
{
	jcom_core_subscriber_new_common((t_jcom_core_subscriber_common *)x, name, subscriber_type);
	
	x->attr_range[0] = 0.0;
	x->attr_range[1] = 1.0;
	x->attr_clipmode = ps_none;
	x->attr_description = _sym_nothing;
	x->attr_type = ps_msg_generic;
	x->attr_repetitions = 1;
}


// COMMON ATTRIBUTE: name
t_max_err jcom_core_subscriber_attribute_common_setname(t_jcom_core_subscriber_common *x, void *attr, long argc, t_atom *argv)
{	
	t_symbol *arg = atom_getsym(argv);
	x->attr_name = arg;

	if(arg->s_name[strlen(arg->s_name)-1] == '*')
		x->has_wildcard = true;
	else
		x->has_wildcard = false;

	return MAX_ERR_NONE;
	#pragma unused(attr)
}

// function for registering with the jcom.hub object
void jcom_core_subscriber_subscribe(t_jcom_core_subscriber_common *x)
{
	if(x->hub == NULL){			// do not allow multiple subscribes of this object 
		x->hub = jcom_core_subscribe((t_object*)x, x->attr_name, x->container, x->subscriber_type);
		if(x->hub) 
			x->module_name = (t_symbol *)object_method(x->hub, ps_core_module_name_get);
		if(x->custom_subscribe)
			x->custom_subscribe(x);
	}
}


// Notification that the hub no longer exists
void jcom_core_subscriber_hubrelease(t_jcom_core_subscriber_common *x)
{
	x->hub = NULL;
}


// Set a custom subscribe method
void jcom_core_subscriber_setcustomsubscribe_method(t_jcom_core_subscriber_common *x, t_subscribe_method meth)
{
	x->custom_subscribe = meth;
}


// Unsubscribe and common freeing code
void jcom_core_subscriber_common_free(t_jcom_core_subscriber_common *x)
{
	jcom_core_unsubscribe(x->hub, x);
	x->hub = NULL;
	object_free(x->obj_hub_broadcast);
	x->obj_hub_broadcast = NULL;
}


// receive messages from our internal jcom.receive external
void jcom_core_broadcast_callback(void *z, t_symbol *msg, long argc, t_atom *argv)
{
	t_jcom_core_subscriber_common	*x = (t_jcom_core_subscriber_common *)z;
	
	if(msg == gensym("hub.changed"))
		defer_low(x, (method)jcom_core_subscriber_subscribe, 0, 0, 0);
}
