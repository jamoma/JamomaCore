/*
 *  JamomaNamespace.cpp
 *  ControllerLib
 *
 *  Created by Théo de la Hogue on 22/12/09.
 *  Copyright 2009 Virage. All rights reserved.
 *
 */

#include "JamomaNamespace.h"


/************************************************
 NAMESPACE METHODS :
 a set of methods used to handle a Namespace.
 ************************************************/

JamomaNamespace::JamomaNamespace()
{
	m_directory = NULL;
	
	j_attr_access = "acces";
	j_attr_value = "value";
	j_attr_type = "type";
	j_attr_range_bounds = "range/bounds"; 
	j_attr_description = "description";
}

JamomaNamespace::~JamomaNamespace()
{
	;
}

void JamomaNamespace::discover(Address whereToDiscover, std::vector<std::string>* returnedNodes, std::vector<std::string>* returnedAttributes)
{	
	TTErr err;
	TTNode nodeToDiscover, *aChild;
	TTList allChildren;
	TTString instanceName;
	TTSymbolPtr attributeName;
	TTValue attributeNameList;
	int i;
	
	if(m_directory){
		
		// Get the Node at the given address
		err = m_directory->getTTNodeForOSC(whereToDiscover.c_str(), &nodeToDiscover);
		
		if(!err){
			
			// Edit the vector with all name+instance of each children
			nodeToDiscover.getChildren(S_WILDCARD, S_WILDCARD, &allChildren);
			for(allChildren.begin(); allChildren.end(); allChildren.next())
			{
				allChildren.current().get(0,(TTPtr*)&aChild);
				
				instanceName = aChild->getName()->getString();
				instanceName += aChild->getInstance()->getString();
				
				returnedNodes->push_back(instanceName->c_str());
			}
			
			// Edit the vector with all attributes name
			nodeToDiscover->getAttributeNames(&attributeNameList);
			
			// Add the acces attribute which is not a jamoma attribute
			returnedAttributes->push_back(m_attr_access);
			
			// Add all other attributes
			for(i = 0; i < attributeNameList.getSize(); i++)
			{
				attributeNameList.get(i,(TTSymbolPtr*)&attributeName);
				returnedAttributes->push_back(convertAttributeFromJamoma(attributeName->getCString()));
			}
		}
	}
}

void JamomaNamespace::get(Address whereToGet, std::string attribute, Value* returnedValue)
{
	TTErr err;
	TTNode nodeToGet;
	TTList allChildren;
	TTString attributeName, stringValue;
	TTSymbolPtr nodeType;
	TTValue attributeValue;
	int i;
	
	if(m_directory){
		
		// Get the Node at the given address
		err = m_directory->getTTNodeForOSC(whereToGet.c_str(), &nodeToGet);
		
		if(!err){
			
			// Convert attribute into Jamoma style
			attributeName = convertAttributeToJamoma(attribute);
			
			if(attributeName == j_attr_access){
				
				// test node type to get the access status
				nodeType = nodeToDiscover->getType();
				
				if(nodeType == TT("subscribe_parameter")){
					
					returnedValue = "getsetter";
					
				} else if(nodeType == TT("subscribe_message")){
					
					returnedValue = "setter";
						
				} else if(nodeType == TT("subscribe_return")){
					
					returnedValue = "getter";
				}
				
			}
			else{
				
				// Edit the vector with all attribute name
				nodeToGet->getAttributeValue(attributeName, &attributeValue);
				
				// to string
				returnedValue = attributeValue.toString().c_str();
			}
		}
	}
}

void JamomaNamespace::set(Address whereToSet, std::string attribute, std::vector<Value>* newValue)
{
	TTErr err;
	TTNode nodeToSet;
	TTList allChildren;
	TTSymbolPtr nodeType;
	TTValue attributeValue;
	int i;
	
	if(m_directory){
		
		// Get the Node at the given address
		err = m_directory->getTTNodeForOSC(whereToSet.c_str(), &nodeToSet);
		
		if(!err){
			
			// test node type to get the access status
			nodeType = nodeToDiscover->getType();
				
			if((nodeType == TT("subscribe_parameter")) || (nodeType == TT("subscribe_message"))){
				
				// from string
				// TODO : fromString(attributeValue, newValue);
				
				// Edit the vector with all attribute name
				nodeToGet->setAttributeValue(convertAttributeToJamoma(attribute), attributeValue);	
			}
		}
	}
}

/************************************************
 OBSERVER METHODS :
 a set of methods used to handle Namespace observers.
 ************************************************/

void JamomaNamespace::link(Address whereToObserve, Address whereToSend)
{
	;
}

void JamomaNamespace::link(Address whereToObserve, std::string attributeToObserve, Address whereToSend)
{
	;
}

void JamomaNamespace::unlink(Address whereToObserve, Address whereToSend)
{
	;
}

void JamomaNamespace::unlink(Address whereToObserve, std::string attributeToObserve, Address whereToSend)
{
	;
}

/************************************************
 Jamoma NAMESPACE CONTRUCTOR METHODS :
 a set of methods used to handle the Namespace of Jamoma.
 ************************************************/

TTNodeDirectoryPtr JamomaNamespace::directoryGet()
{
	return m_directory;
}

void JamomaNamespace::directorySet(TTNodeDirectoryPtr aDirectory)
{
	m_directory = aDirectory;
}

std::string JamomaNamespace::convertAttributeFromJamoma(std::string attribute)
{
	if(attribute == j_attr_value)
		return m_attr_value;
	
	if(attribute == j_attr_type)
		return m_attr_type;
	
	if(attribute == j_attr_access)
		return m_attr_access;
	
	if(attribute == j_attr_description)
		return m_attr_comment;
	
	if(attribute == j_attr_range_bounds)
		return m_attr_range;
	
	return NULL;
}

std::string JamomaNamespace::convertAttributeToJamoma(std::string attribute)
{
	if(attribute == m_attr_value)
		return j_attr_value;
	
	if(attribute == m_attr_type)
		return j_attr_type;
	
	if(attribute == m_attr_access)
		return j_attr_access;
	
	if(attribute == m_attr_comment)
		return j_attr_description;
	
	if(attribute == m_attr_range)
		return j_attr_range_bounds;
	
	return NULL;
}