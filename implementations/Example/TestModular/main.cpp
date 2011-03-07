#include "TTModular.h"

using namespace std;

#define APP_NAME		TT("TestModularApp")
#define	PLUGINS_PATH	"C:\\Users\\Laurent Garnier\\Travail\\Galamus\\Jamoma\\Modules\\Modular\\library\\DeviceManagerLib\\Plugins"
#define CONFIG_PATH		TT("C:\\Users\\Laurent Garnier\\Travail\\Galamus\\Jamoma\\Modules\\Modular\\implementations\\Example\\Config.xml")

void myData_return_value_callback(TTPtr baton, TTValue& v);

void myReceiver_return_value_callback(TTPtr baton, TTValue& v);
void myReceiver_return_address_callback(TTPtr baton, TTValue& v);

void myRegistrationObserver_return_value_callback(TTPtr baton, TTValue& v);
void myRegistrationObserver_return_address_callback(TTPtr baton, TTValue& v);

void myUnregistrationObserver_return_value_callback(TTPtr baton, TTValue& v);
void myUnregistrationObserver_return_address_callback(TTPtr baton, TTValue& v);

int 
main(int argc, char **argv) 
{
	TTValue				args;
	TTApplicationPtr	mApplication = NULL;
	TTNodeDirectoryPtr	mDirectory	 = NULL;	

	TTLogMessage("\n*** Starting my TTModular application *** \n");

	// Initialize TT environments
	/////////////////////////////////////////////////////////
	TTModularInit("TestModularApp", "");
	
	mApplication	= (TTApplicationPtr)TTModularGetApplication(APP_NAME);
	mDirectory		= TTApplicationGetDirectory(TTObjectPtr(mApplication));


	// Create a TTReceiver to observe any registration under the root
	//////////////////////////////////////////////////////////////////
	TTReceiverPtr	myRegistrationObserver = NULL;
	TTCallbackPtr	ro_returnAddressCallback = NULL; 
	TTCallbackPtr	ro_returnValueCallback = NULL;
	TTValuePtr		ro_returnAddressBaton, ro_returnValueBaton;
	
	// prepare arguments : see TTReceiver.h to know which args are needed
	args.clear();
	args.append(mApplication);
	args.append(TT("/"));
	args.append(kTTSym_created);
		
	TTObjectInstantiate(TT("callback"), TTObjectHandle(&ro_returnAddressCallback), kTTValNONE);
	ro_returnAddressBaton = new TTValue(NULL);	// Here it is NULL but it could be usefull to pass 
												// an object in order to process the returned value
	ro_returnAddressCallback->setAttributeValue(TT("baton"), TTPtr(ro_returnAddressBaton));
	ro_returnAddressCallback->setAttributeValue(TT("function"), TTPtr(myRegistrationObserver_return_address_callback));
	args.append(ro_returnAddressCallback);
	

	TTObjectInstantiate(TT("callback"), TTObjectHandle(&ro_returnValueCallback), kTTValNONE);
	ro_returnValueBaton = new TTValue(NULL);	// Here it is NULL but it could be usefull to pass 
												// an object in order to process the returned address;
	ro_returnValueCallback->setAttributeValue(TT("baton"), TTPtr(ro_returnValueBaton));
	ro_returnValueCallback->setAttributeValue(TT("function"), TTPtr(myRegistrationObserver_return_value_callback));
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
	args.append(mApplication);
	args.append(TT("/"));
	args.append(kTTSym_destroyed);
		
	TTObjectInstantiate(TT("callback"), TTObjectHandle(&uo_returnAddressCallback), kTTValNONE);
	uo_returnAddressBaton = new TTValue(NULL);	// Here it is NULL but it could be usefull to pass 
												// an object in order to process the returned value
	uo_returnAddressCallback->setAttributeValue(TT("baton"), TTPtr(uo_returnAddressBaton));
	uo_returnAddressCallback->setAttributeValue(TT("function"), TTPtr(myUnregistrationObserver_return_address_callback));
	args.append(uo_returnAddressCallback);
	

	TTObjectInstantiate(TT("callback"), TTObjectHandle(&uo_returnValueCallback), kTTValNONE);
	uo_returnValueBaton = new TTValue(NULL);	// Here it is NULL but it could be usefull to pass 
												// an object in order to process the returned address;
	uo_returnValueCallback->setAttributeValue(TT("baton"), TTPtr(uo_returnValueBaton));
	uo_returnValueCallback->setAttributeValue(TT("function"), TTPtr(myUnregistrationObserver_return_value_callback));
	args.append(uo_returnValueCallback);
		
	TTObjectInstantiate(TT("Receiver"), TTObjectHandle(&myUnregistrationObserver), args);
	
	// Create a TTDeviceManager
	/////////////////////////////////////////////////////////
	TTLogMessage("\n*** Creating a DeviceManager Object *** \n");
	TTDeviceManagerPtr mDeMan = NULL;
	args.clear();
	args.append(mApplication);
	args.append(APP_NAME);
	
	TTObjectInstantiate(TT("DeviceManager"), TTObjectHandle(&mDeMan), args);
	
	TTCString path = PLUGINS_PATH;
	
	args.clear();
	args.append(TT(PLUGINS_PATH));
	args.append(CONFIG_PATH);
	mDeMan->sendMessage(TT("LoadPlugins"), args);
	
	


	// Create a TTData
	/////////////////////////////////////////////////////////
	TTDataPtr		myData = NULL;
	TTCallbackPtr	p_returnValueCallback = NULL;
	TTValuePtr		p_returnValueBaton;
	
	// prepare arguments : see TTData.h to know which args are needed
	args.clear();
	TTObjectInstantiate(TT("callback"), TTObjectHandle(&p_returnValueCallback), kTTValNONE);
	p_returnValueBaton = new TTValue(NULL);		// Here it is NULL but it could be usefull to pass 
												// an object in order to process the returned value
	p_returnValueCallback->setAttributeValue(TT("baton"), TTPtr(p_returnValueBaton));
	p_returnValueCallback->setAttributeValue(TT("function"), TTPtr(myData_return_value_callback));
	args.append(p_returnValueCallback);
	
	// create an instance of TTData
	TTObjectInstantiate(TT("Data"), TTObjectHandle(&myData), args);

	// set TTData attributes
	//myData->setAttributeValue(kTTSym_type, kTTSym_decimal);
	//myData->setAttributeValue(kTTSym_valueDefault, 0);
	//myData->setAttributeValue(kTTSym_description, TT("Il etait une fois"));
	myData->setAttributeValue(kTTSym_type, kTTSym_string);
	myData->setAttributeValue(kTTSym_valueDefault, TT("toto"));
	myData->setAttributeValue(kTTSym_description, TT("Il etait une fois"));


	// Register a TTObject into the TTModularDirectory
	/////////////////////////////////////////////////////////
	TTLogMessage("\n*** Register myData into the TTModularDirectory *** \n");
	TTNodePtr		returnedNode;
	TTBoolean		newInstanceCreated;

	mDirectory->TTNodeCreate(TT("/TestModularApp/control/volume"), myData, NULL, &returnedNode, &newInstanceCreated);
	// note : our myRegistrationObserver is informed
	
	// Create a TTData
	/////////////////////////////////////////////////////////
	TTDataPtr		myData1 = NULL;
	TTCallbackPtr	p_returnValueCallback1 = NULL;
	TTValuePtr		p_returnValueBaton1;
	
	// prepare arguments : see TTData.h to know which args are needed
	args.clear();
	TTObjectInstantiate(TT("callback"), TTObjectHandle(&p_returnValueCallback1), kTTValNONE);
	p_returnValueBaton1 = new TTValue(NULL);		// Here it is NULL but it could be usefull to pass 
	// an object in order to process the returned value
	p_returnValueCallback1->setAttributeValue(TT("baton"), TTPtr(p_returnValueBaton1));
	p_returnValueCallback1->setAttributeValue(TT("function"), TTPtr(myData_return_value_callback));
	args.append(p_returnValueCallback1);
	
	// create an instance of TTData
	TTObjectInstantiate(TT("Data"), TTObjectHandle(&myData1), args);
	
	// set TTData attributes
	myData1->setAttributeValue(kTTSym_type, kTTSym_decimal);
	myData1->setAttributeValue(kTTSym_valueDefault, 0);
	myData1->setAttributeValue(kTTSym_description, TT("Il etait une fois"));
	
	
	// Register a TTObject into the TTModularDirectory
	/////////////////////////////////////////////////////////
	TTLogMessage("\n*** Register myData into the TTModularDirectory *** \n");
	TTNodePtr		returnedNode1;
	TTBoolean		newInstanceCreated1;
	
	mDirectory->TTNodeCreate(TT("/TestModularApp/control/balance"), myData1, NULL, &returnedNode1, &newInstanceCreated1);
	// note : our myRegistrationObserver is informed



	// Create a TTReceiver to observe the mValue attribute of /audio/filter/frequency
	////////////////////////////////////////////////////////////////////
	TTReceiverPtr	myReceiver = NULL;
	TTCallbackPtr	r_returnAddressCallback = NULL; 
	TTCallbackPtr	r_returnValueCallback = NULL;
	TTValuePtr		r_returnAddressBaton, r_returnValueBaton;
	
	// prepare arguments : see TTReceiver.h to know which args are needed
	args.clear();
	args.append(mApplication);
	args.append(TT("/TestModularApp/control/volume"));
	args.append(kTTSym_value);
		
	TTObjectInstantiate(TT("callback"), TTObjectHandle(&r_returnAddressCallback), kTTValNONE);
	r_returnAddressBaton = new TTValue(NULL);		// Here it is NULL but it could be usefull to pass 
												// an object in order to process the returned value
	r_returnAddressCallback->setAttributeValue(TT("baton"), TTPtr(r_returnAddressBaton));
	r_returnAddressCallback->setAttributeValue(TT("function"), TTPtr(myReceiver_return_address_callback));
	args.append(r_returnAddressCallback);
	

	TTObjectInstantiate(TT("callback"), TTObjectHandle(&r_returnValueCallback), kTTValNONE);
	r_returnValueBaton = new TTValue(NULL);		// Here it is NULL but it could be usefull to pass 
												// an object in order to process the returned address;
	r_returnValueCallback->setAttributeValue(TT("baton"), TTPtr(r_returnValueBaton));
	r_returnValueCallback->setAttributeValue(TT("function"), TTPtr(myReceiver_return_value_callback));
	args.append(r_returnValueCallback);
		
	TTObjectInstantiate(TT("Receiver"), TTObjectHandle(&myReceiver), args);
	
	system("Pause");

	//// Create a TTSender to set mValue attribute of /audio/filter/frequency
	////////////////////////////////////////////////////////////////////
	TTSenderPtr	mySender = NULL;

	// prepare arguments : see TTSender.h to know which args are needed
	args.clear();
	args.append(mApplication);
	args.append(TT("/TestModularApp/control/volume"));
	args.append(kTTSym_value);
		
	TTObjectInstantiate(TT("Sender"), TTObjectHandle(&mySender), args);



	// Set mValue attribute of our data directly
	//////////////////////////////////////////////////////////////////
	TTLogMessage("\n*** Set mValue attribute of our data directly *** \n");
	//TTValue	v = TTValue(1.456);
	myData->setAttributeValue(kTTSym_value, TT("mamamia"));
	myData->setAttributeValue(kTTSym_description, TT("mamamia"));
	// note : the value is returned by the Data and the Receiver



	//// Set mValue attribute of our data using mySender
	////////////////////////////////////////////////////////////////////
	TTLogMessage("\n*** Set mValue attribute of our data using mySender *** \n");
	TTValue v = TT("mamamia");
	mySender->sendMessage(kTTSym_Send, v);
	//// note : the value is returned by the Data and the Receiver



	//// Get our data using TTModularDirectory
	////////////////////////////////////////////////////////////////////
	//TTLogMessage("\n*** Get some attribute of our data using TTModularDirectory *** \n");
	//// get the node which represent our data
	//TTList			aNodeList;
	//TTNodePtr		aNode;
	//TTErr err = mDirectory->Lookup(TT("/TestModularApp/control/volume"), aNodeList, &aNode);

	//// get the object store in the node
	//TTObjectPtr	anObject;
	//anObject = aNode->getObject();

	//if (anObject == myData)
	//	TTLogMessage("anObject is myData \n");

	//// get the mValue attribute value of the object
	//v.clear();
	//anObject->getAttributeValue(kTTSym_value, v);

	//// print the value
	//TTString s;
	//v.toString();
	//v.get(0, s);
	//TTLogMessage("anObject mValue is %s \n", s.data());

	//// get the mdescription attribute value of the object
	//v.clear();
	//s.clear();
	//anObject->getAttributeValue(kTTSym_description, v);

	//// print the value
	////v.toString();
	//TTSymbolPtr sy;
	//v.get(0, &sy);
	//TTLogMessage("anObject mDescription is %s \n", sy->getCString());

	//// get the mRangeBounds attribute value of the object
	//v.clear();
	//s.clear();
	//anObject->getAttributeValue(kTTSym_rangeBounds, v);

	//// print the value
	//v.toString();
	//v.get(0, s);
	//TTLogMessage("anObject mRangeBounds is %s \n", s.data());
	

	// reset the mValue to mValueDefault
	//TTLogMessage("\n*** reset the mValue to mValueDefault *** \n");
	//anObject->sendMessage(TT("Reset"));
	// note : the value is returned by the Data and the Receiver



	// Unregister /audio/filter/frequency from the TTModularDirectory
	//////////////////////////////////////////////////////////////////
//	TTLogMessage("\n*** Unregister myData from the TTModularDirectory *** \n");
//	mDirectory->TTNodeRemove(TT("/audio/filter/frequency"));
	// note : our myUnregistrationObserver is informed



	// Delete every TTObject and TTValuePtr
	//////////////////////////////////////////////////////////////////
//	TTObjectRelease(TTObjectHandle(&myRegistrationObserver));
//	TTObjectRelease(TTObjectHandle(&ro_returnAddressCallback)); 
//	TTObjectRelease(TTObjectHandle(&ro_returnValueCallback));
//	delete ro_returnAddressBaton;
//	delete ro_returnValueBaton;

	//TTObjectRelease(TTObjectHandle(&myUnregistrationObserver));
	//TTObjectRelease(TTObjectHandle(&uo_returnAddressCallback)); 
	//TTObjectRelease(TTObjectHandle(&uo_returnValueCallback));
	//delete uo_returnAddressBaton;
	//delete uo_returnValueBaton;

	//TTObjectRelease(TTObjectHandle(&myReceiver));
	//TTObjectRelease(TTObjectHandle(&r_returnAddressCallback)); 
	//TTObjectRelease(TTObjectHandle(&r_returnValueCallback));
	//delete r_returnAddressBaton;
	//delete r_returnValueBaton;

	//TTObjectRelease(TTObjectHandle(&myData));
	//TTObjectRelease(TTObjectHandle(&p_returnValueCallback));
	//delete p_returnValueBaton;

	//TTObjectRelease(TTObjectHandle(&mySender));

	//while (true) {
	//	;
	//}
	system("Pause");
	TTLogMessage("\n*** Ending my TTModular application *** \n");

	return EXIT_SUCCESS;
}

void myData_return_value_callback(TTPtr baton, TTValue& v)
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
	TTLogMessage("myData returns %s \n", s.data());
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