/* 
 * jcom.minuit
 * External for Jamoma : ...
 * By Stan Bundervoet, Théo de la Hogue, Copyright 2009
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */
#include "jcom.minuit.h"

// Globals
t_class		*minuit_class;

// implementation
#if 0
#pragma mark -
#pragma mark Class Definition
#endif 0

int JAMOMA_EXPORT_MAXOBJ main(void)
{
	t_class *c;
	
	jamoma_init();
	common_symbols_init();
	
	// Define our class
	c = class_new("jcom.minuit",(method)minuit_new, (method)minuit_free, (long)sizeof(t_minuit), 0L, A_GIMME, 0);
	
	// add methods
	class_addmethod(c, (method)minuit_notify,		"notify",		A_CANT, 0);
	class_addmethod(c, (method)minuit_assist,		"assist",		A_CANT, 0);
	
	// this method posts the children (leaves or nodes) and the properties of the node which address is given
	class_addmethod(c, (method)minuit_add_device,	"add_device",	A_SYM, A_SYM, A_LONG, 0);
	class_addmethod(c, (method)minuit_namespace,	"?namespace",	A_SYM, 0);
	class_addmethod(c, (method)minuit_get,			"?get",			A_SYM, 0);
	class_addmethod(c, (method)minuit_set,			"?set",			A_GIMME, 0);
	class_addmethod(c, (method)minuit_anything,		"anything",		A_GIMME, 0);
	
	class_addmethod(c, (method)minuit_debug,		"debug",		A_LONG, 0);
	class_addmethod(c, (method)minuit_dump,			"dump",			0);
	
	// Finalize our class
	class_register(CLASS_BOX, c);
	minuit_class = c;
	return 0;
}

#if 0
#pragma mark -
#pragma mark Life Cycle
#endif 0

void *minuit_new(t_symbol *name, long argc, t_atom *argv)
{
	t_minuit *x;

	x = (t_minuit*)object_alloc(minuit_class);

	if(x){
		
		x->p_info = outlet_new(x, 0);
		x->device = _sym_nothing;
		x->b_debug = false;
		
		// Initialize the Jamoma Controller
		jamoma_controller_init();
		
		// DEBUG
		jamoma_controller_dump();
		
		// Check if the Minuit plugin is installed
		if(!jamoma_controller->pluginIsLoaded("Minuit"))
		{
			object_post((t_object *)x, "Can't find the Minuit.dylib plugin in the search patch (%s)", CONTROLLER_SEARCH_PATH);
			return NULL;
		}
	}
	return x;
}

void minuit_free(t_minuit *x)
{
	;
}

#if 0
#pragma mark -
#pragma mark Methods
#endif 0

t_max_err minuit_notify(t_minuit *x, t_symbol *s, t_symbol *msg, void *sender, void *data)
{
	object_post((t_object *)x, "notification : %s", msg->s_name);
	return MAX_ERR_NONE;
}

void minuit_assist(t_minuit *x, void *b, long msg, long arg, char *dst)
{
	if (msg == ASSIST_INLET) { // inlet
		//if(arg == 0)
		//strcpy(dst, "I am inlet 0");
	} 
	else {	// outlet
		if(arg == 0)
			strcpy(dst, "info outlet");
	}		
}

void minuit_add_device(t_minuit *x, t_symbol *device_name, t_symbol *ip, long port)
{
	std::map<std::string, std::string> commParameters;
	char s_port[8];
	
	snprintf(s_port, 8, "%ld", port);
	
	// remove the actual Minuit device
	if(x->device != _sym_nothing)
		jamoma_controller->deviceRemove(x->device->s_name);
	
	// create a new one
	commParameters["ip"] = ip->s_name;
	commParameters["port"] = s_port;
	jamoma_controller->deviceAdd(device_name->s_name, "Minuit", &commParameters);
	
	x->device = device_name;
	
	if(x->b_debug)
		jamoma_controller_dump();
}

void minuit_namespace(t_minuit *x, t_symbol *address)
{
	// TODO : add device name
	//jamoma_controller->deviceSendNamespaceRequest(address->s_name);
	// TODO get the answer
}

void minuit_get(t_minuit *x, t_symbol *address)
{
	// TODO : add device name
	//jamoma_controller->deviceSendGetRequest(address->s_name);
	// TODO get the answer
}

void minuit_set(t_minuit *x, t_symbol *msg, long argc, t_atom *argv)
{
	// TODO : add device name
	// TODO : make a string value
	Address adr = msg->s_name;
	Value val = "TODO";
	
	//jamoma_controller->deviceSendMessage(adr, val);
	
	// TODO get the answer
}

void minuit_anything(t_minuit *x, t_symbol *msg, long argc, t_atom *argv)
{
	defer(x, (method)minuit_set, msg, argc, argv);
}

void minuit_debug(t_minuit *x, long n)
{
	x->b_debug = n > 0;
}

void minuit_dump(t_minuit *x)
{
	// dump all the address of the directory in the Max window
	jamoma_directory_dump();
}