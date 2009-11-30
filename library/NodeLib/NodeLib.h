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


/** Prototype of set and get methods
 A Max external have to give acces to those methods (or just one of them) to register an attribute */
typedef t_max_err	(*jamoma_node_get_property_method)(t_object *x, void *attr, long argc, t_atom *argv);
typedef t_max_err	(*jamoma_node_set_property_method)(t_object *x, void *attr, long argc, t_atom *argv);

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
	
	/** Add all attributes returned by the t_object as properties of the node 
		and prepare callbacks mecanism to get and set them */
	JamomaError		jamoma_node_add_properties(TTNodePtr node, t_object *object);
	
	/** Get the value of a property of a node */
	JamomaError		jamoma_node_get_property(TTNodePtr node, t_symbol *property, long *argc, t_atom **argv);
	
	/** Set the value of a property of a node */
	JamomaError		jamoma_node_set_property(TTNodePtr node, t_symbol *property, long argc, t_atom *argv);

	/** Return all properties of a node */
	JamomaError		jamoma_node_properties(TTNodePtr node, TTList& lk_prp);

	/** Add an t_object as an observer of a node */
	void			jamoma_node_add_observer(TTNodePtr node, t_object *object, t_symbol *jps_method, TTObjectPtr *newObserver);

	/** Notify all observers of a node */
	void			jamoma_node_notify_observers(TTNodePtr node, t_symbol* mess, long argc, t_atom *argv);

	/** Remove an observer of a node */
	void			jamoma_node_remove_observer(TTNodePtr node, TTObjectPtr oldCallback);

	/** Callback used to get data from a Max object external using public attr method */
	void			jamoma_node_getter_callback(TTPtr p_baton, TTValue& data);
	
	/** Callback used to set data from a Max object external using public attr method */
	void			jamoma_node_setter_callback(TTPtr p_baton, TTValue& data);
	
	/** Callback used to notify Max object external observer using private function
		void function(t_object *x, t_symbol *msg, long argc, t_atom *argv) */
	void			jamoma_node_observer_callback(TTPtr p_baton, TTValue& data);

#ifdef __cplusplus
}
#endif



