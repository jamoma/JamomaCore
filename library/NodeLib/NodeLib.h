/* 
 * Jamoma Tree
 * Copyright © 2008, Théo de la Hogue & Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTFoundationAPI.h"
#include "Jamoma.h"
#include "TTNode.h"
#include "TTNodeDirectory.h"

// statics and globals

/**	The Jamoma node directory				*/
extern TTNodeDirectoryPtr jamoma_directory;

#ifdef __cplusplus
extern "C" {
#endif

	/** Create and return the directory */
	TTNodeDirectoryPtr jamoma_directory_init(void);
	
	
	/** Free the directory */
	TTErr			jamoma_directory_free(void);

	/** Dump all the OSC address of the directory in the max window */
	JamomaError		jamoma_directory_dump(void);

	/** Register an osc address in the directory

		Note : this is called 
				> in "hub_attr_setname" (in jcom.hub.cpp) to register the hub
				> in "hub_subscribe" (in jcom.hub.cpp) to register a param	*/
	JamomaError		jamoma_directory_register(t_symbol *OSCaddress, t_symbol *type, t_object *obj, TTNodePtr *newTTNode, bool *newInstanceCreated);

	/** Unregister an osc address in the directory */
	TTErr			jamoma_directory_unregister(t_symbol *OSCaddress);

	/** Get the node(s) at the given address (with wildcard too) */
	JamomaError		jamoma_directory_get_node(t_symbol *address, TTList& returnedTTNodes, TTNodePtr *firstReturnedTTNode);
	
	/** Get all parameters below the given address (with wildcard too) */
	JamomaError		jamoma_directory_get_node_by_type(t_symbol *addressToStart, t_symbol *type, TTList& returnedTTNodes, TTNodePtr *firstReturnedTTNode);
	bool			testTTNodeType(TTNodePtr n, void *args);
	
	/** Return the OSC address of a node */
	t_symbol *		jamoma_node_OSC_address(TTNodePtr node);

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
	JamomaError		jamoma_node_children(TTNodePtr node, TTList& lk_children);

	/** Return the Max object of a node */
	t_object*		jamoma_node_max_object(TTNodePtr node);

	/** Return all properties of a node */
	JamomaError		jamoma_node_properties(TTNodePtr node, TTList& lk_prp);

	/** Add a property to a node as a key in the hashtab (without value) */
	JamomaError		jamoma_node_add_property(TTNodePtr node, t_symbol *property);
	
	/** TODO: Get the value of a property of a node */
	JamomaError		jamoma_node_get_property(TTNodePtr node, t_symbol *property, long *argc, t_atom **argv);
	
	/** TODO : This method is called by the TTNode to get the property of the object (depending on the type of the object and the propertie) */
	void			jamoma_node_get_property_method(TTNodePtr node, TTSymbolPtr propertie, TTValuePtr *value);
	
	/** TODO : Set the value of a property of a node */
	JamomaError		jamoma_node_set_property(TTNodePtr node, t_symbol *property, long argc, t_atom *argv);
	
	/** TODO : This method is called by the TTNode to set the property of the object (depending on the type of the object and the propertie) */
	void			jamoma_node_set_property_method(TTNodePtr node, TTSymbolPtr property, TTValuePtr value);

	/** Add an t_object as an observer of a node */
	void			jamoma_node_add_observer(TTNodePtr node, t_object *object, t_symbol *jps_method, TTObjectPtr *newCallBack);
	void			jamoma_node_callback(TTValuePtr baton, TTValue& data);

	/** Notify all observers of a node */
	void			jamoma_node_notify_observers(TTNodePtr node, long argc, t_atom *argv);

	/** Remove an observer of a node */
	void			jamoma_node_remove_observer(TTNodePtr node, TTObjectPtr oldCallback);



#ifdef __cplusplus
}
#endif



