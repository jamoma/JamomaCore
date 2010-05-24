/* 
 * A Receiver Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTReceiver.h"

#define thisTTClass			TTReceiver
#define thisTTClassName		"Receiver"
#define thisTTClassTags		"node, receiver"

TT_MODULAR_CONSTRUCTOR,
mDirectory(NULL), mAddress(kTTSymEmpty), mAttribute(kTTSym_value)
{
	TT_ASSERT("Correct number of args to create TTReceiver", arguments.getSize() == 3);
	
	arguments.get(0, TTObjectHandle(&mDirectory));
	TT_ASSERT("Directory passed to TTReceiver is not NULL", mDirectory);
	arguments.get(1, &mAddress);
	arguments.get(2, &mAttribute);
	
	// Set Defaults (the attribute setters will set the process method for us)...
	setAttributeValue(TT("Enable"),	kTTBoolYes);
	
	addAttributeWithSetter(Address, kTypeSymbol);
	addAttributeWithSetter(Attribute, kTypeSymbol);
	addAttributeWithSetter(Enable, kTypeBoolean);
	
	addMessage(get);
}

TTReceiver::~TTReceiver()
{;}

TTErr TTReceiver::setAddress(const TTValue& newValue)
{
	unbind();
	mAddress = newValue;
	bind();
	return kTTErrNone;
}

TTErr TTReceiver::setAttribute(const TTValue& newValue)
{
	mAttribute = newValue;
	
	if (mAttribute == NO_ATTRIBUTE)
		mAttribute = kTTSym_value;
	
	return kTTErrNone;
}

TTErr TTReceiver::setEnable(const TTValue& newValue)
{
	mEnable = newValue;
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTReceiver::get()
{
	TTNodePtr	aNode;
	TTSymbolPtr	oscAddress;
	TTString	fullAddress;
	TTValue		data;
	TTErr		err;
	
	if (!mNodesCache->isEmpty()) {
		
		// for each node of the selection
		for (mNodesCache->begin(); mNodesCache->end(); mNodesCache->next()) {
			
			// get a node from the selection
			mNodesCache->current().get(0,(TTPtr*)&aNode);
			
			// get the value of the attribute
			err = aNode->getAttributeValue(mAttribute, data);;
			
			if (!err) {
				
				// output the OSCAddress of the node (in case we use * inside the x->attrname)
				aNode->getOscAddress(&oscAddress);
				fullAddress = oscAddress->getCString();
				if (mAttribute != kTTSym_value) {
					fullAddress += C_PROPERTY;
					fullAddress += mAttribute->getCString();
				}
				//  TODO : outlet_anything(x->address_out, gensym((char*)fullAddress.data()), 0, NULL);
				
				// then output data as a list
				// TODO : outlet_list(x->data_out, 0L, argc, argv);
			}
			else
				;// TODO : object_error((t_object*)x,"%s doesn't exist", x->attr_name->s_name);
		}
	}
	
	return kTTErrNone;
}

TTErr TTReceiver::bind()
{
	TTSymbolPtr		oscAddress;
	TTAttributePtr	anAttribute = NULL;
	TTObjectPtr		newObserver;
	TTNodePtr		aNode;
	TTValuePtr		newBaton, newCouple;
	TTErr			err = kTTErrNone;
	
	mNodesCache = new TTList();
	
	// for any Attribute observation except created, destroyed and initialized
	if ((mAttribute != TT("created")) && (mAttribute != TT("destroyed")) && (mAttribute != TT("initialized")))
	{
		// Look for node(s) into the directory
		err = mDirectory->Lookup(mAddress, *mNodesCache, &aNode);
		
		// Start attribute observation on each existing node of the selection
		if (!err) {
			
			for (mNodesCache->begin(); mNodesCache->end(); mNodesCache->next())
			{
				// get a node from the selection
				mNodesCache->current().get(0,(TTPtr*)&aNode);
				
				// prepare the callback mecanism to
				// be notified about changing value attribute
				// if the attribute exist
				err = aNode->findAttribute(mAttribute, &anAttribute);
				
				if (!err) {
					
					newObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
					TTObjectInstantiate(TT("Callback"), &newObserver, kTTValNONE);
					
					newBaton = new TTValue(TTPtr(this));
					aNode->getOscAddress(&oscAddress);
					newBaton->append(TTPtr(oscAddress));
					
					newObserver->setAttributeValue(TT("Baton"), TTPtr(newBaton));
					newObserver->setAttributeValue(TT("Function"), TTPtr(&TTReceiverAttrCallback));
					
					newObserver->setAttributeValue(TT("Owner"), TT("TTReceiver"));					// this is usefull only to debug
					
					anAttribute->registerObserverForNotifications(*newObserver);
					
					// memorize the node and his attribute observer
					newCouple = new TTValue((TTPtr)aNode);
					newCouple->append((TTPtr)newObserver);
					mAttrObservers->appendUnique(newCouple);
				}
			}
		}
		
		// 3. observe any creation or destruction below the attr_name address
		mObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
		TTObjectInstantiate(TT("Callback"), &mObserver, kTTValNONE);
		
		newBaton = new TTValue(TTPtr(this));
		newBaton->append(TTPtr(kTTSymEmpty));
		
		mObserver->setAttributeValue(TT("Baton"), TTPtr(newBaton));
		mObserver->setAttributeValue(TT("Function"), TTPtr(&TTReceiverDirectoryCallback));
		
		mObserver->setAttributeValue(TT("Owner"), TT("TTReceiver"));							// this is usefull only to debug
		
		mDirectory->addObserverForNotifications(mAddress, *mObserver);
	}

	return kTTErrNone;
}

TTErr TTReceiver::unbind()
{
	TTErr err = kTTErrNone;	
	
	delete mNodesCache;
	mNodesCache = NULL;
	
	// stop life cycle observation
	if (mObserver) {
		
		err = mDirectory->removeObserverForNotifications(mAddress, *mObserver);
		
		if(!err)
			TTObjectRelease(&mObserver);
	}
	
	return kTTErrNone;
}

TTErr TTReceiver::directoryNotification(TTPtr baton, TTValue& data)
{
	TTSymbolPtr		oscAddress;
	TTAttributePtr	anAttribute = NULL;
	TTObjectPtr		newObserver, oldObserver;
	TTNodePtr		aNode, p_node;
	TTValue			c;
	long			flag;
	TTBoolean		found;
	TTCallbackPtr	anObserver;
	TTValuePtr		newBaton, newCouple;
	TTErr			err;
	
	// Unpack data (oscAddress, aNode, flag, anObserver)
	data.get(0, (TTPtr*)&oscAddress);
	data.get(1, (TTPtr*)&aNode);
	data.get(2, flag);
	data.get(3, TTObjectHandle(&anObserver));
	
	switch (flag) {
			
		case kAddressCreated :
		{
			
			if (mAttribute == TT("created"))
			{
				// TODO : output the oscAddress of the new node
				//outlet_anything(x->address_out, oscAddress, 0, NULL);
			}
			else if ( (mAttribute != TT("destroyed")) && (mAttribute != TT("initialized")) )
			{
				// is the observer already exist ?
				found = false;
				if(mAttrObservers){
					
					// for each node of the selection
					for(mAttrObservers->begin(); mAttrObservers->end(); mAttrObservers->next()) {
						
						// get the node of the couple
						mAttrObservers->current().get(0, (TTPtr*)&p_node);
						
						// compare it to the receive node
						if(p_node == aNode)
							found = true;
					}
				}
				
				if(!found)
				{
					// prepare the callback mecanism to
					// be notified about changing value attribute
					// if the attribute exist
					err = aNode->findAttribute(mAttribute, &anAttribute);
					
					if (!err) {
						
						newObserver = NULL; // without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
						TTObjectInstantiate(TT("Callback"), &newObserver, kTTValNONE);
						
						newBaton = new TTValue(TTPtr(this));
						newBaton->append(TTPtr(oscAddress));
						
						newObserver->setAttributeValue(TT("Baton"), TTPtr(newBaton));
						newObserver->setAttributeValue(TT("Function"), TTPtr(&TTReceiverAttrCallback));
						
						newObserver->setAttributeValue(TT("Owner"), TT("TTReceiver"));			// this is usefull only to debug
						
						anAttribute->registerObserverForNotifications(*newObserver);
						
						// memorize the node and his attribute observer
						newCouple = new TTValue((TTPtr)aNode);
						newCouple->append((TTPtr)newObserver);
						mAttrObservers->appendUnique(newCouple);
					}
				}
			}
			
			break;
		}
			
		case kAddressDestroyed :
		{
			if (mAttribute == TT("destroyed"))
			{
				// TODO : output the OSCAddress of the old node
				//outlet_anything(x->address_out, oscAddress, 0, NULL);
			}
			else if ( (mAttribute != TT("created")) && (mAttribute != TT("initialized")) )
			{
				// look at the node among memorized <node, observer>
					
					// for each node of the selection
					for(mNodesCache->begin(); mNodesCache->end(); mNodesCache->next()){
						
						// get a couple
						c = mNodesCache->current();
						
						// get the node of the couple
						c.get(0, (TTPtr*)&p_node);
						
						// compare it to the receive node
						if(p_node == aNode){
							
							// get the observer of the couple
							c.get(1, (TTPtr*)&oldObserver);
							
							// stop attribute observation of the node
							// if the attribute exist
							err = aNode->findAttribute(mAttribute, &anAttribute);
							
							if(!err){
								
								err = anAttribute->unregisterObserverForNotifications(*oldObserver);
								
								if(!err)
									TTObjectRelease(&oldObserver);
							}
							
							// forget this couple
							mNodesCache->remove(c);
						}
					}
			}
			break;
		}
			
		case kAddressInitialized :
		{
			//post("jcom.receive %s observe a node initialisation at %s", x->attr_name->s_name, oscAddress->s_name);
			
			if(mAttribute == TT("initialized"))
			{
				// TODO : output the OSCAddress of the initialized node
				//outlet_anything(x->address_out, oscAddress, 0, NULL);
			}
			break;
		}
			
		default:
			break;
	}
	
	return kTTErrNone;
}

TTErr TTReceiver::attrNotification(TTPtr baton, TTValue& data)
{
	if(mEnable) {
		
		// TODO : output the OSCAddress of the node (in case we use * inside the x->attrname)
		// outlet_anything(x->address_out, (t_symbol *)mess, 0, NULL);
		
		// TODO then output data as a list
		// outlet_list(x->data_out, 0L, argc, argv);
	}
	
	return kTTErrNone;
}

TTErr TTReceiverDirectoryCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b;
	TTReceiverPtr	aNodeReceiver;
	TTSymbolPtr			aSymbol;
	
	// unpack baton (a TTObject and the name of the message to call)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aNodeReceiver);
	b->get(1, (TTPtr*)&aSymbol);
	
	return aNodeReceiver->directoryNotification(baton, data);
}

TTErr TTReceiverAttrCallback(TTPtr baton, TTValue& data)
{
	TTValuePtr			b;
	TTReceiverPtr	aNodeReceiver;
	TTSymbolPtr			aSymbol;
	
	// unpack baton (a TTObject and the name of the message to call)
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&aNodeReceiver);
	b->get(1, (TTPtr*)&aSymbol);
	
	return aNodeReceiver->attrNotification(baton, data);
}