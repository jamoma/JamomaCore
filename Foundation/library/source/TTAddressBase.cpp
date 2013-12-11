/*
 * TTAddressBase
 * Copyright © 2011, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef DISABLE_NODELIB

#include "TTFoundationAPI.h"

#if BOOST_REGEX
#include <boost/regex.hpp>
using namespace boost;
#else
#include <regex>
using namespace std;
#endif

TTFOUNDATION_EXPORT TTRegex* ttRegexForDirectory = NULL;
TTFOUNDATION_EXPORT TTRegex* ttRegexForAttribute = NULL;
TTFOUNDATION_EXPORT TTRegex* ttRegexForParent = NULL;	
TTFOUNDATION_EXPORT TTRegex* ttRegexForInstance = NULL;

TTAddressBase::TTAddressBase(const TTString& newAddressString, TTPtrSizedInt newAddressTableId, TTInt32 newId) :
	TTSymbolBase(newAddressString, newAddressTableId, newId),
	directory(NO_DIRECTORY),
	parent(NO_PARENT.getBasePointer()),
	name(NO_NAME),
	instance(NO_INSTANCE),
	attribute(NO_ATTRIBUTE),
	parsed(NO)
{
    this->init(newAddressString, newAddressTableId, newId);
}

TTAddressBase::~TTAddressBase()
{
	;
}

TTSymbol TTAddressBase::getDirectory()
{
	if (!parsed)
		parse();
	return directory;
}

TTAddressBase* TTAddressBase::getParent()
{
	if (!parsed)
		parse();
	return parent;
}

TTSymbol TTAddressBase::getName()
{
	if (!parsed)
		parse();
	return name;
}

TTSymbol TTAddressBase::getInstance()
{
	if (!parsed)
		parse();
	return instance;
}

TTSymbol TTAddressBase::getAttribute()
{
	if (!parsed)
		parse();
	return this->attribute;
}

TTAddressType TTAddressBase::getType()
{
	if (!parsed)
		parse();
	return type;
}

TTSymbol	TTAddressBase::getNameInstance()
{
	TTSymbol nameInstanceSymbol = this->getName();
	TTString nameInstance = nameInstanceSymbol.c_str();
	
	if (this->getInstance() != NO_INSTANCE) {
		nameInstance += C_INSTANCE;
		nameInstance +=  this->getInstance().c_str();
	}
	
	return TTSymbol(nameInstance);
}

TTAddressBase* TTAddressBase::normalize()
{
	if (!parsed)
		parse();
	
    return this->normalized;
}

TTAddressBase* TTAddressBase::removeAttribute()
{
	if (!parsed)
		parse();
	
	if (attribute != NO_ATTRIBUTE)
		return edit(this->directory, this->parent, this->name, this->instance, NO_ATTRIBUTE);
	else
		return this;
}

TTAddressBase* TTAddressBase::appendAttribute(TTSymbol& anAttribute)
{
	if (!parsed)
		parse();
	
	return edit(this->directory, this->parent, this->name, this->instance, anAttribute);
}

TTAddressBase* TTAddressBase::appendAddress(TTAddressBase* toAppend)
{
	if (*toAppend == kTTAdrsEmpty || *toAppend == kTTAdrsRoot)
		return this;
	
	else if (this == kTTAdrsEmpty)
		return toAppend;
	
	TTString tmp = this->getCString();

	// insert a / if the first part is not the root and the address to append is not absolute
	if (*this != kTTAdrsRoot  &&  toAppend->getType() != kAddressAbsolute  &&  toAppend->getName() != NO_NAME) {
		tmp += C_SEPARATOR;
		tmp += toAppend->getCString();
	}
	
	// just keep the the second part if the first part is the root and the address to append is absolute
	else if (this == kTTAdrsRoot && toAppend->getType() == kAddressAbsolute)
		return toAppend;
	
	// else append the address
	else
		tmp += toAppend->getCString();
	
	return (TTAddressBase*)gTTAddressTable.lookup(tmp.data()); // TTADRS(tmp.data());
}

TTAddressBase* TTAddressBase::appendInstance(const TTSymbol& anInstance)
{
	if (!parsed)
		parse();
	return edit(this->directory, this->parent, this->name, anInstance, this->attribute);
}


TTAddressBase* TTAddressBase::edit(const TTSymbol& newDirectory,
								   const TTAddressBase* newParent,
								   const TTSymbol& newName,
								   const TTSymbol& newInstance,
								   const TTSymbol& newAttribute)
{
	TTString address;
	
	if (newDirectory != NO_DIRECTORY) {
		address = newDirectory.c_str();
		address += ":"; // don't put :/ here because the parent or the name should have one.
	}
	
	if (newParent != NO_PARENT.getBasePointer()) {
		if (newDirectory == NO_DIRECTORY)
			address = newParent->getCString();
		else
			address += newParent->getCString();
	}
	
	if(newName != NO_NAME){
		if((newName != S_SEPARATOR) && (newParent != kTTAdrsRoot.getBasePointer()))
			if (newDirectory != NO_DIRECTORY || newParent != NO_PARENT.getBasePointer())
				address += S_SEPARATOR.c_str();
		address += newName.c_str();
	}
	
	if (newInstance != NO_INSTANCE) {
		address += S_INSTANCE.c_str();
		address += newInstance.c_str();
	}
	
	if(newAttribute != NO_ATTRIBUTE){
		address += S_ATTRIBUTE.c_str();
		address += newAttribute.c_str();
	}
	
	return (TTAddressBase*)gTTAddressTable.lookup(address);
}

TTErr TTAddressBase::parse()
{	
	// "directory:/parent/address/name.instance:attribute" parsing
	
	// Empty case :
	if (*this == *kTTAdrsEmpty.getBasePointer()) {
		this->directory = NO_DIRECTORY;
		this->parent = NO_PARENT.getBasePointer();
		this->name = NO_NAME;
		this->instance = NO_INSTANCE;
		this->attribute = NO_ATTRIBUTE;
		this->type = kAddressRelative;
		this->parsed = YES;
        this->normalized = this;
		return kTTErrNone;
	}
	
	// Root case :
	if (*this == *kTTAdrsRoot.getBasePointer()) {
		this->directory = NO_DIRECTORY;
		this->parent = NO_PARENT.getBasePointer();
		this->name = S_SEPARATOR;
		this->instance = NO_INSTANCE;
		this->attribute = NO_ATTRIBUTE;
		this->type = kAddressAbsolute;
		this->parsed = YES;
        this->normalized = this;
		return kTTErrNone;
	}
	
	// All other case needs a regex parsing
	TTString s_toParse = this->getCString();
	TTString s_before;
	TTString s_after;
	TTString s_directory;
	TTString s_parent;
	TTString s_name;
	TTString s_instance;
	TTString s_attribute;

	TTStringIter begin = s_toParse.begin();
	TTStringIter end = s_toParse.end();
	
	//cout << "*** s_toParse    " << s_toParse << "    ***" << endl;
	
	// parse directory
	if (!ttRegexForDirectory->parse(begin, end))
	{
		TTStringIter temp_begin = ttRegexForDirectory->begin();
		TTStringIter temp_end = ttRegexForDirectory->end();
		
		s_directory = TTString(temp_begin, temp_end);
		
		temp_begin = ttRegexForDirectory->end()+1;
		s_toParse = TTString(temp_begin, end);                              // +1 to remove ":"
		
		begin = s_toParse.begin();
		end = s_toParse.end();
		
		//cout << "directory :  " << s_directory << endl;
		//cout << "s_toParse :  " << s_toParse << endl;
	}
	this->directory = TTSymbol(s_directory);
	
	// parse attribute
	if (!ttRegexForAttribute->parse(begin, end))
	{
		TTStringIter temp_begin = ttRegexForAttribute->begin();
		TTStringIter temp_end = ttRegexForAttribute->end();
		
		s_attribute = TTString(temp_begin, end);
		s_toParse = TTString(begin, temp_end-1);                            // -1 to remove ":"
		
		begin = s_toParse.begin();
		end = s_toParse.end();
		
		//cout << "attribute :  " << s_attribute << endl;
		//cout << "s_toParse :  " << s_toParse << endl;
	}
	this->attribute = TTSymbol(s_attribute);
	
	// parse parent
	if (!ttRegexForParent->parse(begin, end))
	{
		// if the split is due to a slash at the beginning : parent = /
		if (ttRegexForParent->begin() == ttRegexForParent->end())
			s_parent = C_SEPARATOR;
		else
			s_parent = TTString(ttRegexForParent->begin(), ttRegexForParent->end());
		
		s_toParse = TTString(ttRegexForParent->end()+1, end-1);               // +1 to remove "/", -1 to remove a useless \0
		
		begin = s_toParse.begin();
		end = s_toParse.end();
		
		//cout << "parent    :  " << s_parent << endl;
		//cout << "s_toParse :  " << s_toParse << endl;
	}
	this->parent = (TTAddressBase*)gTTAddressTable.lookup(s_parent);
	
	// parse instance
	if (!ttRegexForInstance->parse(begin, end))
	{
		s_instance = TTString(ttRegexForInstance->end(), end-1);            // -1 to remove a '\0' at the end
		s_toParse = TTString(begin, ttRegexForInstance->begin()-1);			// -1 to remove "."
		
		begin = s_toParse.begin();
		end = s_toParse.end();
		
		//cout << "instance  :  " << s_instance << endl;
	}
	this->instance = TTSymbol(s_instance);
	
	// consider the rest is the name
	this->name = TTSymbol(s_toParse);
	
	//cout << "name      :  " << s_toParse << endl;
	
	// the type of the address
	if (*this->parent != *NO_PARENT.getBasePointer())
		this->type = this->parent->getType();
	else
		this->type = (TTAddressType)(this->directory != NO_DIRECTORY || this->name == S_SEPARATOR);
	
    // edit the normalized version of the address
    this->normalized = edit(NO_DIRECTORY, this->parent, this->name, this->instance, NO_ATTRIBUTE);
    
	this->parsed = YES;
	return kTTErrNone;
}


TTAddressComparisonFlag TTAddressBase::compare(TTAddressBase* toCompare, TTInt8& depthDifference)
{
	TTErr err1 = kTTErrNone;
	TTErr err2 = kTTErrNone;
	TTAddressBase*	adrs1;
	TTAddressBase*	adrs2;
	TTAddressBase*	top1;
	TTAddressBase*	rest1;
	TTAddressBase*	top2;
	TTAddressBase*	rest2;
	bool cParent, cName, cInstance;
	
	adrs1 = this->normalize();
	adrs2 = toCompare->normalize();
	
	if (adrs1 == adrs2) {
		
		depthDifference = 0;
		
		return kAddressEqual;
	}
	else if (adrs1 == kTTAdrsRoot) {
	
		depthDifference = -(TTInt8(adrs2->countSeparator()));								// the depth difference is < 0
		if (adrs2->getType() == kAddressRelative) 
			depthDifference--;
		
		return kAddressUpper;
	}
	else if (adrs2 == kTTAdrsRoot) {
		
		depthDifference = adrs1->countSeparator();								// the depth diffrence is > 0
		if (adrs1->getType() == kAddressRelative) 
			depthDifference++;
		
		return kAddressLower;
	}
	else {
		
		err1 = adrs1->splitAt(0, &top1, &rest1);
		err2 = adrs2->splitAt(0, &top2, &rest2);
		
		// compare each level until there is a difference
		while ((top1 == top2) && (err1 == 0) && (err2 == 0))
		{
			err1 = rest1->splitAt(0, &top1, &rest1);
			err2 = rest2->splitAt(0, &top2, &rest2);
		}
		
		// what are the difference at this level ?
		
		// compare parents
		cParent = top1->getParent() == top2->getParent();
		
		// compare names
		cName = (top1->getName() == top2->getName()) || (top1->getName() == S_WILDCARD) || (top2->getName() == S_WILDCARD);
		
		// compare instances
		cInstance = (top1->getInstance() == top2->getInstance()) || (top1->getInstance() == S_WILDCARD) || (top2->getInstance() == S_WILDCARD);
		
		// don't compare attributes
		
		// if levels are equal
		// compare the rest of the address
		if (cParent && cName && cInstance ){
			
			// look at returned error to know if there is a rest
			if (err1 && !err2) {															// address1 is shorter than address2
				depthDifference = -(TTInt8(rest2->countSeparator())+1);								// the depth difference is < 0
				return kAddressUpper;
			}
			else if (!err1 && err2)	{														// address2 is shorter than address1
				depthDifference = rest1->countSeparator()+1;								// the depth diffrence is > 0
				return kAddressLower;
			}
			else {																			// address1 ? address2
				depthDifference = 0;
				return rest1->compare(rest2, depthDifference);
			}
		}
	}
	
	return kAddressDifferent;
}

TTErr TTAddressBase::splitAt(TTUInt32 whereToSplit, TTAddressBase* *returnedPart1, TTAddressBase* *returnedPart2)
{
	TTErr		err = kTTErrNone;
	TTUInt32	nb, pos, i;
	TTString	part1, part2;
	
	i = 0;
	part1 = "";
	part2 = this->getCString();
	
	while(i <= whereToSplit)
	{
		nb = std::count(part2.begin(), part2.end(), C_SEPARATOR);
		
		if(nb)
		{
			pos = part2.find_first_of(C_SEPARATOR);
			part1 += part2.substr(0, pos+1);
			part2 = part2.substr(pos+1, part2.size() - (pos+1));
		}
		else
		{
			part1 += part2;
			part2 = "";
			err = kTTErrGeneric;
			break;
		}
		
		i++;
	}
	
	// if exists, remove SEPARATOR at the end of the part1
    if (part1.size()) {
        if (part1.at(part1.size()-1) == C_SEPARATOR) {
            
            // except in case part1 is a directory:/ part
            size_t sc = part1.find_first_of(':');
            if (sc > 0 && sc != part1.size()-2)
                part1 = part1.substr(0, part1.size()-1);
        }
    }
	
	*returnedPart1 = (TTAddressBase*)gTTAddressTable.lookup(part1);
	*returnedPart2 = (TTAddressBase*)gTTAddressTable.lookup(part2);
	
	return err;
}

TTUInt32 TTAddressBase::countSeparator()
{
	std::string toCount = this->getCString();
	
	return count(toCount.begin(), toCount.end(), C_SEPARATOR);
}

TTErr TTAddressBase::listNameInstance(TTList& nameInstanceList)
{
	if (!parsed) parse();
	
	if (*this != kTTAdrsEmpty && *this != kTTAdrsRoot) {
		
		this->parent->listNameInstance(nameInstanceList);
        
        // if there is a directory part : append directory and ""
        if (directory != NO_DIRECTORY) {
            
            nameInstanceList.append(directory);
            nameInstanceList.append(kTTSymEmpty);
        }

        nameInstanceList.append(name);
		nameInstanceList.append(instance);
	}
    
	return kTTErrNone;
}

#endif
