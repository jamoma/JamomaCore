/* 
 * Jamoma Tree
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTFoundationAPI.h"
#include "JamomaMaxTypes.h"
#include "JamomaTypes.h"

// statics and globals

/**	The Jamoma node tree				*/
static TTTreePtr	jamoma_tree = NULL;

#ifdef __cplusplus
extern "C" {
#endif

	/** Create and return the tree */
	TTTreePtr		jamoma_tree_init(void);
	
	
	/** Free the tree */
	JamomaError		jamoma_tree_free(void);

	/** Dump all the OSC address of the tree in the max window */
	JamomaError		jamoma_tree_dump(void);

	/** Register an osc address in the tree

		Note : this is called 
				> in "hub_attr_setname" (in jcom.hub.cpp) to register the hub
				> in "hub_subscribe" (in jcom.hub.cpp) to register a param	*/
	JamomaError		jamoma_tree_register(t_symbol *OSCaddress, t_symbol *type, t_object *obj, TTNodePtr *newNode, bool *newInstanceCreated);

	/** Unregister an osc address in the tree */
	JamomaError		jamoma_tree_unregister(t_symbol *OSCaddress);

	/** Get the node(s) at the given address (with wildcard too) */
	JamomaError		jamoma_tree_get_node(t_symbol *address, TTListPtr *returnedNodes, TTNodePtr *firstReturnedNode);

	/** Return the name of a node */
	t_symbol *		jamoma_node_name(TTNodePtr node);

	/** Set the name of a node
		@return		a new instance created (or NULL if not)	*/
	t_symbol *		jamoma_node_set_name(TTNodePtr node, t_symbol *name);

	/** Return the instance of a node*/
	t_symbol *		jamoma_node_instance(TTNodePtr node);

	/** Set the instance of a node
		@return		a new instance created (or NULL if not)	*/
	t_symbol *		jamoma_node_set_instance(TTNodePtr node, t_symbol *instance);

	/** Return the type of a node*/
	t_symbol *		jamoma_node_type(TTNodePtr node);

	/** Return all children of a node */
	TTListPtr		jamoma_node_children(TTNodePtr node);

	/** Return the Max object of a node */
	t_object*		jamoma_node_max_object(TTNodePtr node);

	/** Return all properties of a node */
	TTListPtr		jamoma_node_properties(TTNodePtr node);

	/** Add a propertie to a node as a key in the hashtab (without value) */
	JamomaError		jamoma_node_set_properties(TTNodePtr node, t_symbol *propertie);

#ifdef __cplusplus
}
#endif



