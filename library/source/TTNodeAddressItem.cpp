/*
 * TTNodeAddressItem
 * Copyright © 2012, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef DISABLE_NODELIB

#include "TTFoundationAPI.h"
#include "TTNodeAddressItem.h"

TTNodeAddressItem::TTNodeAddressItem(TTSymbolRef aSymbol, TTNodeAddressItemPtr aParent, TTBoolean aSelection):
symbol(kTTSymEmpty), parent(NULL), selection(NO)
{
	if (aSymbol) this->symbol = aSymbol;
	else this->symbol = kTTSymEmpty;
	
	this->parent = aParent;
	this->selection = aSelection;
}

TTNodeAddressItem::~TTNodeAddressItem()
{
	this->clear();
}

void TTNodeAddressItem::setSelection(const TTBoolean newSelectionState, TTBoolean recursively)
{
	// filter repetitions
	if (newSelectionState != this->selection)
		this->selection = newSelectionState;
	
	// propagate below if needed
	if (recursively)
		for (this->begin(); this->end(); this->next())
			this->current()->setSelection(newSelectionState, recursively);
	
	// propagate to parent if selection is YES
	if (newSelectionState && this->parent)
		this->parent->setSelection(newSelectionState, NO);
}

void TTNodeAddressItem::setParent(const TTNodeAddressItemPtr newParent)
{
	this->parent = newParent;
}

TTSymbolRef TTNodeAddressItem::getSymbol()
{
	return this->symbol;
}

TTNodeAddressItemPtr TTNodeAddressItem::getParent()
{
	return this->parent;
}

TTBoolean TTNodeAddressItem::getSelection()
{
	return this->selection;
}

TTNodeAddressItemPtr TTNodeAddressItem::getItem(TTSymbolRef aSymbol)
{
	TTNodeAddressItemPtr anItem = NULL;
	TTValue found;
	
	TTErr err = ((TTListPtr)this)->find(&TTNodeAddressItemFind, (TTPtr)&aSymbol, found);
	
	if (!err)
		found.get(0, (TTPtr*)&anItem);
	
	return anItem;
}

void TTNodeAddressItem::clear()
{
	// delete all items below
	for (this->begin(); this->end(); this->next())
		delete this->current();
	
	((TTListPtr)this)->clear();
}

TTErr TTNodeAddressItem::append(TTNodeAddressPtr addressToAppend, TTNodeAddressItemPtr *returnedItem)
{
	TTNodeAddressItemPtr	anItem = this;
	TTNodeAddressItemPtr	nextItem;
	TTList					nameInstanceList;
	TTSymbolRef				nameInstance(kTTSymEmpty);
	
	addressToAppend->listNameInstance(nameInstanceList);
	
	for (nameInstanceList.begin(); nameInstanceList.end(); nameInstanceList.next()) {
		
		nameInstanceList.current().get(0, &nameInstance);
		
		nextItem = anItem->getItem(nameInstance);
		
		if (!nextItem) {
			nextItem = new TTNodeAddressItem(nameInstance, anItem);
			((TTListPtr)anItem)->append((TTPtr)nextItem);
		}
		
		anItem = nextItem;
	}
	
	*returnedItem = anItem;
	return kTTErrNone;
}

TTErr TTNodeAddressItem::remove(TTNodeAddressPtr addressToRemove)
{
	TTNodeAddressItemPtr	anItem;
	TTNodeAddressItemPtr	parentItem;
	
	// if the item exist
	if (!this->find(addressToRemove, &anItem)) {
		
		do {
			parentItem = anItem->getParent();
			((TTListPtr)parentItem)->remove((TTPtr)anItem);
			delete anItem;
			
			if (!parentItem) 
				break;
			
		} while (parentItem->isEmpty());
			
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTErr TTNodeAddressItem::find(TTNodeAddressPtr addressToFind, TTNodeAddressItemPtr *returnedItem)
{
	TTNodeAddressItemPtr	anItem = this;
	TTNodeAddressItemPtr	nextItem;
	TTList					nameInstanceList;
	TTSymbolRef				nameInstance(kTTSymEmpty);
	
	addressToFind->listNameInstance(nameInstanceList);
	
	for (nameInstanceList.begin(); nameInstanceList.end(); nameInstanceList.next()) {
		
		nameInstanceList.current().get(0, &nameInstance);
		
		nextItem = anItem->getItem(nameInstance);
		
		if (!nextItem)
			break;
		else
			anItem = nextItem;
	}
	
	if (anItem != this) {
		*returnedItem = anItem;
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

TTNodeAddressItemPtr TTNodeAddressItem::current()
{
	TTNodeAddressItemPtr anItem;
	
	((TTListPtr)this)->current().get(0, (TTPtr*)&anItem);
	
	return anItem;
}

TTErr TTNodeAddressItem::merge(const TTNodeAddressItemPtr anItemToMerge)
{
	TTNodeAddressItemPtr	anItem;
	//TTErr					err;
	
	if (!anItemToMerge)
		return kTTErrGeneric;
	
	anItem = this->getItem(anItemToMerge->symbol);
	
	if (!anItem) {
		anItemToMerge->copy(&anItem);
		((TTListPtr)this)->append((TTPtr)anItem);
		anItem->setParent(this);
	}
	else 
		for (anItemToMerge->begin(); anItemToMerge->end(); anItemToMerge->next())
			anItem->merge(anItemToMerge->current());
	
	return kTTErrNone;
}

TTErr TTNodeAddressItem::destroy(const TTNodeAddressItemPtr anItemToRemove)
{
	TTNodeAddressItemPtr	anItem;
	//TTErr					err;
	
	if (!anItemToRemove)
		return kTTErrGeneric;
	
	anItem = this->getItem(anItemToRemove->symbol);
	
	if (anItem) {
		
		for (anItemToRemove->begin(); anItemToRemove->end(); anItemToRemove->next())
			anItem->destroy(anItemToRemove->current());
		
		if (anItem->isEmpty()) {
			((TTListPtr)this)->remove((TTPtr)anItem);
			delete anItem;
		}
	}
	
	return kTTErrNone;
}

TTBoolean TTNodeAddressItem::exist(TTNodeAddressItemPtr anItemToCheck, TTNodeAddressItemPtr *returnedItem)
{
	TTNodeAddressItemPtr	anItem;
	TTBoolean				same = anItemToCheck->getSymbol() == this->symbol;

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

TTErr TTNodeAddressItem::copy(TTNodeAddressItemPtr *anItemCopy)
{
	TTNodeAddressItemPtr anItem;
	
	if (!(*anItemCopy))
		*anItemCopy = new TTNodeAddressItem(this->symbol, NULL, this->selection);
	
	for (this->begin(); this->end(); this->next()) {
		
		anItem = NULL;
		this->current()->copy(&anItem);
		
		anItem->setParent(*anItemCopy);
		
		(*anItemCopy)->merge(anItem);
	}
	return kTTErrNone;
}

void TTNodeAddressItem::registerHandler(TTObject& anObject)
{
	TTValue v = TTValue(anObject);
	this->handlers.appendUnique(v);
}

void TTNodeAddressItem::unregisterHandler(TTObject& anObject)
{
	TTValue v = TTValue(anObject);
	this->handlers.remove(v);
}

void TTNodeAddressItem::iterateHandlersSendingMessage(TTSymbolRef messageName)
{
	this->handlers.iterateObjectsSendingMessage(messageName);
}

void TTNodeAddressItem::iterateHandlersSendingMessage(TTSymbolRef messageName, TTValue& aValue)
{
	this->handlers.iterateObjectsSendingMessage(messageName, aValue);
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

///void TTNodeAddressItemFind(const TTValue& itemValue, TTPtr aSymbolToMatch, TTBoolean& found)
void TTNodeAddressItemFind(const TTValue& itemValue, TTSymbolRef aSymbolToMatch, TTBoolean& found)
{
	TTNodeAddressItemPtr anItem;
	
	itemValue.get(0, (TTPtr*)&anItem);
	
	found = anItem->symbol == aSymbolToMatch;
}

#endif
