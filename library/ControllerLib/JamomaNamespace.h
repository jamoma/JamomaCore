/*
 *  JamomaNamespace.h
 *  ControllerLib
 *
 *  Created by Théo de la Hogue on 22/12/09.
 *  Copyright 2009 Virage. All rights reserved.
 *
 */

#ifndef _JAMOMA_NAMESPACE_H_
#define _JAMOMA_NAMESPACE_H_

#include "Jamoma.h"
#include "Namespace.h"

class JAMOMA_EXPORT JamomaNamespace : public Namespace {
	
private:
	
	TTNodeDirectoryPtr m_directory;							// a pointer to the jamoma node directory
	
	std::string j_attr_access;								// 
	std::string j_attr_value;								// 
	std::string j_attr_type;								// 
	std::string j_attr_range_bounds;						// 
	std::string j_attr_description;							// 
	
public:
	
	/************************************************
	 NAMESPACE METHODS :
	 a set of methods used to handle a Namespace.
	 ************************************************/
	
	JamomaNamespace();
	virtual ~JamomaNamespace();
	
	void discover(Address whereToDiscover, std::vector<std::string>* returnedNodes, std::vector<std::string>* returnedAttributes);
	void get(Address whereToGet, std::string attribute, std::vector<Value>* returnedValue);
	void set(Address whereToSet, std::string attribute, std::vector<Value>* newValue);
	
	/************************************************
	 OBSERVER METHODS :
	 a set of methods used to handle Namespace observers.
	 ************************************************/
	
	void link(Address whereToObserve, Address whereToSend);
	void link(Address whereToObserve, std::string attributeToObserve, Address whereToSend);
	void unlink(Address whereToObserve, Address whereToSend);
	void unlink(Address whereToObserve, std::string attributeToObserve, Address whereToSend);
	
	/************************************************
	 Jamoma NAMESPACE METHODS :
	 a set of methods used to handle the Namespace of Jamoma.
	 ************************************************/
	
	TTNodeDirectoryPtr directoryGet();
	void directorySet(TTNodeDirectoryPtr aDirectory);
	
	std::string convertAttributeFromJamoma(std::string attribute);
	std::string convertAttributeToJamoma(std::string attribute);
	
};

#endif //_JAMOMA_NAMESPACE_H_