/* 
 * NodeDirectory
 * Copyright © 2008, Théo de la Hogue & Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "NodeDirectory.h"

#define thisTTClass			NodeDirectory
#define thisTTClassName		"NodeDirectory"
#define thisTTClassTags		"tree"

NodeDirectory::NodeDirectory(TTSymbolPtr newName):TTObject(*kTTValNONE)
{
	TTBoolean *nodeCreated = new TTBoolean(false);
	
	// Set the name of the tree
	this->name = newName;
	
	// create a new directory
	this->directory = new TTHash();

	// create a root (OSC style)
	NodeCreate(S_SEPARATOR, TT("container"), NULL, &this->root, nodeCreated);
}

NodeDirectory::~NodeDirectory()
{
	// TODO : delete all the node of the directory then the directory
	// WARNING : if you destroy all the directory, the root will be destroyed too
	// so don't destroy it again !!!
	this->root->~Node();
}

#if 0
#pragma mark -
#pragma mark Static Methods
#endif

TTSymbolPtr	NodeDirectory::getName(){return this->name;}
NodePtr	NodeDirectory::getRoot(){return this->root;}
TTHashPtr	NodeDirectory::getDirectory(){return this->directory;}

TTErr NodeDirectory::setName(TTSymbolPtr aName)
{
	this->name = aName;
	return kTTErrNone;
}


TTErr NodeDirectory::getNodeForOSC(const char* oscAddress, NodePtr* returnedNode)
{
	return getNodeForOSC(TT((char*)oscAddress), returnedNode);
}

TTErr NodeDirectory::getNodeForOSC(TTSymbolPtr oscAddress, NodePtr* returnedNode)
{
	TTErr err;
	TTValue* found = new TTValue();
	
	if(directory){
		// look into the hashtab to check if the address exist in the tree
		err = this->directory->lookup(oscAddress,*found);

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

TTErr NodeDirectory::NodeCreate(TTSymbolPtr oscAddress, TTSymbolPtr newType, void *newObject, NodePtr *returnedNode, TTBoolean *newInstanceCreated)
{
	TTSymbolPtr oscAddress_parent, oscAddress_name, oscAddress_instance, oscAddress_propertie, newInstance, oscAddress_got;
	TTBoolean parent_created;
	TTValue* found;
	NodePtr newNode, n_found;
	TTErr err;

	// Split the OSC address in /parent/name.instance:/propertie
	err = splitOSCAddress(oscAddress,&oscAddress_parent,&oscAddress_name, &oscAddress_instance, &oscAddress_propertie);

	// if no error in the parsing of the OSC address
	if(err == kTTErrNone){

		// If there is a propertie part
		if(oscAddress_propertie != NO_PROPERTIE){

			// get the Node
			mergeOSCAddress(&oscAddress_got,oscAddress_parent,oscAddress_name,oscAddress_instance,NO_PROPERTIE);
			found = new TTValue();
			err = this->directory->lookup(oscAddress_got, *found);

			// if the Node doesn't exist
			if(err == kTTErrValueNotFound)
				return kTTErrGeneric;

			else{
				// get the Node at this address
				found->get(0,(TTPtr*)&n_found);
				n_found->addPropertie(oscAddress_propertie, NULL, NULL);  // TODO : advise the user that he is creating an attribut without any access (get and set) method

				return kTTErrNone;
			}
		}

		// is there a Node with this address in the tree ?
		found = new TTValue();
		err = this->directory->lookup(oscAddress, *found);

		// if it's the first at this address
		if(err == kTTErrValueNotFound){
			// keep the instance found in the OSC address
			newInstance = oscAddress_instance;
			*newInstanceCreated = false;
		}
		else{
			// this address already exists
			// get the Node at this address
			found->get(0,(TTPtr*)&n_found);

			// Autogenerate a new instance
			n_found->getParent()->generateInstance(n_found->getName(), &newInstance);
			*newInstanceCreated = true;
		}

		// CREATION OF A NEW Node
		///////////////////////////

		// 1. Create a new Node
		newNode = new Node(oscAddress_name, newInstance, newType, newObject, this);

		// 2. Ensure that the path to the new Node exists
		if(oscAddress_parent != NO_PARENT){

			// set his parent
			parent_created = false;
			newNode->setParent(oscAddress_parent, &parent_created);

			// add the new Node as a children of his parent
			newNode->getParent()->setChild(newNode);
		}
		else
			// the new Node is the root : no parent
			;

		// 3. Add the effective address (with the generated instance) to the global hashtab
		newNode->getOscAddress(&oscAddress_got);
		this->directory->append(oscAddress_got,TTValue(newNode));

		// 4. returned the new Node
		*returnedNode = newNode;

		return kTTErrNone;
	}
	return kTTErrGeneric;
}

TTErr NodeDirectory::NodeRemove(TTSymbolPtr oscAddress)
{
	return this->directory->remove(oscAddress);
}

TTErr NodeDirectory::Lookup(TTSymbolPtr oscAddress, TTListPtr *returnedNodes, NodePtr *firstReturnedNode)
{
	TTSymbolPtr oscAddress_parent, oscAddress_name, oscAddress_instance, oscAddress_propertie, oscAddress_nopropertie;
	TTListPtr lk_selection, lk_temp;
	NodePtr n_found, n_r;
	TTErr err, err_get;

	// Make sure we are dealing with valid OSC input by looking for a leading slash
	if(oscAddress->getCString()[0]!= C_SEPARATOR)
		return kTTErrGeneric;
	
	// Split the address /parent/name.instance:propertie
	splitOSCAddress(oscAddress, &oscAddress_parent, &oscAddress_name, &oscAddress_instance, &oscAddress_propertie);

	// Is there a wild card ?
	if(strrchr(oscAddress->getCString(), C_WILDCARD)){

		// Here is a recursive call to the NodeDirectory Lookup to get all Nodes at upper levels
		err = Lookup(oscAddress_parent, returnedNodes, firstReturnedNode);

		if((err == kTTErrNone) || (err == kTTErrValueNotFound)){
			
			// for each returned Nodes at upper levels
			// select all corresponding "name.instance" Nodes
			// among the Node list.
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
			if(!lk_selection->isEmpty())
				lk_selection->getHead().get(0, (TTObjectPtr*)firstReturnedNode);
			return err_get;
		}
		
		*returnedNodes = NULL;
		*firstReturnedNode = NULL;
		return err;
	}
	// no wild card : do a lookup in the global hashtab 
	// with the /parent/node.instance part (no propertie)
	else{
		
		// be sure there is no propertie part
		if(oscAddress_propertie != NO_PROPERTIE)
			mergeOSCAddress(&oscAddress_nopropertie, oscAddress_parent, oscAddress_name, oscAddress_instance, NO_PROPERTIE);
		else
			oscAddress_nopropertie = oscAddress;
		
		// look into the hashtab
		err = getNodeForOSC(oscAddress_nopropertie, &n_found);
		
		// is the propertie exists ?
		
		
		*returnedNodes = new TTList();
		(*returnedNodes)->append(new TTValue(n_found));
		*firstReturnedNode = n_found;
		return err;
	}
}

TTErr	NodeDirectory::LookingFor(TTListPtr whereToSearch, bool(testFunction)(NodePtr node, void*args), void *argument, TTListPtr *returnedNodes, NodePtr *firstReturnedNode)
{
	TTListPtr lk_children;
	NodePtr n_r, n_child;
	TTErr err, err_look;
	
	// if there are nodes from where to start
	if(!whereToSearch->isEmpty()){
		
		// Launch a recursive research below each given nodes
		for(whereToSearch->begin(); whereToSearch->end(); whereToSearch->next()){
			
			// get all children of the node
			whereToSearch->current().get(0, (TTPtr*)&n_r);
			err = n_r->getChildren(S_WILDCARD, S_WILDCARD, &lk_children);
			
			// if there are children
			if(err == kTTErrNone){
				
				// test each of them and add those which are ok
				for(lk_children->begin(); lk_children->end(); lk_children->next()){
					
					lk_children->current().get(0, (TTPtr*)&n_child);
					
					// test the child and fill the returnedNodes
					if(testFunction(n_child, argument))
						(*returnedNodes)->append(new TTValue((TTPtr)n_child));
				}
				
				// continu the research from all children
				err_look = LookingFor(lk_children, testFunction, argument, returnedNodes, firstReturnedNode);
				
				(*returnedNodes)->begin();
				(*returnedNodes)->current().get(0, (TTPtr*)firstReturnedNode);

				if(err_look != kTTErrNone)
					return err_look;
			}
		}
		return kTTErrNone;
	}
	return kTTErrGeneric;
}

TTErr	NodeDirectory::IsThere(TTListPtr whereToSearch, bool(testFunction)(NodePtr node, void*args), void *argument, bool *isThere, NodePtr *firstNode)
{
	TTListPtr lk_children;
	NodePtr n_r, n_child;
	TTErr err, err_look;
	
	// if there are nodes from where to start
	if(!whereToSearch->isEmpty()){
		
		// Launch a recursive research below each given nodes
		for(whereToSearch->begin(); whereToSearch->end(); whereToSearch->next()){
			
			// get all children of the node
			whereToSearch->current().get(0, (TTPtr*)&n_r);
			err = n_r->getChildren(S_WILDCARD, S_WILDCARD, &lk_children);
			
			// if there are children
			if(err == kTTErrNone){
				
				// test each of them and add those which are ok
				for(lk_children->begin(); lk_children->end(); lk_children->next()){
					
					lk_children->current().get(0, (TTPtr*)&n_child);
					
					// test the child and fill the returnedNodes
					if(testFunction(n_child, argument)){
						(*isThere) = true;
						(*firstNode) = n_child;
						return kTTErrNone;
					}
					else
						(*isThere) = false;
				}
				
				// continu the research from all children
				err_look = IsThere(lk_children, testFunction, argument, isThere, firstNode);
				
				if(err_look != kTTErrNone)
					return err_look;
				
				// if a node is found below, stop the research
				if((*isThere))
					return kTTErrNone;
			}
			else
				(*isThere) = false;
		}
		return kTTErrNone;
	}
	return kTTErrGeneric;
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
	if(oscAddress->getCString()[0]!= C_SEPARATOR)
		return kTTErrGeneric;

	to_split = (char *)malloc(sizeof(char)*(strlen(oscAddress->getCString())+1));
	strcpy(to_split,oscAddress->getCString());

	// find the last ':' in the OSCaddress
	// if exists, split the OSC address in an address part (to split) and an propertie part
	len = strlen(to_split);
	last_colon = strrchr(to_split, C_PROPERTIE);
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
	// if exists, split the address part in a Node part (to split) and a parent part
	len = strlen(to_split);
	last_slash = strrchr(to_split, C_SEPARATOR);
	pos = (long)last_slash - (long)to_split;

	if(last_slash){
		if(pos){ // In the root case pos == 0
			parent = (char *)malloc(sizeof(char)*(pos+1));
			strncpy(parent,to_split,pos);
			parent[pos] = NULL;
			*returnedParentOscAdress = TT(parent);
			to_split = last_slash+1;	// split to keep only the Node part
		}
		else{
			// Is it the root or a child of the root ?
			if(strlen(to_split) > 1){
				*returnedParentOscAdress = S_SEPARATOR;
				to_split = last_slash+1;	// split to keep only the Node part
			}
			else
				*returnedParentOscAdress = NO_PARENT;
		}
	}
	else
		*returnedParentOscAdress = NO_PARENT;

	// find the last '.' in the Node part
	// if exists, split the Node part in a name part and an instance part
	len = strlen(to_split);
	last_dot = strrchr(to_split,C_INSTANCE);
	pos = (long)last_dot - (long)to_split;

	if(last_dot > 0){
		instance = (char *)malloc(sizeof(char)*(len - (pos+1)));
		strcpy(instance,to_split + pos+1);
		*returnedNodeInstance = TT(instance);

		to_split[pos] = NULL;	// split to keep only the name part
	}
	else
		*returnedNodeInstance = NO_INSTANCE;

	// TODO : ??? (detect unusual characters in a Node name)
	if(strlen(to_split) > 0)
		*returnedNodeName = TT(to_split);
	else
		*returnedNodeName = NO_NAME;

	return kTTErrNone;
}

TTErr mergeOSCAddress(TTSymbolPtr *returnedOscAddress, TTSymbolPtr parent, TTSymbolPtr name, TTSymbolPtr instance, TTSymbolPtr propertie)
{
	TTString address;

	if(parent != NO_PARENT)
		address = parent->getCString();

	if(name != NO_NAME){
		address += S_SEPARATOR->getCString();
		address += name->getCString();
	}

	if(instance != NO_INSTANCE){
		address += S_INSTANCE->getCString();
		address += instance->getCString();
	}

	if(propertie != NO_PROPERTIE){
		address += S_PROPERTIE->getCString();
		address += propertie->getCString();
	}

	*returnedOscAddress = TT(address);

	return kTTErrNone;
}