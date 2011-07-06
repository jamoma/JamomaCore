/*
 * TTNodeAddress
 * Copyright © 2011, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTFoundationAPI.h"

#include <boost/regex.hpp>
using namespace boost;

TTNodeAddress::TTNodeAddress(const TTString& newAddressString, TTInt32 newId)
	: directory(NO_DIRECTORY), parent(NO_PARENT), name(NO_NAME), instance(NO_INSTANCE), attribute(NO_ATTRIBUTE), parsed(NO)
{
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
	if (this != kTTAdrsRoot && toAppend->getType() != kAddressAbsolute) {
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
	string s_toParse = this->getCString();
	string s_directory;
	string s_parent;
	string s_name;
	string s_instance;
	string s_attribute;
	
	boost::regex ex_directory("([\\w]+)\\:/");					// TODO : depends on S_DIRECTORY
	boost::regex ex_attribute(":+");							// TODO : depends on C_ATTRIBUTE
	boost::regex ex_parent("(.*)/+(\\S+)");						// TODO : depends on C_SEPARATOR
	boost::regex ex_instance("[.]");							// TODO : depends on C_INSTANCE
	boost::match_results <std::string::const_iterator> what;
	string::const_iterator start, end;
	
	//cout << "*** s_toParse    " << s_toParse << "    ***" << endl;
	start = s_toParse.begin();
	end = s_toParse.end();
	
	// parse directory
	if (boost::regex_search(start, end, what, ex_directory))
	{
		s_directory = string(what[1].first, what[1].second);
		s_toParse = string(what[1].second+1, end);			// +1 to remove ":"

		start = s_toParse.begin();
		end = s_toParse.end();
		
		//cout << "directory :  " << s_directory << endl;
		//cout << "s_toParse :  " << s_toParse << endl;
	}
	this->directory = TT(s_directory);
	
	// parse attribute
	if (boost::regex_search(start, end, what, ex_attribute))
	{
		s_attribute = string(what[1].second, end);
		s_toParse = string(start, what[1].first-1);			// -1 to remove ":"
		
		start = s_toParse.begin();
		end = s_toParse.end();
		
		//cout << "attribute :  " << s_attribute << endl;
		//cout << "s_toParse :  " << s_toParse << endl;
	}
	this->attribute = TT(s_attribute);
	
	// parse parent
	if (boost::regex_search(start, end, what, ex_parent))
	{
		// if the split is due to a slash at the beginning : parent = /
		if (what[1].first == what[1].second)
			s_parent = C_SEPARATOR;
		else
			s_parent = string(what[1].first, what[1].second);
		
		s_toParse = string(what[1].second+1, end);			// +1 to remove "/"
		
		start = s_toParse.begin();
		end = s_toParse.end();
		
		//cout << "parent    :  " << s_parent << endl;
		//cout << "s_toParse :  " << s_toParse << endl;
	}
	this->parent = TTADRS(s_parent);
	
	// parse instance
	if (boost::regex_search(start, end, what, ex_instance))
	{
		s_instance = string(what[1].second, end);
		s_toParse = string(start, what[1].first-1);			// -1 to remove "."
		
		start = s_toParse.begin();
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
	
	if (newParent != NO_PARENT)
		if (newDirectory == NO_DIRECTORY)
			address = newParent->getCString();
		else
			address += newParent->getCString();
	
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


TTNodeAddressComparisonFlag TTNodeAddress::compare(const TTNodeAddressPtr toCompare)
{
	TTErr err1 = kTTErrNone;
	TTErr err2 = kTTErrNone;
	TTNodeAddressPtr adrs1, adrs2, top1, rest1;
	TTNodeAddressPtr top2, rest2;
	bool cParent, cName, cInstance;
	
	adrs1 = this->normalize();
	adrs2 = toCompare->normalize();
	
	if (adrs1 == adrs2)
		return kAddressEqual;
	else if (adrs1 == kTTAdrsRoot)
		return kAddressUpper;
	else if (adrs2 == kTTAdrsRoot)
		return kAddressLower;
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
			if (err1 && !err2)																// address1 is shorter than address2
				return kAddressUpper;
			else if (!err1 && err2)															// address2 is shorter than address1
				return kAddressLower;
			else																			// address1 ? address2
				return rest1->compare(rest2);
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
	TTString toCount = this->getCString();
	
	return count(toCount.begin(), toCount.end(), C_SEPARATOR);
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
		addrNameCString[addrNameSize] = NULL;
		
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

