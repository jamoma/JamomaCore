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

TTAddressItem::TTAddressItem(TTSymbolRef aSymbol, TTAddressItemPtr aParent, TTBoolean aSelection):
symbol(kTTSymEmpty), parent(NULL), selection(NO)
{
	if (aSymbol) this->symbol = aSymbol;
	else this->symbol = kTTSymEmpty;
	
	this->parent = aParent;
	this->selection = aSelection;
}

TTAddressItem::~TTAddressItem()
{
	this->clear();
}

void TTAddressItem::setSelection(const TTBoolean newSelectionState, TTBoolean recursively)
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

void TTAddressItem::setParent(const TTAddressItemPtr newParent)
{
	this->parent = newParent;
}

TTSymbolRef TTAddressItem::getSymbol()
{
	return this->symbol;
}

TTAddressItemPtr TTAddressItem::getParent()
{
	return this->parent;
}

TTBoolean TTAddressItem::getSelection()
{
	return this->selection;
}

TTAddressItemPtr TTAddressItem::getItem(TTSymbolRef aSymbol)
{
	TTAddressItemPtr anItem = NULL;
	TTValue found;
	
	TTErr err = ((TTListPtr)this)->find(&TTAddressItemFind, (TTPtr)&aSymbol, found);
	
	if (!err)
		found.get(0, (TTPtr*)&anItem);
	
	return anItem;
}

void TTAddressItem::clear()
{
	// delete all items below
	for (this->begin(); this->end(); this->next())
		delete this->current();
	
	((TTListPtr)this)->clear();
}

TTErr TTAddressItem::append(TTAddressPtr addressToAppend, TTAddressItemPtr *returnedItem)
{
	TTAddressItemPtr	anItem = this;
	TTAddressItemPtr	nextItem;
	TTList					nameInstanceList;
	TTSymbolRef				nameInstance(kTTSymEmpty);
	
	addressToAppend->listNameInstance(nameInstanceList);
	
	for (nameInstanceList.begin(); nameInstanceList.end(); nameInstanceList.next()) {
		
		nameInstanceList.current().get(0, &nameInstance);
		
		nextItem = anItem->getItem(nameInstance);
		
		if (!nextItem) {
			nextItem = new TTAddressItem(nameInstance, anItem);
			((TTListPtr)anItem)->append((TTPtr)nextItem);
		}
		
		anItem = nextItem;
	}
	
	*returnedItem = anItem;
	return kTTErrNone;
}

TTErr TTAddressItem::remove(TTAddressPtr addressToRemove)
{
	TTAddressItemPtr	anItem;
	TTAddressItemPtr	parentItem;
	
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

TTErr TTAddressItem::find(TTAddressPtr addressToFind, TTAddressItemPtr *returnedItem)
{
	TTAddressItemPtr	anItem = this;
	TTAddressItemPtr	nextItem;
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

TTAddressItemPtr TTAddressItem::current()
{
	TTAddressItemPtr anItem;
	
	((TTListPtr)this)->current().get(0, (TTPtr*)&anItem);
	
	return anItem;
}

TTErr TTAddressItem::merge(const TTAddressItemPtr anItemToMerge)
{
	TTAddressItemPtr	anItem;
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

TTErr TTAddressItem::destroy(const TTAddressItemPtr anItemToRemove)
{
	TTAddressItemPtr	anItem;
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

TTBoolean TTAddressItem::exist(TTAddressItemPtr anItemToCheck, TTAddressItemPtr *returnedItem)
{
	TTAddressItemPtr	anItem;
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

void TTAddressItem::registerHandler(TTObject& anObject)
{
	TTValue v = TTValue(anObject);
	this->handlers.appendUnique(v);
}

void TTAddressItem::unregisterHandler(TTObject& anObject)
{
	TTValue v = TTValue(anObject);
	this->handlers.remove(v);
}

void TTAddressItem::iterateHandlersSendingMessage(TTSymbolRef messageName)
{
	this->handlers.iterateObjectsSendingMessage(messageName);
}

void TTAddressItem::iterateHandlersSendingMessage(TTSymbolRef messageName, TTValue& aValue)
{
	this->handlers.iterateObjectsSendingMessage(messageName, aValue);
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

///void TTAddressItemFind(const TTValue& itemValue, TTPtr aSymbolToMatch, TTBoolean& found)
void TTAddressItemFind(const TTValue& itemValue, TTSymbolRef aSymbolToMatch, TTBoolean& found)
{
	TTAddressItemPtr anItem;
	
	itemValue.get(0, (TTPtr*)&anItem);
	
	found = anItem->symbol == aSymbolToMatch;
}

#endif
