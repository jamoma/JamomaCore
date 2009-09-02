/* 
 * Jamoma Node Tree
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __JAMOMANODE_H__
#define __JAMOMANODE_H__

#include "Jamoma.h"
#include "NodeLib.h"
#include "JamomaMaxTypes.h"

// statics and globals
/**	The Jamoma node tree's root node - e.g. the container at the '/' address				*/
static NodePtr				jamoma_node_root = NULL;
/**	A fast lookup table that maps an entire address quickly and directly to a JamomaNode.	*/
static TTHashPtr			jamoma_node_directory = NULL;

#ifdef __cplusplus
extern "C" {
#endif

	/** Create a the root of the tree and/or return a pointer to the root */
	NodePtr			jamoma_node_init(void);

	/** Dump all the OSC address of the global hashtab in the max window */
	JamomaError		jamoma_node_dump(void);

	/** Register an osc address in the tree

		Note : this is called 
				> in "hub_attr_setname" (in jcom.hub.cpp) to register the hub
				> in "hub_subscribe" (in jcom.hub.cpp) to register a param	*/
	JamomaError		jamoma_node_register(t_symbol *OSCaddress, t_symbol *type, t_object *obj, NodePtr *newNode, bool *newInstanceCreated);

	/** Unregister an osc address in the tree */
	JamomaError		jamoma_node_unregister(t_symbol *OSCaddress);

	/** Get the node(s) at the given address (with wildcard too) */
	JamomaError jamoma_node_get(t_symbol *address, LinkedListPtr *returnedNodes, NodePtr *firstReturnedNode);

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

	/** Free the root of the tree and all the tree */
	JamomaError		jamoma_node_free(void);

#ifdef __cplusplus
}
#endif



