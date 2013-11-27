/*
 * TTAddressItem
 * Copyright © 2012, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef DISABLE_NODELIB

#include "TTFoundationAPI.h"
#include "TTAddressItem.h"

TTAddressItem::TTAddressItem(TTSymbol aSymbol, TTAddressItemPtr aParent, TTBoolean aSelection):
	symbol(kTTSymEmpty),
	parent(NULL),
    options(NULL),
	selection(NO)
{
	if (aSymbol)
		this->symbol = aSymbol;
	else
		this->symbol = kTTSymEmpty;
	
	this->parent = aParent;
    this->options = new TTList();
	this->selection = aSelection;
}

TTAddressItem::~TTAddressItem()
{
	this->clear();
    delete this->options;
}

void TTAddressItem::setSelection(const TTBoolean newSelectionState, TTBoolean recursively)
{
	// filter repetitions
	if (newSelectionState != this->selection)
		this->selection = newSelectionState;
	
	// propagate below if needed (not to option)
	if (recursively)
		for (this->begin(); this->end(); this->next())
			this->current()->setSelection(newSelectionState, recursively);
	
	// propagate to parent if selection is YES
	if (newSelectionState && this->parent)
		this->parent->setSelection(newSelectionState, NO);
}

void TTAddressItem::setParent(const TTAddressItemPtr newParent)
{
	this->parent = newParent;
}

TTSymbol TTAddressItem::getSymbol()
{
	return this->symbol;
}

TTAddressItemPtr TTAddressItem::getParent()
{
	return this->parent;
}

TTListPtr TTAddressItem::getOptions()
{
	return this->options;
}

TTBoolean TTAddressItem::getSelection()
{
	return this->selection;
}

TTAddressItemPtr TTAddressItem::getItem(TTSymbol aSymbol)
{
	TTAddressItemPtr anItem = NULL;
	TTValue found;
	
	TTErr err = ((TTListPtr)this)->find(&TTAddressItemFind, aSymbol.rawpointer(), found);
	
	if (!err)
		anItem = TTAddressItemPtr((TTPtr)found[0]);
	
	return anItem;
}

void TTAddressItem::clear()
{
	// delete all items below
	for (this->begin(); this->end(); this->next())
		delete this->current();
	
	((TTListPtr)this)->clear();
    
    this->options->clear();
}

TTErr TTAddressItem::append(TTAddress addressToAppend, TTAddressItemPtr *returnedItem)
{
	TTAddressItemPtr	anItem = this;
	TTAddressItemPtr	nextItem;
	TTList				nameInstanceList;
	TTSymbol			nameInstance(kTTSymEmpty);
	
	addressToAppend.listNameInstance(nameInstanceList);
	
	for (nameInstanceList.begin(); nameInstanceList.end(); nameInstanceList.next()) {
		nameInstance = nameInstanceList.current()[0];
		
		nextItem = anItem->getItem(nameInstance);
		
		if (!nextItem) {
			nextItem = new TTAddressItem(nameInstance, anItem);
			((TTListPtr)anItem)->append((TTPtr)nextItem);
		}
		
		anItem = nextItem;
	}
    
    anItem->options->appendUnique(addressToAppend.getAttribute());
	
	*returnedItem = anItem;
	return kTTErrNone;
}

TTErr TTAddressItem::remove(TTAddress addressToRemove)
{
	TTAddressItemPtr anItem, parentItem;
	
	// if the item exist
	if (!this->find(addressToRemove, &anItem)) {
		
        // remove option (even empty option)
        anItem->options->remove(addressToRemove.getAttribute());
        
        // if there no more options
        if (anItem->options->isEmpty()) {
            
            // destroy upper parents if there are empty after removing the item
            do {
               
                parentItem = anItem->getParent();
                ((TTListPtr)parentItem)->remove((TTPtr)anItem);
                destroy(anItem);
                
                anItem = parentItem;
                
            } while (anItem->isEmpty()) ;
        }
			
		return kTTErrNone;
	}
	
	return kTTErrValueNotFound;
}

TTErr TTAddressItem::find(TTAddress addressToFind, TTAddressItemPtr *returnedItem)
{
	TTAddressItemPtr	anItem = this;
	TTAddressItemPtr	nextItem;
	TTList				nameInstanceList;
	TTSymbol			nameInstance(kTTSymEmpty);
    TTValue             v;
	
	addressToFind.listNameInstance(nameInstanceList);
    
    if (nameInstanceList.isEmpty())
        return kTTErrGeneric;
    
	for (nameInstanceList.begin(); nameInstanceList.end(); nameInstanceList.next()) {
		
		nameInstance = nameInstanceList.current()[0];
		
		nextItem = anItem->getItem(nameInstance);
		
		if (!nextItem)
			return kTTErrValueNotFound;
		else
			anItem = nextItem;
	}
    
    if (anItem->options->isEmpty() && addressToFind.getAttribute() == NO_ATTRIBUTE) {
        *returnedItem = anItem;
        return kTTErrNone;
    }
	
    if (!anItem->options->findEquals(addressToFind.getAttribute(), v)) {
        
        *returnedItem = anItem;
        return kTTErrNone;
    }
    
    return kTTErrValueNotFound;
}

TTAddressItemPtr TTAddressItem::current()
{
	TTAddressItemPtr anItem;
	
	anItem = TTAddressItemPtr((TTPtr) ((TTListPtr)this)->current()[0]);
	
	return anItem;
}

TTErr TTAddressItem::merge(const TTAddressItemPtr anItemToMerge)
{
	TTAddressItemPtr	anItem;
	
	if (!anItemToMerge)
		return kTTErrGeneric;
	
    // check if the item exists
	anItem = this->getItem(anItemToMerge->symbol);
	
	if (!anItem) {
		anItemToMerge->copy(&anItem);
		((TTListPtr)this)->append((TTPtr)anItem);
		anItem->setParent(this);
        anItem->options->merge(*this->options);
	}
	else 
		for (anItemToMerge->begin(); anItemToMerge->end(); anItemToMerge->next())
			anItem->merge(anItemToMerge->current());
	
	return kTTErrNone;
}

TTErr TTAddressItem::destroy(const TTAddressItemPtr anItemToRemove)
{
    TTAddressItemPtr	anItem;
    
	if (!anItemToRemove)
		return kTTErrGeneric;
    
    // check if the item exists
    anItem = this->getItem(anItemToRemove->symbol);
	
	if (anItem) {
	
        for (anItem->begin(); anItem->end(); anItem->next())
            anItem->destroy(anItem->current());
    
        if (anItem->isEmpty()) {
            ((TTListPtr)this)->remove((TTPtr)anItem);
            delete anItem;
        }
	
        return kTTErrNone;
    }
    
    return kTTErrValueNotFound;
}

TTBoolean TTAddressItem::exist(TTAddressItemPtr anItemToCheck, TTAddressItemPtr *returnedItem)
{
	TTAddressItemPtr	anItem;
	TTBoolean			same = anItemToCheck->getSymbol() == this->symbol;

	if (same) {
		
		if (anItemToCheck->isEmpty()) {
			*returnedItem = this;
			return kTTErrNone;
		}
		
		*returnedItem = NULL;
		for (anItemToCheck->begin(); anItemToCheck->end(); anItemToCheck->next()) {
			for (this->begin(); this->end(); this->next()) {
			
				same = this->current()->exist(anItemToCheck->current(), &anItem);
				
				if (!same)
					break;
			}
		}
		
		if (same) {
			*returnedItem = anItem;
			return kTTErrNone;
		}
	}
	
	return same;
}

TTErr TTAddressItem::copy(TTAddressItemPtr *anItemCopy)
{
	TTAddressItemPtr anItem;
	
	if (!(*anItemCopy))
		*anItemCopy = new TTAddressItem(this->symbol, NULL, this->selection);
	
	for (this->begin(); this->end(); this->next()) {
		
		anItem = NULL;
		this->current()->copy(&anItem);
		
		anItem->setParent(*anItemCopy);
		
		(*anItemCopy)->merge(anItem);
	}
	return kTTErrNone;
}

void TTAddressItem::registerHandler(TTObjectBase& anObject)
{
	TTValue v = TTValue(anObject);
	this->handlers.appendUnique(v);
}

void TTAddressItem::unregisterHandler(TTObjectBase& anObject)
{
	TTValue v = TTValue(anObject);
	this->handlers.remove(v);
}

void TTAddressItem::iterateHandlersSendingMessage(TTSymbol messageName)
{
	this->handlers.iterateObjectsSendingMessage(messageName);
}

void TTAddressItem::iterateHandlersSendingMessage(TTSymbol messageName, TTValue& aValue)
{
	this->handlers.iterateObjectsSendingMessage(messageName, aValue);
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

///void TTAddressItemFind(const TTValue& itemValue, TTPtr aSymbolToMatch, TTBoolean& found)
void TTAddressItemFind(const TTValue& itemValue, TTPtr aSymbolBaseToMatch, TTBoolean& found)
{
	TTAddressItemPtr anItem;
	
	anItem = TTAddressItemPtr((TTPtr)itemValue[0]);
	
	found = anItem->getSymbol() == TTSymbol(aSymbolBaseToMatch);
}

#endif
