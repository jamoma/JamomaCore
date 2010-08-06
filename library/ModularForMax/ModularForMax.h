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
#include "TTModular.h"
#include "TTSubscriber.h"

#ifdef __cplusplus
extern "C" {
#endif


	// Method to deal with the jamoma directory
	/////////////////////////////////////////
	
	/** Free the directory */
	TTErr			jamoma_directory_free(void);

	/** Dump all the OSC address of the directory in the max window */
	TTErr			jamoma_directory_dump(void);
	TTErr			jamoma_directory_dump_by_type(void);

	/** Get the node(s) at the given address (with wildcard too) */
	TTErr			jamoma_directory_get_node(TTSymbolPtr address, TTList& returnedTTNodes, TTNodePtr *firstReturnedTTNode);
	
	/** Get all parameters below the given address (with wildcard too) */
	TTErr			jamoma_directory_get_node_by_type(TTSymbolPtr addressToStart, TTSymbolPtr type, TTList& returnedTTNodes, TTNodePtr *firstReturnedTTNode);
	bool			testTTNodeType(TTNodePtr n, void *args);
	
	
	// Method to deal with a node
	////////////////////////////////////
	
	/** Return the OSC address of a node */
	TTSymbolPtr		jamoma_node_OSC_address(TTNodePtr node);

	/** Set the name of a node
		@return		a new instance created (or NULL if not)	*/
	TTSymbolPtr		jamoma_node_set_name(TTNodePtr node, t_symbol *name);

	/** Set the instance of a node
		@return		a new instance created (or NULL if not)	*/
	TTSymbolPtr		jamoma_node_set_instance(TTNodePtr node, t_symbol *instance);

	/** Return the type of a node*/
	TTSymbolPtr		jamoma_node_type(TTNodePtr node);

	/** Return all children of a node */
	TTErr			jamoma_node_children(TTNodePtr node, TTList& lk_children);
	
	
	// Method to deal with the attributes of a node
	////////////////////////////////////////////////////

	/** Add an TTObject as an observer of an attribute of a node */
	void			jamoma_node_attribute_observer_add(TTNodePtr node, TTSymbolPtr attrname, TTObjectPtr object, void* method, TTObjectPtr *returnedObserver);
	
	/** Remove an observer of an attribute of a node */
	void			jamoma_node_attribute_observer_remove(TTNodePtr node, TTSymbolPtr attrname, TTObjectPtr oldObserver);

	
	// Method to deal with TTSubscriber
	///////////////////////////////////////////////////////////////////////
	
	/**	Create a subscriber object and register an object to the tree */
	TTErr			jamoma_subscriber_create(ObjectPtr x, TTObjectPtr aTTObject, SymbolPtr relativeAddress,  TTSubscriberPtr *returnedSubscriber);
	
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
	TTErr			jamoma_container_create(ObjectPtr x, TTObjectPtr *returnedContainer);
	
	/**	Send Max data using a container object */
	TTErr			jamoma_container_send(TTContainerPtr aContainer, SymbolPtr relativeAddress, AtomCount argc, AtomPtr argv);
	
	
	// Method to deal with TTParameter
	///////////////////////////////////////////////////////////////////////
	
	/**	Create a parameter object */
	TTErr			jamoma_parameter_create(ObjectPtr x, TTObjectPtr *returnedParameter);
	
	/**	Send Max data command */
	TTErr			jamoma_parameter_command(TTParameterPtr aParameter, SymbolPtr msg, AtomCount argc, AtomPtr argv);
	
	
	// Method to deal with TTSender
	///////////////////////////////////////////////////////////////////////
	
	/**	Create a sender object */
	TTErr			jamoma_sender_create(ObjectPtr x, SymbolPtr addressAndAttribute, TTObjectPtr *returnedSender);
	
	/**	Send Max data using a sender object */
	TTErr			jamoma_sender_send(TTSenderPtr aSender, SymbolPtr msg, AtomCount argc, AtomPtr argv);
	
	
	// Method to deal with TTReceiver
	///////////////////////////////////////////////////////////////////////
	
	/**	Create a receiver object */
	TTErr			jamoma_receiver_create(ObjectPtr x, SymbolPtr addressAndAttribute, TTObjectPtr *returnedReceiver);
	
	
	// Method to deal with TTPresetManager
	///////////////////////////////////////////////////////////////////////
	
	/**	Create a container object */
	TTErr			jamoma_presetManager_create(ObjectPtr x, TTObjectPtr *returnedPresetManager);
	
	
	// Method to deal with TTMapper
	///////////////////////////////////////////////////////////////////////
	
	/**	Create a mapper object */
	TTErr			jamoma_mapper_create(ObjectPtr x, TTObjectPtr *returnedMapper);
	
	
	// Method to deal with TTExplorer
	///////////////////////////////////////////////////////////////////////
	
	/**	Create an explorer object */
	TTErr			jamoma_explorer_create(ObjectPtr x, TTObjectPtr *returnedExplorer);
	

	// Method to deal with TTDeviceManager
	///////////////////////////////////////////////////////////////////////
	
	/**	Create a deviceManager object */
	TTErr			jamoma_deviceManager_create(ObjectPtr x, SymbolPtr name, TTObjectPtr *returnedDeviceManager);
	
	
	// Method to return data
	///////////////////////////////////////////////////////////////////////
	
	/** Return an address to a jcom. external */
	void			jamoma_callback_return_address(TTPtr p_baton, TTValue& data);
	
	
	/** Return the value to a jcom. external */
	void			jamoma_callback_return_value(TTPtr p_baton, TTValue& v);
	
	
	// Tools
	///////////////////////////////////////////////
	
	/** Make a Atom array from a TTValue (!!! this method allocate memory for the Atom array ! free it after ! */
	void			jamoma_ttvalue_to_Atom(const TTValue& v, SymbolPtr *msg, AtomCount *argc, AtomPtr *argv);
	
	/** Make a TTValue from Atom array */
	void			jamoma_ttvalue_from_Atom(TTValue& v, SymbolPtr msg, AtomCount argc, AtomPtr argv);
	
	/** Convert a TTSymbolPtr "MyObjectMessage" into a SymbolPtr "my/object/message" 
		or return NULL if the TTSymbolPtr doesn't begin by an uppercase letter */
	SymbolPtr		jamoma_TTName_To_MaxName(TTSymbolPtr TTName);
	
	/** Get the Context Node of relative to a jcom.external */
	TTNodePtr		jamoma_context_node_get(ObjectPtr x);
	
#ifdef __cplusplus
}
#endif



