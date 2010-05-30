/* 
 * Jamoma Tree
 * Copyright © 2008, Théo de la Hogue & Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "Jamoma.h"
#include "TTNode.h"
#include "TTNodeDirectory.h"
#include "TTSubscriber.h"

// statics and globals

/**	The Jamoma node directory				*/
extern TTNodeDirectoryPtr jamoma_directory;

#ifdef __cplusplus
extern "C" {
#endif

	// Method to deal with the jamoma directory
	/////////////////////////////////////////
	
	/** Create and return the directory */
	TTNodeDirectoryPtr jamoma_directory_init(void);
	
	/** Free the directory */
	TTErr			jamoma_directory_free(void);

	/** Dump all the OSC address of the directory in the max window */
	JamomaError		jamoma_directory_dump(void);
	JamomaError		jamoma_directory_dump_by_type(void);
	
	/** Add an t_object as a life cycle observer */
	void			jamoma_directory_observer_add(t_symbol *OSCaddress, t_object *object, t_symbol *jps_method, TTObjectPtr *returnedObserver);
	
	/** Remove a life cycle observer */
	void			jamoma_directory_observer_remove(t_symbol *OSCaddress, TTObjectPtr oldObserver);

	/** Get the node(s) at the given address (with wildcard too) */
	JamomaError		jamoma_directory_get_node(t_symbol *address, TTList& returnedTTNodes, TTNodePtr *firstReturnedTTNode);
	
	/** Get all parameters below the given address (with wildcard too) */
	JamomaError		jamoma_directory_get_node_by_type(t_symbol *addressToStart, t_symbol *type, TTList& returnedTTNodes, TTNodePtr *firstReturnedTTNode);
	bool			testTTNodeType(TTNodePtr n, void *args);
	
	
	// Method to deal with a node
	////////////////////////////////////
	
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
	
	
	// Method to deal with the attributes of a node
	////////////////////////////////////////////////////
	
	/** Return all attributes of a node */
	JamomaError		jamoma_node_attribute_list(TTNodePtr node, TTValue& attrlist);
		
	/** Prepare an attribute access pack <attribute, aGetterCallback, aSetterCallback> for a t_object */
	JamomaError		jamoma_node_attribute_access_pack(t_symbol *attrname, t_object *object, TTValuePtr *attributeAccessPack);
	
	/** Get the value of a attribute of a node */
	JamomaError		jamoma_node_attribute_get(TTNodePtr node, t_symbol *attrname, long *argc, t_atom **argv);
	
	/** Set the value of a attribute of a node */
	JamomaError		jamoma_node_attribute_set(TTNodePtr node, t_symbol *attrname, long argc, t_atom *argv);

	/** Add an t_object as an observer of an attribute of a node */
	void			jamoma_node_attribute_observer_add(TTNodePtr node, t_symbol *attrname, t_object *object, t_symbol *jps_method, TTObjectPtr *returnedObserver);

	/** Notify all observers of an attribute of a node */
	void			jamoma_node_attribute_observer_notify(TTNodePtr node, t_symbol *attrname, t_symbol* mess, long argc, t_atom *argv);
	
	/** Remove an observer of an attribute of a node */
	void			jamoma_node_attribute_observer_remove(TTNodePtr node, t_symbol *attrname, TTObjectPtr oldCallback);

	
	// Callbacks called when the directory or a node 
	// have to notify his observers (life cycle and attribute observers)
	///////////////////////////////////////////////////////////////////////
	
	/** Callback used to notify Max object external life cycle observer using private function
	 void function(t_object *x, t_symbol *msg, long argc, t_atom *argv) */
	void			jamoma_directory_observer_callback(TTPtr p_baton, TTValue& data);
	
	/** Callback used to get data from a Max object external using public attr method */
	void			jamoma_node_getter_callback(TTPtr p_baton, TTValue& data);
	
	/** Callback used to set data of a Max object external using public attr method */
	void			jamoma_node_setter_callback(TTPtr p_baton, TTValue& data);
	
	/** Callback used to set value of a jcom.parameter external usng the dispatched method */
	void			jamoma_node_setter_value_callback(TTPtr p_baton, TTValue& data);
	
	/** Callback used to notify Max object external attribute observer using private function
		void function(t_object *x, t_symbol *msg, long argc, t_atom *argv) */
	void			jamoma_node_attribute_observer_callback(TTPtr p_baton, TTValue& data);

	
	// Method to deal with TTSubscriber
	///////////////////////////////////////////////////////////////////////
	
	/**	Create a subscriber object and register an object to the tree */
	JamomaError		jamoma_subscriber_create(ObjectPtr x, TTObjectPtr aTTObject, SymbolPtr relativeAddress,  TTSubscriberPtr *returnedSubscriber);
	
	/** Share the context node between subscribed object
		To understand how this method have to work see in TTSubscriber.h and .cpp */
	void			jamoma_subscriber_share_context_node(TTPtr p_baton, TTValue& data);
	
	/** Get the context list above a subscribed object
	 To understand how this method have to work see in TTSubscriber.h and .cpp */
	void			jamoma_subscriber_get_context_list(TTPtr p_baton, TTValue& data);
	
	/** Look recursively to every jmod.contextPatcher above an object in order to know his place in the tree
	 note : a contextPatcher is a patcher named [jmod.something otherName] 
	 return a <formatedContextName, patcher> list 
	 To understand how this method have to work see in TTSubscriber.h and .cpp */
	void			jamoma_subscriber_get_context_list_method(ObjectPtr z, TTListPtr aContextList, long *nbLevel);
	
	
	// Method to deal with TTContainer
	///////////////////////////////////////////////////////////////////////
	
	/**	Create a container object */
	JamomaError		jamoma_container_create(ObjectPtr x, TTObjectPtr *returnedContainer);
	
	
	// Method to deal with TTParameter
	///////////////////////////////////////////////////////////////////////
	
	/**	Create a parameter object */
	JamomaError		jamoma_parameter_create(ObjectPtr x, TTObjectPtr *returnedParameter);
	
	
	// Method to deal with TTSender
	///////////////////////////////////////////////////////////////////////
	
	/**	Create a sender object */
	JamomaError		jamoma_sender_create(ObjectPtr x, SymbolPtr addressAndAttribute, TTObjectPtr *returnedSender);
	
	/**	Send Max data using a sender object */
	JamomaError		jamoma_sender_send(TTSenderPtr aSender, SymbolPtr msg, AtomCount argc, AtomPtr argv);
	
	
	// Method to deal with TTReceiver
	///////////////////////////////////////////////////////////////////////
	
	/**	Create a receiver object */
	JamomaError		jamoma_receiver_create(ObjectPtr x, SymbolPtr addressAndAttribute, TTObjectPtr *returnedReceiver);
	
	/** Return the address to a jcom.receive external */
	void			jamoma_receiver_return_address(TTPtr p_baton, TTValue& data);
	
	
	// Method to return data
	///////////////////////////////////////////////////////////////////////
	
	/** Return the value to a jcom. external */
	void			jamoma_callback_return_value(TTPtr p_baton, TTValue& v);
	
#ifdef __cplusplus
}
#endif



