/*
 * TTNodeAddress
 * Copyright © 2011, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTFoundationAPI.h"

#if OLD
#include <boost/regex.hpp>
using namespace boost;
#else
#include <regex>
#endif

TTFOUNDATION_EXPORT TTRegex* ttRegexForDirectory = NULL;
TTFOUNDATION_EXPORT TTRegex* ttRegexForAttribute = NULL;
TTFOUNDATION_EXPORT TTRegex* ttRegexForParent = NULL;	
TTFOUNDATION_EXPORT TTRegex* ttRegexForInstance = NULL;
TTFOUNDATION_EXPORT TTRegex* ttRegexForInstanceZero = NULL;

TTNodeAddress::TTNodeAddress(const TTString& newAddressString, TTInt32 newId)
	: directory(NO_DIRECTORY), parent(NO_PARENT), name(NO_NAME), instance(NO_INSTANCE), attribute(NO_ATTRIBUTE), parsed(NO)
{
	// check if there is a '0'
	if (strchr(newAddressString.data(), C_ZERO) != 0) {

		TTString parsed;
		parseInstanceZero(newAddressString, parsed);
		
		this->init(parsed, newId);
	}
	else
		this->init(newAddressString, newId);
}

TTNodeAddress::~TTNodeAddress()
{
	;
}

TTSymbolPtr TTNodeAddress::getDirectory()
{
	if (!parsed) parse();
	return directory;
}

TTNodeAddressPtr TTNodeAddress::getParent()
{
	if (!parsed) parse();
	return parent;
}

TTSymbolPtr TTNodeAddress::getName()
{
	if (!parsed) parse();
	return name;
}

TTSymbolPtr TTNodeAddress::getInstance()
{
	if (!parsed) parse();
	return instance;
}

TTSymbolPtr TTNodeAddress::getAttribute()
{
	if (!parsed) parse();
	return this->attribute;
}

TTNodeAddressType TTNodeAddress::getType()
{
	if (!parsed) parse();
	return type;
}

TTSymbolPtr	TTNodeAddress::getNameInstance()
{
	TTString nameInstance = this->getName()->getCString();
	
	if (this->getInstance() != NO_INSTANCE) {
		nameInstance += C_INSTANCE;
		nameInstance +=  this->getInstance()->getCString();
	}
	
	return TT(nameInstance);
}

TTNodeAddressPtr TTNodeAddress::normalize()
{
	if (!parsed) parse();
	
	if (directory != NO_DIRECTORY || attribute != NO_ATTRIBUTE)
		return edit(NO_DIRECTORY, this->parent, this->name, this->instance, NO_ATTRIBUTE);
	else
		return this;
}

TTNodeAddressPtr TTNodeAddress::removeAttribute()
{
	if (!parsed) parse();
	
	if (attribute != NO_ATTRIBUTE)
		return edit(this->directory, this->parent, this->name, this->instance, NO_ATTRIBUTE);
	else
		return this;
}

TTNodeAddressPtr TTNodeAddress::appendAttribute(TTSymbolPtr anAttribute)
{
	if (!parsed) parse();
	
	return edit(this->directory, this->parent, this->name, this->instance, anAttribute);
}

TTNodeAddressPtr TTNodeAddress::appendAddress(const TTNodeAddressPtr toAppend)
{
	TTString tmp = "";
	
	if (toAppend == kTTAdrsEmpty || toAppend == kTTAdrsRoot)
		return this;
	
	tmp += this->getCString();

	// insert a / if the first part is not the root and the address to append is not absolute
	if (this != kTTAdrsRoot && toAppend->getType() != kAddressAbsolute && toAppend->getName() != NO_NAME) {
		tmp += C_SEPARATOR;
		tmp += toAppend->getCString();
	}
	
	// just keep the the second part if the first part is the root and the address to append is absolute
	else if (this == kTTAdrsRoot && toAppend->getType() == kAddressAbsolute)
		return toAppend;
	
	// else append the address
	else
		tmp += toAppend->getCString();
	
	return TTADRS(tmp.data());
}

TTNodeAddressPtr TTNodeAddress::appendInstance(TTSymbolPtr anInstance)
{
	if (!parsed) parse();
	
	return edit(this->directory, this->parent, this->name, anInstance, this->attribute);
}

TTErr TTNodeAddress::parseInstanceZero(const TTString& toParse, TTString& parsed)
{
	// filter single "0" string
	if (toParse.size() > 1) {
		
		parsed = toParse;
		
//		TTRegexStringPosition begin = parsed.begin();
//		TTRegexStringPosition end = parsed.end();

//		auto begin = parsed.begin();
//		auto end = parsed.end();

		TTStringIter begin = parsed.begin();
		TTStringIter end = parsed.end();

//		TTStringIter begin = parsed.begin();
//		TTStringIter end = parsed.end();
		
		// parse and remove ".0"
		while (!ttRegexForInstanceZero->parse(begin, end)) {
			TTStringIter z_begin = ttRegexForInstanceZero->begin() - 2;
			TTStringIter z_end = ttRegexForInstanceZero->end();
						
			TTString a(begin, z_begin);
			TTString b(z_end, end);
			parsed = a+b;
			// parsed = TTString(begin, ttRegexForInstanceZero->begin()-2) + TTString(ttRegexForInstanceZero->end(), end);	// -2 to remove .0

			begin = parsed.begin();
			end = parsed.end();
		}
	}

	return kTTErrNone;
}

#ifndef TTNODEADDRESS_OLD_WAY_TO_PARSE

TTErr TTNodeAddress::parse()
{	
	// "directory:/parent/address/name.instance:attribute" parsing
	
	// Empty case :
	if (this == kTTAdrsEmpty) {
		this->directory = NO_DIRECTORY;
		this->parent = NO_PARENT;
		this->name = NO_NAME;
		this->instance = NO_INSTANCE;
		this->attribute = NO_ATTRIBUTE;
		this->type = kAddressRelative;
		this->parsed = YES;
		return kTTErrNone;
	}
	
	// Root case :
	if (this == kTTAdrsRoot) {
		this->directory = NO_DIRECTORY;
		this->parent = NO_PARENT;
		this->name = S_SEPARATOR;
		this->instance = NO_INSTANCE;
		this->attribute = NO_ATTRIBUTE;
		this->type = kAddressAbsolute;
		this->parsed = YES;
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
//	TTRegexStringPosition begin, end;
	
	//cout << "*** s_toParse    " << s_toParse << "    ***" << endl;
	TTStringIter begin = s_toParse.begin();
	TTStringIter end = s_toParse.end();
	
	// parse directory
	if (!ttRegexForDirectory->parse(begin, end))
	{
		TTStringIter temp_begin = ttRegexForDirectory->begin();
		TTStringIter temp_end = ttRegexForDirectory->end();
		
		s_directory = TTString(temp_begin, temp_end);
		
		temp_begin = ttRegexForDirectory->end()+1;
		s_toParse = TTString(temp_begin, end);			// +1 to remove ":"
		
		begin = s_toParse.begin();
		end = s_toParse.end();
		
		//cout << "directory :  " << s_directory << endl;
		//cout << "s_toParse :  " << s_toParse << endl;
	}
	this->directory = TT(s_directory);
	
	// parse attribute
	if (!ttRegexForAttribute->parse(begin, end))
	{
		s_attribute = string(ttRegexForAttribute->begin(), end);
		s_toParse = string(begin, ttRegexForAttribute->end()-1);			// -1 to remove ":"
		
		begin = s_toParse.begin();
		end = s_toParse.end();
		
		//cout << "attribute :  " << s_attribute << endl;
		//cout << "s_toParse :  " << s_toParse << endl;
	}
	this->attribute = TT(s_attribute);
	
	// parse parent
	if (!ttRegexForParent->parse(begin, end))
	{
		// if the split is due to a slash at the beginning : parent = /
		if (ttRegexForParent->begin() == ttRegexForParent->end())
			s_parent = C_SEPARATOR;
		else
			s_parent = string(ttRegexForParent->begin(), ttRegexForParent->end());
		
		s_toParse = string(ttRegexForParent->end()+1, end);			// +1 to remove "/"
		
		begin = s_toParse.begin();
		end = s_toParse.end();
		
		//cout << "parent    :  " << s_parent << endl;
		//cout << "s_toParse :  " << s_toParse << endl;
	}
	this->parent = TTADRS(s_parent);
	
	// parse instance
	if (!ttRegexForInstance->parse(begin, end))
	{
		s_instance = string(ttRegexForInstance->end(), end);
		s_toParse = string(begin, ttRegexForInstance->begin()-1);			// -1 to remove "."
		
		begin = s_toParse.begin();
		end = s_toParse.end();
		
		//cout << "instance  :  " << s_instance << endl;
	}
	this->instance = TT(s_instance);
	
	// consider the rest is the name
	this->name = TT(s_toParse);
	
	//cout << "name      :  " << s_toParse << endl;
	
	// the type of the address
	if (this->parent != NO_PARENT)
		this->type = this->parent->getType();
	else
		this->type = (TTNodeAddressType)(this->directory != NO_DIRECTORY || this->name == S_SEPARATOR);
	
	this->parsed = YES;
	return kTTErrNone;
}

#else

TTErr TTNodeAddress::parse()
{
	TTString address = this->getCString();
	long len, pos, first_slash, first_colon;
	char *last_colon, *last_slash, *last_dot;
	char *c_directory, *c_attribute, *c_parent, *c_instance;
	char *to_split;
	
	// Empty case :
	if (this == kTTAdrsEmpty) {
		this->directory = NO_DIRECTORY;
		this->parent = NO_PARENT;
		this->name = NO_NAME;
		this->instance = NO_INSTANCE;
		this->attribute = NO_ATTRIBUTE;
		this->type = kAddressRelative;
		this->parsed = YES;
		return kTTErrNone;
	}
	
	// Root case :
	if (this == kTTAdrsRoot) {
		this->directory = NO_DIRECTORY;
		this->parent = NO_PARENT;
		this->name = S_SEPARATOR;
		this->instance = NO_INSTANCE;
		this->attribute = NO_ATTRIBUTE;
		this->type = kAddressAbsolute;
		this->parsed = YES;
		return kTTErrNone;
	}
	
	// TODO : replace all ".0" by ""
	
	// Parse directory (:/)
	to_split = (char *)malloc(sizeof(char)*(strlen(address.data())+1));
	strcpy(to_split, address.data());
	first_colon = address.find_first_of(C_ATTRIBUTE);
	first_slash = address.find_first_of(C_SEPARATOR);
	if (first_colon > 0 && first_colon == first_slash-1) {
		c_directory = (char *)malloc(sizeof(char)*first_colon);
		strncpy(c_directory, to_split, first_colon);
		c_directory[first_colon] = NULL;
		
		this->directory = TT(c_directory);
		
		strcpy(to_split, to_split+first_colon+1);
	}
	
	// find the last ':' in the address
	// if exists, split the address in an address part (to split) and an attribute part
	len = strlen(to_split);
	last_colon = strrchr(to_split, C_ATTRIBUTE);
	pos = (long)last_colon - (long)to_split;
	
	if (last_colon) {
		c_attribute = (char *)malloc(sizeof(char)*(len - (pos+1)));
		strcpy(c_attribute,to_split + pos+1);
		this->attribute = TT(c_attribute);
		to_split[pos] = NULL;
	}
	
	
	// find the last '/' in the address part
	len = strlen(to_split);
	last_slash = strrchr(to_split, C_SEPARATOR);
	pos = (long)last_slash - (long)to_split;
	
	if (last_slash) {
		if (pos) { // In the root case pos == 0
			c_parent = (char *)malloc(sizeof(char)*(pos+1));
			strncpy(c_parent,to_split,pos);
			c_parent[pos] = NULL;
			this->parent = TTADRS(c_parent);
			to_split = last_slash+1;
		}
		else {
			// Is it the root or a child of the root ?
			if (strlen(to_split) > 1) {
				this->parent = kTTAdrsRoot;
				to_split = last_slash+1;
			}
		}
	}
	
	// find the last '.' in the name.instance part
	// if exists, split the name.instance part
	len = strlen(to_split);
	last_dot = strrchr(to_split, C_INSTANCE);
	pos = (long)last_dot - (long)to_split;
	
	if (last_dot > 0) {
		c_instance = (char *)malloc(sizeof(char)*(len - (pos+1)));
		strcpy(c_instance,to_split + pos+1);
		this->instance = TT(c_instance);
		
		to_split[pos] = NULL; // split to keep only the name part
	}
	
	// TODO : ??? (detect unusual characters in a name)
	if (strlen(to_split) > 0)
		this->name = TT(to_split);
	
	// the type of the address is absolute if
	if (parent != NO_PARENT)
		this->type = parent->getType();
	else
		this->type = (TTNodeAddressType)(directory != NO_DIRECTORY || name == S_SEPARATOR);
	
	this->parsed = YES;
	return kTTErrNone;
}
#endif

TTNodeAddressPtr TTNodeAddress::edit(const TTSymbolPtr newDirectory, 
						  const TTNodeAddressPtr newParent, 
						  const TTSymbolPtr newName, 
						  const TTSymbolPtr newInstance, 
						  const TTSymbolPtr newAttribute)
{
	TTString address;
	
	if (newDirectory != NO_DIRECTORY) {
		address = newDirectory->getCString();
		address += ":"; // don't put :/ here because the parent or the name should have one.
	}
	
	if (newParent != NO_PARENT) {
		if (newDirectory == NO_DIRECTORY)
			address = newParent->getCString();
		else
			address += newParent->getCString();
	}
	
	if(newName != NO_NAME){
		if((newName != S_SEPARATOR) && (newParent != kTTAdrsRoot))
			if (newDirectory != NO_DIRECTORY || newParent != NO_PARENT)
				address += S_SEPARATOR->getCString();
		address += newName->getCString();
	}
	
	if (newInstance != NO_INSTANCE) {
		address += S_INSTANCE->getCString();
		address += newInstance->getCString();
	}
	
	if(newAttribute != NO_ATTRIBUTE){
		address += S_ATTRIBUTE->getCString();
		address += newAttribute->getCString();
	}
	
	return TTADRS(address);
}

TTNodeAddressComparisonFlag TTNodeAddress::compare(const TTNodeAddressPtr toCompare, TTInt8& depthDifference)
{
	TTErr err1 = kTTErrNone;
	TTErr err2 = kTTErrNone;
	TTNodeAddressPtr adrs1, adrs2, top1, rest1;
	TTNodeAddressPtr top2, rest2;
	bool cParent, cName, cInstance;
	
	adrs1 = this->normalize();
	adrs2 = toCompare->normalize();
	
	if (adrs1 == adrs2) {
		
		depthDifference = 0;
		
		return kAddressEqual;
	}
	else if (adrs1 == kTTAdrsRoot) {
	
		depthDifference = -(adrs2->countSeparator());								// the depth difference is < 0
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
				depthDifference = -(rest2->countSeparator()+1);								// the depth difference is < 0
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

TTErr TTNodeAddress::splitAt(TTUInt32 whereToSplit, TTNodeAddressPtr *returnedPart1, TTNodeAddressPtr *returnedPart2)
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
			part2 = part2.substr(pos+1, part2.size());
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
	 pos = part1.find_first_of(C_SEPARATOR);
	 if ((pos + 1) == part1.size())
		 part1 = part1.substr(0, pos);
	
	*returnedPart1 = TTADRS(part1);
	*returnedPart2 = TTADRS(part2);
	
	return err;
}

TTUInt32 TTNodeAddress::countSeparator()
{
	std::string toCount = this->getCString();
	
	return count(toCount.begin(), toCount.end(), C_SEPARATOR);
}

TTErr TTNodeAddress::listNameInstance(TTList& nameInstanceList)
{
	if (!parsed) parse();
	
	if (this != kTTAdrsEmpty && this != kTTAdrsRoot) {
		
		this->parent->listNameInstance(nameInstanceList);

		nameInstanceList.append(this->getName());
		nameInstanceList.append(this->getInstance());
	}
	
	return kTTErrNone;
}

/***********************************************************************************
 *
 *		GLOBAL METHODS
 *
 ************************************************************************************/

TTNodeAddressPtr convertTTNameInTTNodeAddress(TTSymbolPtr ttName)
{
	TTUInt32	ttNameSize = 0;
	TTCString	ttNameCString;
	TTUInt32	nbUpperCase = 0;
	TTUInt32	i;
	TTCString	addrNameCString = NULL;
	TTUInt32	addrNameSize = 0;
	TTNodeAddressPtr addrNameSymbol;
	
	ttNameSize = strlen(ttName->getCString());
	ttNameCString = new char[ttNameSize+1];
	strncpy(ttNameCString, ttName->getCString(), ttNameSize+1);
	
	// "ExampleName"	to	"example/name"
	// "anyOtherExample" to	"any/other/example"
	if ((ttNameCString[0] > 64 && ttNameCString[0] < 91) || (ttNameCString[0] > 96 && ttNameCString[0] < 123)) {
		
		//  count how many upper-case letter there are in the TTName after the first letter
		for (i=1; i<ttNameSize; i++) {
			if (ttNameCString[i] > 64 && ttNameCString[i] < 91)
				nbUpperCase++;
		}
		
		// prepare the addrName
		addrNameSize = ttNameSize + nbUpperCase;
		addrNameCString = new char[addrNameSize+1];
		
		// convert first letter to lower-case if needed
		if (ttNameCString[0] > 64 && ttNameCString[0] < 91)
			addrNameCString[0] = ttNameCString[0] + 32;
		else
			addrNameCString[0] = ttNameCString[0];
		
		// copy each letter while checking upper-case letter to replace them by a / + lower-case letter
		nbUpperCase = 0;
		for (i=1; i<ttNameSize; i++) {
			if (ttNameCString[i] > 64 && ttNameCString[i] < 91) {
				addrNameCString[i + nbUpperCase] = '/';
				addrNameCString[i + nbUpperCase + 1] = ttNameCString[i] + 32;
				nbUpperCase++;
			}
			else
				addrNameCString[i + nbUpperCase] = ttNameCString[i];
		}
		
		// ends the CString with a NULL letter
		addrNameCString[addrNameSize] = 0;
		
		addrNameSymbol = TTADRS(addrNameCString);
	}
	else
		addrNameSymbol = kTTAdrsEmpty;
	
	delete ttNameCString;
	ttNameCString = NULL;
	delete addrNameCString;
	addrNameCString = NULL;
	
	return addrNameSymbol;
}

TTNodeAddressPtr makeTTNodeAddress(const TTSymbolPtr newDirectory, 
								   const TTNodeAddressPtr newParent, 
								   const TTSymbolPtr newName, 
								   const TTSymbolPtr newInstance, 
								   const TTSymbolPtr newAttribute)
{
	return kTTAdrsEmpty->edit(newDirectory, newParent, newName, newInstance, newAttribute);
}

