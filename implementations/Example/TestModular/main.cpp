#include "TTModular.h"

using namespace std;


void myParameter_return_value_callback(TTPtr baton, TTValue& v);

void myReceiver_return_value_callback(TTPtr baton, TTValue& v);
void myReceiver_return_address_callback(TTPtr baton, TTValue& v);

void myRegistrationObserver_return_value_callback(TTPtr baton, TTValue& v);
void myRegistrationObserver_return_address_callback(TTPtr baton, TTValue& v);

void myUnregistrationObserver_return_value_callback(TTPtr baton, TTValue& v);
void myUnregistrationObserver_return_address_callback(TTPtr baton, TTValue& v);

int 
main(int argc, char **argv) 
{
	TTValue			args;

	TTLogMessage("\n*** Starting my TTModular application *** \n");

	// Initialize TT environments
	/////////////////////////////////////////////////////////
	TTModularInit("TestModularApp");



	// Create a TTReceiver to observe any registration under the root
	//////////////////////////////////////////////////////////////////
	TTReceiverPtr	myRegistrationObserver = NULL;
	TTCallbackPtr	ro_returnAddressCallback = NULL; 
	TTCallbackPtr	ro_returnValueCallback = NULL;
	TTValuePtr		ro_returnAddressBaton, ro_returnValueBaton;
	
	// prepare arguments : see TTReceiver.h to know which args are needed
	args.clear();
	args.append(TTModularDirectory);
	args.append(TT("/"));
	args.append(kTTSym_created);
		
	TTObjectInstantiate(TT("Callback"), TTObjectHandle(&ro_returnAddressCallback), kTTValNONE);
	ro_returnAddressBaton = new TTValue(NULL);	// Here it is NULL but it could be usefull to pass 
												// an object in order to process the returned value
	ro_returnAddressCallback->setAttributeValue(TT("Baton"), TTPtr(ro_returnAddressBaton));
	ro_returnAddressCallback->setAttributeValue(TT("Function"), TTPtr(&myRegistrationObserver_return_address_callback));
	args.append(ro_returnAddressCallback);
	

	TTObjectInstantiate(TT("Callback"), TTObjectHandle(&ro_returnValueCallback), kTTValNONE);
	ro_returnValueBaton = new TTValue(NULL);	// Here it is NULL but it could be usefull to pass 
												// an object in order to process the returned address;
	ro_returnValueCallback->setAttributeValue(TT("Baton"), TTPtr(ro_returnValueBaton));
	ro_returnValueCallback->setAttributeValue(TT("Function"), TTPtr(&myRegistrationObserver_return_value_callback));
	args.append(ro_returnValueCallback);
		
	TTObjectInstantiate(TT("Receiver"), TTObjectHandle(&myRegistrationObserver), args);


	// Create a TTReceiver to observe any unregistration under the root
	//////////////////////////////////////////////////////////////////
	TTReceiverPtr	myUnregistrationObserver = NULL;
	TTCallbackPtr	uo_returnAddressCallback = NULL; 
	TTCallbackPtr	uo_returnValueCallback = NULL;
	TTValuePtr		uo_returnAddressBaton, uo_returnValueBaton;
	
	// prepare arguments : see TTReceiver.h to know which args are needed
	args.clear();
	args.append(TTModularDirectory);
	args.append(TT("/"));
	args.append(kTTSym_destroyed);
		
	TTObjectInstantiate(TT("Callback"), TTObjectHandle(&uo_returnAddressCallback), kTTValNONE);
	uo_returnAddressBaton = new TTValue(NULL);	// Here it is NULL but it could be usefull to pass 
												// an object in order to process the returned value
	uo_returnAddressCallback->setAttributeValue(TT("Baton"), TTPtr(uo_returnAddressBaton));
	uo_returnAddressCallback->setAttributeValue(TT("Function"), TTPtr(&myUnregistrationObserver_return_address_callback));
	args.append(uo_returnAddressCallback);
	

	TTObjectInstantiate(TT("Callback"), TTObjectHandle(&uo_returnValueCallback), kTTValNONE);
	uo_returnValueBaton = new TTValue(NULL);	// Here it is NULL but it could be usefull to pass 
												// an object in order to process the returned address;
	uo_returnValueCallback->setAttributeValue(TT("Baton"), TTPtr(uo_returnValueBaton));
	uo_returnValueCallback->setAttributeValue(TT("Function"), TTPtr(&myUnregistrationObserver_return_value_callback));
	args.append(uo_returnValueCallback);
		
	TTObjectInstantiate(TT("Receiver"), TTObjectHandle(&myUnregistrationObserver), args);


	// Create a TTParameter
	/////////////////////////////////////////////////////////
	TTParameterPtr	myParameter = NULL;
	TTCallbackPtr	p_returnValueCallback = NULL;
	TTValuePtr		p_returnValueBaton;
	
	// prepare arguments : see TTParameter.h to know which args are needed
	args.clear();
	TTObjectInstantiate(TT("Callback"), TTObjectHandle(&p_returnValueCallback), kTTValNONE);
	p_returnValueBaton = new TTValue(NULL);		// Here it is NULL but it could be usefull to pass 
												// an object in order to process the returned value
	p_returnValueCallback->setAttributeValue(TT("Baton"), TTPtr(p_returnValueBaton));
	p_returnValueCallback->setAttributeValue(TT("Function"), TTPtr(&myParameter_return_value_callback));
	args.append(p_returnValueCallback);
	
	// create an instance of TTParameter
	TTObjectInstantiate(TT("Parameter"), TTObjectHandle(&myParameter), args);

	// set TTParameter mType attribute as integer
	myParameter->setAttributeValue(kTTSym_Type, kTTSym_integer);

	// set TTParameter mValueDefault attribute as 0
	myParameter->setAttributeValue(kTTSym_ValueDefault, 0);


	// Register a TTObject into the TTModularDirectory
	/////////////////////////////////////////////////////////
	TTLogMessage("\n*** Register myParameter into the TTModularDirectory *** \n");
	TTNodePtr		returnedNode;
	TTBoolean		newInstanceCreated;

	TTModularDirectory->TTNodeCreate(TT("/audio/filter/frequency"), myParameter, NULL, &returnedNode, &newInstanceCreated);
	// note : our myRegistrationObserver is informed



	// Create a TTReceiver to observe the mValue attribute of /audio/filter/frequency
	////////////////////////////////////////////////////////////////////
	TTReceiverPtr	myReceiver = NULL;
	TTCallbackPtr	r_returnAddressCallback = NULL; 
	TTCallbackPtr	r_returnValueCallback = NULL;
	TTValuePtr		r_returnAddressBaton, r_returnValueBaton;
	
	// prepare arguments : see TTReceiver.h to know which args are needed
	args.clear();
	args.append(TTModularDirectory);
	args.append(TT("/audio/filter/frequency"));
	args.append(kTTSym_Value);
		
	TTObjectInstantiate(TT("Callback"), TTObjectHandle(&r_returnAddressCallback), kTTValNONE);
	r_returnAddressBaton = new TTValue(NULL);		// Here it is NULL but it could be usefull to pass 
												// an object in order to process the returned value
	r_returnAddressCallback->setAttributeValue(TT("Baton"), TTPtr(r_returnAddressBaton));
	r_returnAddressCallback->setAttributeValue(TT("Function"), TTPtr(&myReceiver_return_address_callback));
	args.append(r_returnAddressCallback);
	

	TTObjectInstantiate(TT("Callback"), TTObjectHandle(&r_returnValueCallback), kTTValNONE);
	r_returnValueBaton = new TTValue(NULL);		// Here it is NULL but it could be usefull to pass 
												// an object in order to process the returned address;
	r_returnValueCallback->setAttributeValue(TT("Baton"), TTPtr(r_returnValueBaton));
	r_returnValueCallback->setAttributeValue(TT("Function"), TTPtr(&myReceiver_return_value_callback));
	args.append(r_returnValueCallback);
		
	TTObjectInstantiate(TT("Receiver"), TTObjectHandle(&myReceiver), args);
	


	// Create a TTSender to set mValue attribute of /audio/filter/frequency
	//////////////////////////////////////////////////////////////////
	TTSenderPtr	mySender = NULL;

	// prepare arguments : see TTSender.h to know which args are needed
	args.clear();
	args.append(TTModularDirectory);
	args.append(TT("/audio/filter/frequency"));
	args.append(kTTSym_Value);
		
	TTObjectInstantiate(TT("Sender"), TTObjectHandle(&mySender), args);



	// Set mValue attribute of our parameter directly
	//////////////////////////////////////////////////////////////////
	TTLogMessage("\n*** Set mValue attribute of our parameter directly *** \n");
	TTValue	v = TTValue(1);
	myParameter->setAttributeValue(kTTSym_Value, v);
	// note : the value is returned by the Parameter and the Receiver



	// Set mValue attribute of our parameter using mySender
	//////////////////////////////////////////////////////////////////
	TTLogMessage("\n*** Set mValue attribute of our parameter using mySender *** \n");
	v = TTValue(2);
	mySender->sendMessage(kTTSym_Send, v);
	// note : the value is returned by the Parameter and the Receiver



	// Get our parameter using TTModularDirectory
	//////////////////////////////////////////////////////////////////
	TTLogMessage("\n*** Get some attribute of our parameter using TTModularDirectory *** \n");
	// get the node which represent our parameter
	TTList			aNodeList;
	TTNodePtr		aNode;
	TTModularDirectory->Lookup(TT("/audio/filter/frequency"), aNodeList, &aNode);

	// get the object store in the node
	TTParameterPtr	anObject;
	aNode->getAttributeValue(kTTSym_Object, v);
	v.get(0, (TTPtr*)&anObject);

	if (anObject == myParameter)
		TTLogMessage("anObject is myParameter \n");

	// get the mValue attribute value of the object
	v.clear();
	anObject->getAttributeValue(kTTSym_Value, v);

	// print the value
	TTString s;
	v.toString();
	v.get(0, s);
	TTLogMessage("anObject mValue is %s \n", s.data());

	// get the mValueDefault attribute value of the object
	v.clear();
	anObject->getAttributeValue(kTTSym_ValueDefault, v);

	// print the value
	v.toString();
	v.get(0, s);
	TTLogMessage("anObject mValueDefault is %s \n", s.data());

	// reset the mValue to mValueDefault
	TTLogMessage("\n*** reset the mValue to mValueDefault *** \n");
	anObject->sendMessage(TT("Reset"));
	// note : the value is returned by the Parameter and the Receiver

	// Unregister /audio/filter/frequency from the TTModularDirectory
	//////////////////////////////////////////////////////////////////
	TTLogMessage("\n*** Unregister myParameter from the TTModularDirectory *** \n");
	TTModularDirectory->TTNodeRemove(TT("/audio/filter/frequency"));
	// note : our myUnregistrationObserver is informed



	// Delete every TTObject and TTValuePtr
	//////////////////////////////////////////////////////////////////
	TTObjectRelease(TTObjectHandle(&myRegistrationObserver));
	TTObjectRelease(TTObjectHandle(&ro_returnAddressCallback)); 
	TTObjectRelease(TTObjectHandle(&ro_returnValueCallback));
	delete ro_returnAddressBaton;
	delete ro_returnValueBaton;

	TTObjectRelease(TTObjectHandle(&myUnregistrationObserver));
	TTObjectRelease(TTObjectHandle(&uo_returnAddressCallback)); 
	TTObjectRelease(TTObjectHandle(&uo_returnValueCallback));
	delete uo_returnAddressBaton;
	delete uo_returnValueBaton;

	TTObjectRelease(TTObjectHandle(&myReceiver));
	TTObjectRelease(TTObjectHandle(&r_returnAddressCallback)); 
	TTObjectRelease(TTObjectHandle(&r_returnValueCallback));
	delete r_returnAddressBaton;
	delete r_returnValueBaton;

	TTObjectRelease(TTObjectHandle(&myParameter));
	TTObjectRelease(TTObjectHandle(&p_returnValueCallback));
	delete p_returnValueBaton;

	TTObjectRelease(TTObjectHandle(&mySender));

	TTLogMessage("\n*** Ending my TTModular application *** \n");

	return EXIT_SUCCESS;
}

void myParameter_return_value_callback(TTPtr baton, TTValue& v)
{
	TTValuePtr	b;
	TTPtr		x;
	TTString	s;	

	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&x);			// Here x is NULL but it could be usefull to pass 
									// an object in order to process the returned value

	// print the returned value
	v.toString();
	v.get(0, s);
	TTLogMessage("myParameter returns %s \n", s.data());
}

void myReceiver_return_value_callback(TTPtr baton, TTValue& v)
{
	TTValuePtr	b;
	TTPtr		x;
	TTString	s;	

	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&x);			// Here x is NULL but it could be usefull to pass 
									// an object in order to process the returned value

	// print the returned value
	v.toString();
	v.get(0, s);
	TTLogMessage("myReceiver returns %s \n", s.data());
}

void myReceiver_return_address_callback(TTPtr baton, TTValue& v)
{
	TTValuePtr	b;
	TTPtr		x;
	TTSymbolPtr	s;	

	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&x);			// Here x is NULL but it could be usefull to pass 
									// an object in order to process the returned address

	// print the returned value
	v.get(0, &s);
	TTLogMessage("myReceiver returns %s \n", s->getCString());
}

void myRegistrationObserver_return_value_callback(TTPtr baton, TTValue& v)
{
	// No value returned during registration observe 
}

void myRegistrationObserver_return_address_callback(TTPtr baton, TTValue& v)
{
	TTValuePtr	b;
	TTPtr		x;
	TTSymbolPtr	s;	

	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&x);			// Here x is NULL but it could be usefull to pass 
									// an object in order to process the returned address

	// print the returned value
	v.get(0, &s);
	TTLogMessage("myRegistrationObserver returns %s \n", s->getCString());
}

void myUnregistrationObserver_return_value_callback(TTPtr baton, TTValue& v)
{
	// No value returned during registration observe
}

void myUnregistrationObserver_return_address_callback(TTPtr baton, TTValue& v)
{
	TTValuePtr	b;
	TTPtr		x;
	TTSymbolPtr	s;	

	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&x);			// Here x is NULL but it could be usefull to pass 
									// an object in order to process the returned address

	// print the returned value
	v.get(0, &s);
	TTLogMessage("myUnregistrationObserver returns %s \n", s->getCString());
}