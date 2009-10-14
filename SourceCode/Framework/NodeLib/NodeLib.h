/* 
 * Jamoma Tree
 * Copyright © 2008, Théo de la Hogue & Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTFoundationAPI.h"
#include "Jamoma.h"
#include "Node.h"
#include "NodeDirectory.h"

// statics and globals

/**	The Jamoma node directory				*/
extern NodeDirectoryPtr jamoma_directory;

#ifdef __cplusplus
extern "C" {
#endif

	/** Create and return the directory */
	NodeDirectoryPtr jamoma_directory_init(void);
	
	
	/** Free the directory */
	JamomaError		jamoma_directory_free(void);

	/** Dump all the OSC address of the directory in the max window */
	JamomaError		jamoma_directory_dump(void);

	/** Register an osc address in the directory

		Note : this is called 
				> in "hub_attr_setname" (in jcom.hub.cpp) to register the hub
				> in "hub_subscribe" (in jcom.hub.cpp) to register a param	*/
	JamomaError		jamoma_directory_register(t_symbol *OSCaddress, t_symbol *type, t_object *obj, NodePtr *newNode, bool *newInstanceCreated);

	/** Unregister an osc address in the directory */
	JamomaError		jamoma_directory_unregister(t_symbol *OSCaddress);

	/** Get the node(s) at the given address (with wildcard too) */
	JamomaError		jamoma_directory_get_node(t_symbol *address, TTListPtr *returnedNodes, NodePtr *firstReturnedNode);
	
	/** Get all parameters below the given address (with wildcard too) */
	JamomaError		jamoma_directory_get_node_by_type(t_symbol *addressToStart, t_symbol *type, TTListPtr *returnedNodes, NodePtr *firstReturnedNode);
	bool			testNodeType(NodePtr n, void *args);

	/** Return the name of a node */
	t_symbol *		jamoma_node_name(NodePtr node);

	/** Set the name of a node
		@return		a new instance created (or NULL if not)	*/
	t_symbol *		jamoma_node_set_name(NodePtr node, t_symbol *name);

	/** Return the instance of a node*/
	t_symbol *		jamoma_node_instance(NodePtr node);

	/** Set the instance of a node
		@return		a new instance created (or NULL if not)	*/
	t_symbol *		jamoma_node_set_instance(NodePtr node, t_symbol *instance);

	/** Return the type of a node*/
	t_symbol *		jamoma_node_type(NodePtr node);

	/** Return all children of a node */
	TTListPtr		jamoma_node_children(NodePtr node);

	/** Return the Max object of a node */
	t_object*		jamoma_node_max_object(NodePtr node);

	/** Return all properties of a node */
	TTListPtr		jamoma_node_properties(NodePtr node);

	/** Add a propertie to a node as a key in the hashtab (without value) */
	JamomaError		jamoma_node_set_properties(NodePtr node, t_symbol *propertie);

#ifdef __cplusplus
}
#endif



