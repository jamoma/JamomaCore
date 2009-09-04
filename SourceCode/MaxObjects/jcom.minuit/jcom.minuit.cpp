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
t_class		*node_class;

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
	c = class_new("jcom.minuit",(method)node_new, (method)node_free, (long)sizeof(t_node), 0L, A_GIMME, 0);

	// add methods
	class_addmethod(c, (method)node_notify,			"notify",		A_CANT, 0);
	class_addmethod(c, (method)node_assist,			"assist",		A_CANT, 0);

	// this method posts the children (leaves or nodes) and the properties of the node which address is given
	class_addmethod(c, (method)minuit_namespace,	"?namespace",	A_SYM, 0);
	class_addmethod(c, (method)minuit_get,			"?get",			A_SYM, 0);
	class_addmethod(c, (method)minuit_set,			"?set",			A_GIMME, 0);

	// Finalize our class
	class_register(CLASS_BOX, c);
	node_class = c;
	return 0;
}

#if 0
#pragma mark -
#pragma mark Life Cycle
#endif 0

void *node_new(t_symbol *name, long argc, t_atom *argv)
{
	t_node *x;

	x = (t_node*)object_alloc(node_class);
	x->p_out = outlet_new(x, 0);

	if(x){

		// default : get the root of the tree
		x->p_node = jamoma_node_init();

	}
	return x;
}

void node_free(t_node *x)
{
	;
}

#if 0
#pragma mark -
#pragma mark Methods
#endif 0

t_max_err node_notify(t_node *x, t_symbol *s, t_symbol *msg, void *sender, void *data)
{
	object_post((t_object *)x, "notification : %s", msg->s_name);
	return MAX_ERR_NONE;
}

void node_assist(t_node *x, void *b, long msg, long arg, char *dst)
{
	if (msg == ASSIST_INLET) { // inlet
		//if(arg == 0)
		//strcpy(dst, "I am inlet 0");
	} 
	else {	// outlet
		//if(arg == 0)
		//strcpy(dst, "I am outlet 0");
	}		
}

void minuit_namespace(t_node *x, t_symbol *address) {

	short i;
	char outletstring[REQUEST_SIZE];
	TTSymbolPtr n_attr;
	t_symbol *n_type;
	t_symbol *n_instance;
	t_atom a;
	
	snprintf(outletstring, 1024, ":namespace %s ", address->s_name);
	node_goto(x, address);

	// Il nous faut avoir les noeuds inférieurs et les attributs du noeud à l'addresse données

	TTListPtr lk_prp = jamoma_node_properties(x->p_node);
	TTListPtr lk_chd = jamoma_node_children(x->p_node);
	//t_symbol *inst = jamoma_node_instance(x->p_node);

	// the two lists for the nodes and leaves
	t_linklist *lk_leaves = linklist_new();
	t_linklist *lk_nodes = linklist_new();

	// if there are properties
	if(lk_prp){

		strcat(outletstring," attributes={");

		// write an outline for each attribut
		for(lk_prp->begin(); lk_prp->end(); lk_prp->next()){
			
			lk_prp->current().get(0,(TTSymbolPtr*)&n_attr);
			strcat(outletstring," ");
			strcat(outletstring,n_attr->getCString());  
		} 
		strcat(outletstring," }");
	}

	// if there are children
	if(lk_chd){
		
		//a check if its leaves or nodes
		for(lk_chd->begin(); lk_chd->end(); lk_chd->next()){
			
			lk_chd->current().get(0,(TTPtr*)&x->p_node);
			n_type = jamoma_node_type(x->p_node);
			
			if((n_type == gensym("container")) || (n_type == gensym("hub")))
				linklist_append(lk_nodes, x->p_node);
			else
				if(n_type == gensym("subscribe_parameter"))
					linklist_append(lk_leaves, x->p_node);
		}
		
		if(lk_nodes->head) {
			
			strcat(outletstring," nodes={");
			for(i=0; i<linklist_getsize(lk_nodes); i++){
				
				// get the name
				x->p_node = (TTNodePtr)linklist_getindex(lk_nodes,i);
				strcat(outletstring," ");
				strcat(outletstring,jamoma_node_name(x->p_node)->s_name);

				// get instance
				n_instance = jamoma_node_instance(x->p_node);
				if(n_instance != gensym("")){
					strcat(outletstring,".");
					strcat(outletstring,n_instance->s_name);
				}
			}
			strcat(outletstring," }");
		}
		
		if(lk_leaves->head) {
			
			strcat(outletstring," leaves={");
			for(i=0; i<linklist_getsize(lk_leaves); i++){
				
				// get the name
				x->p_node = (TTNodePtr)linklist_getindex(lk_leaves,i);
				strcat(outletstring," ");
				strcat(outletstring,jamoma_node_name(x->p_node)->s_name);

				// get instance
				n_instance = jamoma_node_instance(x->p_node);
				if(n_instance != gensym("")){
					strcat(outletstring,".");
					strcat(outletstring,n_instance->s_name);
				}
			}
			strcat(outletstring," }");
		}
	}
	outlet_anything(x->p_out, gensym(outletstring), 0, &a);
}


void minuit_get(t_node *x, t_symbol *oscAddress)
{
	TTSymbolPtr oscAddress_parent, oscAddress_name, oscAddress_instance, oscAddress_propertie;
	char outletstring[REQUEST_SIZE];
	char address[256];
	char attribute[64];
	t_object *obj;
	long nb_value = 0;
	t_atom  *attr_value = NULL;
	t_max_err m_err;
	TTErr tt_err;

	//split OSC the address
	// TODO : make a split method to only get /address:attribut
	tt_err = splitOSCAddress(TT(oscAddress->s_name),&oscAddress_parent,&oscAddress_name, &oscAddress_instance, &oscAddress_propertie);
	
	// if no error in the parsing of the OSC address
	if(tt_err == kTTErrNone){

		// Making the address part /parent/name.instance
		// TODO : make a split method to only get /address:attribut
		if(oscAddress_instance == NO_INSTANCE)
			snprintf(address, 256, "%s/%s", oscAddress_parent->getCString(), oscAddress_name->getCString());
		else
			snprintf(address, 256, "%s/%s.%s", oscAddress_parent->getCString(), oscAddress_name->getCString(), oscAddress_instance->getCString());

		// goto the address
		node_goto(x,gensym(address));
		if(!x->address)
			return;

		// check attribute
		if(oscAddress_propertie == NO_PROPERTIE)
			snprintf(attribute, 64, "value");
		else
			snprintf(attribute, 64, "%s", oscAddress_propertie->getCString()+1); // +1 to avoid the / before

		// get the attribute value
		obj = jamoma_node_max_object(x->p_node);
		m_err = object_attr_getvalueof(obj, gensym(attribute), &nb_value, &attr_value);

		if(!m_err){
			//outletstring
			snprintf(outletstring, 1024, ":get %s:/%s ", address, attribute);
			outlet_anything(x->p_out, gensym(outletstring), nb_value, attr_value);
		}
		else
			object_post((t_object*)x,"there are no values attached to the requested attribute"); 
	}
}

void minuit_set(t_node *x, t_symbol *msg, long argc, t_atom *argv)
{
	t_symbol *oscAddress;
	TTSymbolPtr oscAddress_parent, oscAddress_name, oscAddress_instance, oscAddress_propertie;
	char outletstring[REQUEST_SIZE];
	char address[256];
	char attribute[64];
	t_object *obj;
	long nb_value = 0;
	t_atom  *attr_value = NULL;
	t_max_err m_err;
	TTErr tt_err;

	//split OSC the address
	// TODO : make a split method to only get /address:attribut
	if(argc && argv){
		if(atom_gettype(&argv[0]) == A_SYM){
			oscAddress = atom_getsym(&argv[0]);
			tt_err = splitOSCAddress(TT(oscAddress->s_name),&oscAddress_parent,&oscAddress_name, &oscAddress_instance, &oscAddress_propertie);
	
			// if no error in the parsing of the OSC address
			if(tt_err == kTTErrNone){

				// Making the address part /parent/name.instance
				// TODO : make a split method to only get /address:attribut
				if(oscAddress_instance == NO_INSTANCE)
					snprintf(address, 256, "%s/%s", oscAddress_parent->getCString(), oscAddress_name->getCString());
				else
					snprintf(address, 256, "%s/%s.%s", oscAddress_parent->getCString(), oscAddress_name->getCString(), oscAddress_instance->getCString());

				// goto the address
				node_goto(x,gensym(address));
				if(!x->address)
					return;

				// check attribute
				if(oscAddress_propertie == NO_PROPERTIE)
					snprintf(attribute, 64, "value");
				else
					snprintf(attribute, 64, "%s", oscAddress_propertie->getCString()+1); // +1 to avoid the / before

				// set the attribut value
				obj = jamoma_node_max_object(x->p_node);
				if(!strcmp(attribute,"value"))
					object_method_typed((t_object*)obj, jps_dispatched, argc-1, argv+1, NULL);
				else
					object_attr_setvalueof(obj, gensym(attribute), argc-1, argv+1);
			}
		}
		else
			object_error((t_object*)x,"the first argument have to be an OSC address");
	}
} 

void node_goto(t_node *x, t_symbol *address)
{
	JamomaError err = JAMOMA_ERR_NONE;

	// Are we dealing with an OSC message ?
	if(address->s_name[0] == S_SEPARATOR[0]){

		if(address != x->address){
			err = jamoma_node_get(address, &(x->lk_nodes), &(x->p_node));

			// if the address exists
			if(err == JAMOMA_ERR_NONE)
				x->address = address;
			else{
				x->address = NULL;
				x->p_node = NULL;
				object_post((t_object*)x,"%s doesn't exist", address->s_name);
			}
		}
	}
}