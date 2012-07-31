/* 
 * TTNodeAddressItem
 * Copyright © 2012, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#if !defined( __TT_NODE_ADDRESS_ITEM_H__ ) && !defined ( DISABLE_NODELIB )
#define __TT_NODE_ADDRESS_ITEM_H__

#ifdef WIN_VERSION
 #pragma warning(disable:4083) //warning C4083: expected 'newline'; found identifier 's'
#endif // WIN_VERSION

#include "TTList.h"
#include "TTNodeAddress.h"

class TTNodeAddressItem;
typedef TTNodeAddressItem*	TTNodeAddressItemPtr;

/****************************************************************************************************/
// Class Specifications

/**
 
 */

class TTFOUNDATION_EXPORT TTNodeAddressItem : public TTList
{
	
private:
	
	TTSymbolPtr					symbol;					// any symbol
	TTNodeAddressItemPtr		parent;					// the parent item
	TTBoolean					selection;				// selection state of the item
	TTList						handlers;				// list of all TTObject handling the item
	
public:
	
	/** Constructor */
	TTNodeAddressItem (TTSymbolPtr aSymbol=NULL, TTNodeAddressItemPtr aParent=NULL, TTBoolean aSelection=NO);
	
	/** Destructor */
	virtual ~TTNodeAddressItem ();
	
	/** Set the parent of the item
	 @param	newParent					a namespace item pointer
	 @return							a error code	*/
	void						setParent(const TTNodeAddressItemPtr newParent);

	/** Set the selection state of the item
		@param	newSelectionState		YES to select the item
		@return							a error code	*/
	void						setSelection(const TTBoolean newSelectionState, TTBoolean recursively=NO);

	/** Get the symbol of the item */
	TTSymbolPtr					getSymbol();
	
	/** Get the parent of the item */
	TTNodeAddressItemPtr		getParent();
	
	/** Get the selection state of the item */
	TTBoolean					getSelection();
	
	/** Get an Item below this item */
	TTNodeAddressItemPtr		getItem(TTSymbolPtr aSymbol);
	
	/** Overwrite the TTList::clear() method to delete all items below */
	void						clear();
	
	/** Overwrite the TTList::append() method to append a node address */
	TTErr						append(TTNodeAddressPtr addressToAppend, TTNodeAddressItemPtr *returnedItem);
	
	/** Overwrite the TTList::remove() method to remove a node address */
	TTErr						remove(TTNodeAddressPtr addressToRemove);
	
	/** Overwrite the TTList::current() method to access directly to the current item */
	TTNodeAddressItemPtr		current();
	
	/** Overwrite the TTList::find() method to find a node address
		Note : if it fails, it returns the TTNodeAddressItem where the find fails */
	TTErr						find(TTNodeAddressPtr addressToFind, TTNodeAddressItemPtr *returnedItem);
	
	/** Merge an item */
	TTErr						merge(const TTNodeAddressItemPtr anItemToAppend);
	
	/** Destroy an item and his parent if he's empty */
	TTErr						destroy(const TTNodeAddressItemPtr anItemToRemove);
	
	/** Check if a similar item exist and returns the last tested item */
	TTBoolean					exist(TTNodeAddressItemPtr anItemToCheck, TTNodeAddressItemPtr *returnedItem);

	/** Copy the item into a given item */
	TTErr						copy(TTNodeAddressItemPtr *anItemCopy);
	
	/** Register a TTObject handler */
	void						registerHandler(TTObject& anObject);
	
	/** Unregister a TTObject handler */
	void						unregisterHandler(TTObject& anObject);
	
	/** Send a message to all handlers */
	void						iterateHandlersSendingMessage(TTSymbolPtr messageName);
	void						iterateHandlersSendingMessage(TTSymbolPtr messageName, TTValue& aValue);
	
	friend void TTFOUNDATION_EXPORT TTNodeAddressItemFind(const TTValue& itemValue, TTPtr itemPtrToMatch, TTBoolean& found);
};

/* a TTFunctionMatch to find an item */
void TTFOUNDATION_EXPORT TTNodeAddressItemFind(const TTValue& itemValue, TTPtr aSymbolToMatch, TTBoolean& found);

	
#endif // __TT_NODE_ADDRESS_ITEM_H__
