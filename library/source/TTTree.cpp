/* 
 * TTTree
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTTree.h"

#define thisTTClass			TTTree
#define thisTTClassName		"TTTree"
#define thisTTClassTags		"tree"

TTTree::TTTree(TTSymbolPtr newName):TTObject(*kTTValNONE)
{
	TTBoolean *nodeCreated = new TTBoolean(false);
	
	// Set the name of the tree
	this->name = newName;
	
	// create a new directory
	this->directory = new TTHash();

	// create a root (OSC style)
	NodeCreate(TT(S_SEPARATOR), TT("container"), NULL, &this->root, nodeCreated);
}

TTTree::~TTTree()
{
	// TODO : delete all the node of the directory then the directory
	// WARNING : if you destroy all the directory, the root will be destroyed too
	// so don't destroy it again !!!
	this->root->~TTNode();
}

#if 0
#pragma mark -
#pragma mark Static Methods
#endif

TTSymbolPtr	TTTree::getName(){return this->name;}
TTNodePtr	TTTree::getRoot(){return this->root;}
TTHashPtr	TTTree::getDirectory(){return this->directory;}

TTErr TTTree::setName(TTSymbolPtr aName)
{
	this->name = aName;
	return kTTErrNone;
}


TTErr TTTree::getNodeForOSC(const char* oscAddress, TTNodePtr* returnedNode)
{
	return getNodeForOSC(TT((char*)oscAddress), returnedNode);
}

TTErr TTTree::getNodeForOSC(TTSymbolPtr oscAddress, TTNodePtr* returnedNode)
{
	TTErr err;
	TTValue* found = new TTValue();
	
	if(directory){
		// look into the hashtab to check if the address exist in the tree
		err = directory->lookup(oscAddress,*found);

		// if this address doesn't exist
		if(err == kTTErrValueNotFound){
			return kTTErrGeneric;
		}
		else{
			found->get(0,(TTPtr*)returnedNode);
			return kTTErrNone;
		}
	}
	return kTTErrGeneric;
}

TTErr TTTree::NodeCreate(TTSymbolPtr oscAddress, TTSymbolPtr newType, void *newObject, TTNodePtr *returnedNode, TTBoolean *newInstanceCreated)
{
	TTSymbolPtr oscAddress_parent, oscAddress_name, oscAddress_instance, oscAddress_propertie, newInstance, oscAddress_got;
	TTBoolean parent_created;
	TTValue* found;
	TTNodePtr newNode, n_found;
	TTErr err;

	// Split the OSC address in /parent/name.instance:/propertie
	err = splitOSCAddress(oscAddress,&oscAddress_parent,&oscAddress_name, &oscAddress_instance, &oscAddress_propertie);

	// if no error in the parsing of the OSC address
	if(err == kTTErrNone){

		// If there is an attribute part
		if(oscAddress_propertie != NO_PROPERTIE){

			// get the TTNode
			mergeOSCAddress(&oscAddress_got,oscAddress_parent,oscAddress_name,oscAddress_instance,NO_PROPERTIE);
			found = new TTValue();
			err = directory->lookup(oscAddress_got, *found);

			// if the TTNode doesn't exist
			if(err == kTTErrValueNotFound)
				return kTTErrGeneric;

			else{
				// get the TTNode at this address
				found->get(0,(TTPtr*)&n_found);
				n_found->setProperties(oscAddress_propertie);

				return kTTErrNone;
			}
		}

		// is there a TTNode with this address in the tree ?
		found = new TTValue();
		err = directory->lookup(oscAddress, *found);

		// if it's the first at this address
		if(err == kTTErrValueNotFound){
			// keep the instance found in the OSC address
			newInstance = oscAddress_instance;
			*newInstanceCreated = false;
		}
		else{
			// this address already exists
			// get the TTNode at this address
			found->get(0,(TTPtr*)&n_found);

			// Autogenerate a new instance
			n_found->getParent()->generateInstance(n_found->getName(), &newInstance);
			*newInstanceCreated = true;
		}

		// CREATION OF A NEW TTNode
		///////////////////////////

		// 1. Create a new TTNode
		newNode = new TTNode(oscAddress_name, newInstance, newType, newObject, this);

		// 2. Ensure that the path to the new TTNode exists
		if(oscAddress_parent != NO_PARENT){

			// set his parent
			parent_created = false;
			newNode->setParent(oscAddress_parent, &parent_created);

			// add the new TTNode as a children of his parent
			newNode->getParent()->setChild(newNode);
		}
		else
			// the new TTNode is the root : no parent
			;

		// 3. Add the effective address (with the generated instance) to the global hashtab
		newNode->getOscAddress(&oscAddress_got);
		directory->append(oscAddress_got,TTValue(newNode));

		// 4. returned the new TTNode
		*returnedNode = newNode;

		return kTTErrNone;
	}
	return kTTErrGeneric;
}


TTErr TTTree::Lookup(TTSymbolPtr oscAddress, TTListPtr *returnedNodes, TTNodePtr *firstReturnedNode)
{
	TTSymbolPtr oscAddress_parent, oscAddress_name, oscAddress_instance, oscAddress_propertie;
	TTListPtr lk_selection, lk_temp;
	TTNodePtr n_found, n_r;
	TTErr err, err_get;

	// Make sure we are dealing with valid OSC input by looking for a leading slash
	if(oscAddress->getCString()[0]!= S_SEPARATOR[0])
		return kTTErrGeneric;

	// Is there a wild card ?
	if(strrchr(oscAddress->getCString(),S_WILDCARD[0])){
		
		// Split the address /parent/name.instance:propertie
		splitOSCAddress(oscAddress, &oscAddress_parent, &oscAddress_name, &oscAddress_instance, &oscAddress_propertie);

		// Here is a recursive call to the TTTree Lookup to get all TTNodes at upper levels
		err = Lookup(oscAddress_parent, returnedNodes, firstReturnedNode);

		if((err == kTTErrNone) || (err == kTTErrValueNotFound)){
			
			// for each returned TTNodes at upper levels
			// select all corresponding "name.instance" TTNodes
			// among the TTNode list.
			lk_selection = new TTList();
			
			if(!(*returnedNodes)->isEmpty()){
				for((*returnedNodes)->begin(); (*returnedNodes)->end(); (*returnedNodes)->next()){
					
					(*returnedNodes)->current().get(0, (TTPtr*)&n_r);
					err_get = n_r->getChildren(oscAddress_name, oscAddress_instance, &lk_temp);
					
					// if there are children
					// add it to the selection
					if(err_get == kTTErrNone)
							lk_selection->merge(*lk_temp);
				}
			}
			else
				err_get = kTTErrValueNotFound;
			
			*returnedNodes = lk_selection;
			lk_selection->getHead().get(0, (TTObjectPtr*)firstReturnedNode);
			return err_get;
		}
		
		*returnedNodes = NULL;
		*firstReturnedNode = NULL;
		return err;
	}
	// no wild card : do a lookup in the global hashtab
	else{
		err = getNodeForOSC(oscAddress, &n_found);
		*returnedNodes = new TTList();
		(*returnedNodes)->append(new TTValue(n_found));
		*firstReturnedNode = n_found;
		return err;
	}
}

/***********************************************************************************
 *
 *		GLOBAL METHODS
 *
 ************************************************************************************/

TTErr splitOSCAddress(TTSymbolPtr oscAddress, TTSymbolPtr* returnedParentOscAdress, TTSymbolPtr* returnedNodeName, TTSymbolPtr* returnedNodeInstance, TTSymbolPtr* returnedNodePropertie)
{
	long len, pos;
	char *last_colon, *last_slash, *last_dot;
	char *propertie, *parent, *instance;
	char *to_split;

	// Make sure we are dealing with valid OSC input by looking for a leading slash
	if(oscAddress->getCString()[0]!= S_SEPARATOR[0])
		return kTTErrGeneric;

	to_split = (char *)malloc(sizeof(char)*(strlen(oscAddress->getCString())+1));
	strcpy(to_split,oscAddress->getCString());

	// find the last ':' in the OSCaddress
	// if exists, split the OSC address in an address part (to split) and an propertie part
	len = strlen(to_split);
	last_colon = strrchr(to_split,S_PROPERTIE[0]);
	pos = (long)last_colon - (long)to_split;

	if(last_colon){
		propertie = (char *)malloc(sizeof(char)*(len - (pos+1)));
		strcpy(propertie,to_split + pos+1);
		*returnedNodePropertie = TT(propertie);

		to_split[pos] = NULL;	// split to keep only the address part
	}
	else
		*returnedNodePropertie = NO_PROPERTIE;
	
	// find the last '/' in the address part
	// if exists, split the address part in a TTNode part (to split) and a parent part
	len = strlen(to_split);
	last_slash = strrchr(to_split,S_SEPARATOR[0]);
	pos = (long)last_slash - (long)to_split;

	if(last_slash){
		if(pos){ // In the root case pos == 0
			parent = (char *)malloc(sizeof(char)*(pos+1));
			strncpy(parent,to_split,pos);
			parent[pos] = NULL;
			*returnedParentOscAdress = TT(parent);
			to_split = last_slash+1;	// split to keep only the TTNode part
		}
		else{
			// Is it the root or a child of the root ?
			if(strlen(to_split) > 1){
				*returnedParentOscAdress = TT(S_SEPARATOR);
				to_split = last_slash+1;	// split to keep only the TTNode part
			}
			else
				*returnedParentOscAdress = NO_PARENT;
		}
	}
	else
		*returnedParentOscAdress = NO_PARENT;

	// find the last '.' in the TTNode part
	// if exists, split the TTNode part in a name part and an instance part
	len = strlen(to_split);
	last_dot = strrchr(to_split,S_INSTANCE[0]);
	pos = (long)last_dot - (long)to_split;

	if(last_dot > 0){
		instance = (char *)malloc(sizeof(char)*(len - (pos+1)));
		strcpy(instance,to_split + pos+1);
		*returnedNodeInstance = TT(instance);

		to_split[pos] = NULL;	// split to keep only the name part
	}
	else
		*returnedNodeInstance = NO_INSTANCE;

	// TODO : ??? (detect unusual characters in a TTNode name)
	if(strlen(to_split) > 0)
		*returnedNodeName = TT(to_split);
	else
		*returnedNodeName = NO_NAME;

	return kTTErrNone;
}

TTErr mergeOSCAddress(TTSymbolPtr *returnedOscAddress, TTSymbolPtr parent, TTSymbolPtr name, TTSymbolPtr instance, TTSymbolPtr propertie)
{
	char address[256] = "";

	if(parent != NO_PARENT)
		strcat(address,parent->getCString());

	if(name != NO_NAME){
		strcat(address,S_SEPARATOR);
		strcat(address,name->getCString());
	}

	if(instance != NO_INSTANCE){
		strcat(address,S_INSTANCE);
		strcat(address,instance->getCString());
	}

	if(propertie != NO_PROPERTIE){
		strcat(address,S_PROPERTIE);
		strcat(address,propertie->getCString());
	}

	*returnedOscAddress = TT(address);

	return kTTErrNone;
}