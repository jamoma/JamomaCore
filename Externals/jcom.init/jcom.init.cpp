/* 
 * jcom.init
 * External for Jamoma: send bang to initialize something
 *	bang source may be global or for just one module
 * By Tim Place, Copyright © 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ext.h"					// Max Header
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API
#include "ext_obex.h"				// Max Object Extensions (attributes) Header
#include "jcom.core.h"


// Data Structure for this object
typedef struct _init{
//	t_object						obj;
	t_jcom_core_subscriber_common	common;
//	void							*obex;
//	t_patcher						*container;
//	void							*hub;				// the jcom.hub object that we subscribe to
//	t_symbol						*module_name;
//	t_symbol						*name;
	void							*outlet;
	void							*dumpout;
} t_init;

// Prototypes for methods
void *init_new(t_symbol *s, short argc, t_atom *argv);			// New Object Creation Method
//void init_subscribe(t_init *x);
//void init_free(t_init *x);										// Object Deletion Method
//void init_release(t_init *x);									// Hub Deletion
void init_assist(t_init *x, void *b, long m, long a, char *s);	// Assistance Method
void init_go(t_init *x);
void init_bang(t_init *x);

// Globals
t_class			*g_init_class;			// Required. Global pointing to this class


/************************************************************************************/
// Main() Function

int main(void)				// main recieves a copy of the Max function macros table
{
//	long 		attrflags = 0;
	t_class		*c;
	t_object 	*attr;
	long		offset;
	
	common_symbols_init();

	// Define our class
	c = class_new("jcom.init",(method)init_new, (method)jcom_core_subscriber_common_free, 
		(short)sizeof(t_init), (method)0L, A_GIMME, 0);
	offset = calcoffset(t_init, common);
	class_obexoffset_set(c, offset + calcoffset(t_jcom_core_subscriber_common, obex));

	// Make methods accessible for our class: 
	class_addmethod(c, (method)init_bang,				"bang",			0L);
	class_addmethod(c, (method)init_go,					"go",			A_CANT, 0);
//	class_addmethod(c, (method)init_release,			"release",		A_CANT, 0L);	// notification of hub being freed
    class_addmethod(c, (method)init_assist,				"assist",		A_CANT, 0L);
//    class_addmethod(c, (method)object_obex_dumpout, 	"dumpout",		A_CANT, 0);  
//    class_addmethod(c, (method)object_obex_quickref,	"quickref",		A_CANT, 0);
	
	jcom_core_subscriber_classinit_common(c, attr, offset);	
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	g_init_class = c;

	jcom_core_init();
	return 0;
}


/************************************************************************************/
// Object Life

// Create
void *init_new(t_symbol *s, short argc, t_atom *argv)
{
	long 		attrstart = attr_args_offset(argc, argv);		// support normal arguments
	t_init 		*x = (t_init *)object_alloc(g_init_class);
	t_symbol	*name = _sym_nothing;
//	short 		i;

	if(attrstart && argv)
		atom_arg_getsym(&name, 0, attrstart, argv);
	else
		name = symbol_unique();
	
	if(x){
		x->dumpout = outlet_new(x, NULL);
		x->outlet = outlet_new(x, NULL);
		object_obex_store((void *)x, ps_dumpout, (object *)x->dumpout);		// setup the dumpout

//		if(attrstart > 0)
//			x->common.attr_name = atom_getsym(argv);
//		else
//			x->common.attr_name = symbol_unique();

		jcom_core_subscriber_new_common(&x->common, name);
		attr_args_process(x, argc, argv);					// handle attribute args				

//		x->common.container = (t_patcher *)gensym("#P")->s_thing;	
//		defer_low(x, (method)init_subscribe, 0, 0, 0);
//		void jcom_core_subscriber_subscribe(t_jcom_core_subscriber_common *x, t_symbol *subscriber_type)
		defer_low(x, (method)jcom_core_subscriber_subscribe, ps_subscribe_init, 0, 0);
	}
	return (x);												// Return the pointer
}

/*
// deferred function for registering with the jcom.hub object
void init_subscribe(t_init *x)
{
	x->common.hub = jcom_core_subscribe(x, x->common.attr_name, x->common.container, ps_subscribe_init);
	if(x->common.hub)
		x->common.module_name = (t_symbol *)object_method(x->common.hub, ps_module_name_get);	
}
*/
/*
// Destroy
void init_free(t_init *x)
{
	jcom_core_unsubscribe(x->common.hub, x);
}
*/
/*
// Notification that the hub no longer exists
void init_release(t_init *x)
{
	x->common.hub = NULL;
}
*/

/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void init_assist(t_init *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 	// Inlets
		strcpy(dst, "bang is passed through to the outlet");
	else if(msg==2){ // Outlets
		if(arg == 0) 
			strcpy(dst, "bang on initialization");
		else 
			strcpy(dst, "dumpout");
	}
}

// GO!
void init_go(t_init *x)
{
	outlet_bang(x->outlet);
}

// BANG!
void init_bang(t_init *x)
{
	if(x->common.hub != NULL)
		object_method(x->common.hub, ps_init);
}
