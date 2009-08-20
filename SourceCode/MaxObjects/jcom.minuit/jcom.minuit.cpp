/* 
 * jcom.minuit
 * External for Jamoma : ...
 * By Théo de la Hogue, Copyright 2009
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


	//changement Stan
	// this method posts the children (leaves or nodes) and the properties of the node which address is given
	class_addmethod(c, (method)node_namespace,		"?namespace",	A_SYM, 0);
	class_addmethod(c, (method)node_get,			"?get",			A_SYM, 0);

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

void node_namespace(t_node *x, t_symbol *address) {

	short i;
	t_symbol *attr_sym;
	t_node *temp;
	bool isNode=FALSE;
	t_symbol *name;
	t_symbol *instance;

	post("?namespace %s", address->s_name);
	node_goto(x, address);

	// Il nous faut avoir les noeuds inférieurs et les attributs du noeud à l'addresse données

	t_linklist *lk_prp = jamoma_node_properties(x->p_node);
	t_linklist *lk_chd = jamoma_node_children(x->p_node);

	// if there are properties
	if(lk_prp){
		post("attributes={");

		// write an outline for each attribut

		for(i=0; i<linklist_getsize(lk_prp); i++){
			attr_sym = (t_symbol *)linklist_getindex(lk_prp,i);

			post("%s", attr_sym->s_name);

		}
		post("}\n");
	}

	// if there are children
	if(lk_chd){
		
		// notes : difference entre node et leave : 
		// type = container pour node
		// type = suscribe_parameter pour leave
		
		//a check if its leaves or nodes
		for(i=0; i<linklist_getsize(lk_chd); i++){
			temp->p_node = (NodePtr)linklist_getindex(lk_chd,i);
			t_linklist *lk_grandchd = jamoma_node_children(x->p_node);
			if (lk_grandchd)
				isNode=TRUE;
		}
		if(isNode)
			post("nodes={"); 
		else
			post("leaves={");


		for(i=0; i<linklist_getsize(lk_chd); i++){

			x->p_node = (NodePtr)linklist_getindex(lk_chd,i);
			t_symbol *namech = jamoma_node_name(x->p_node);
			post("%s", namech->s_name);

		}
		post("}\n");
	}
}

void node_get(t_node *x, t_symbol *address) {

	short i;
	TTSymbolPtr *returnedParentOscAdress, *returnedNodeName, *returnedNodeInstance, *returnedNodePropertie;
	t_symbol *attr_sym;

	//goto ne retourne/split pas les properties, donc appel à nodelib? ou changer goto?
	//splitOSCAddress(TT(address->s_name),returnedParentOscAdress, returnedNodeName, returnedNodeInstance, returnedNodePropertie);

	post("?get %s", address->s_name);
	node_goto(x, address);

	// get all properties of the node
	//object_attr_getvalueof(obj, "value", &value_nb, &attr_value);
	t_linklist *lk_prp = jamoma_node_max_object(x->p_node);
	
	post ("%s",name->s_name);
	post(":%s ", (**returnedNodePropertie).getCString());

	// if there are properties
	if(lk_prp){

		for(i=0; i<linklist_getsize(lk_prp); i++){
			attr_sym=(t_symbol *)linklist_getindex(lk_prp,i);
			if(attr_sym->s_name==(**returnedNodePropertie).getCString())
				//comment poster le value?? et comment affucher les différent types  d'attributs!, post(attr_sym->
				post(":%s ", (**returnedNodePropertie).getCString());

		}
		post("}\n");
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
		}
	}
}