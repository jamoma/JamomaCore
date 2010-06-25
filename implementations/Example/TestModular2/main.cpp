#include "TTModular.h"
#include "Namespace.h"
//#include "DeviceManager.h"

using namespace std;


void parameter_return_value_callback(TTPtr baton, TTValue& v);

void myReceiver_return_value_callback(TTPtr baton, TTValue& v);
void myReceiver_return_address_callback(TTPtr baton, TTValue& v);

void myRegistrationObserver_return_value_callback(TTPtr baton, TTValue& v);
void myRegistrationObserver_return_address_callback(TTPtr baton, TTValue& v);

void myUnregistrationObserver_return_value_callback(TTPtr baton, TTValue& v);
void myUnregistrationObserver_return_address_callback(TTPtr baton, TTValue& v);

int 
main(int argc, char **argv) 
{
	TTLogMessage("\n*** Starting my TTModular application *** \n");


	// Initialize DeviceManager
	/////////////////////////////////////////////////////////
	


	//DeviceManager *deviceManager = new DeviceManager("TestModularApp");	
	//deviceManager->pluginLoad("Plugins");
	




	

	

	// Initialize TT environments
	/////////////////////////////////////////////////////////
	TTValue			args;

	Namespace* m_namespace = new Namespace();
	m_namespace->namespaceInit("TestModularApp");



	// Create a TTReceiver to observe any (un)registration under the root
	//////////////////////////////////////////////////////////////////

	m_namespace->namespaceReceiverCreate(NULL, "/", kTTSym_created, &myRegistrationObserver_return_address_callback
																 , &myRegistrationObserver_return_value_callback);
	m_namespace->namespaceReceiverCreate(NULL, "/", kTTSym_destroyed, &myUnregistrationObserver_return_address_callback
																	, &myUnregistrationObserver_return_value_callback);



	//// Create a TTParameter : xposition Parameter
	///////////////////////////////////////////////////////////

	m_namespace->namespaceParameterCreate(NULL, "/coordinates/xposition", NULL, &parameter_return_value_callback);

	// set type attribute as decimal
	m_namespace->namespaceParameterAttributeSet("/coordinates/xposition", kTTSym_Type, kTTSym_decimal);
	// set valueDefault attribute as 0
	m_namespace->namespaceParameterAttributeSet("/coordinates/xposition", kTTSym_ValueDefault, 0.0);
	// set range attribute as [0, 1]
	TTValue v = new TTValue(0.0, 1.0);
	m_namespace->namespaceParameterAttributeSet("/coordinates/xposition", kTTSym_RangeBounds, v);


	//// Create a TTParameter : yposition Parameter
	///////////////////////////////////////////////////////////

	m_namespace->namespaceParameterCreate(NULL, "/coordinates/yposition", NULL, &parameter_return_value_callback);

	// set type attribute as decimal
	m_namespace->namespaceParameterAttributeSet("/coordinates/yposition", kTTSym_Type, kTTSym_decimal);
	// set valueDefault attribute as 0
	m_namespace->namespaceParameterAttributeSet("/coordinates/yposition", kTTSym_ValueDefault, 0.0);
	// set range attribute as [0, 1]
	v = new TTValue(0.0, 1.0);
	m_namespace->namespaceParameterAttributeSet("/coordinates/yposition", kTTSym_RangeBounds, v);




	// Create a TTReceiver to observe the mValue attribute of /coordinates/xposition
	////////////////////////////////////////////////////////////////////
	m_namespace->namespaceReceiverCreate(NULL, "/coordinates/xposition", kTTSym_Value, &myReceiver_return_address_callback
																					 , &myReceiver_return_value_callback);




	// Create a TTSender to set mValue attribute of /coordinates/xposition
	//////////////////////////////////////////////////////////////////
	TTSenderPtr	mySender = NULL;

	// prepare arguments : see TTSender.h to know which args are needed
	args.clear();
	args.append(TTModularDirectory);
	args.append(TT("/coordinates/xposition"));
	args.append(kTTSym_Value);
		
	TTObjectInstantiate(TT("Sender"), TTObjectHandle(&mySender), args);


	// Set mValue attribute of our parameter using mySender
	//////////////////////////////////////////////////////////////////
	TTLogMessage("\n*** Set mValue attribute of our parameter using mySender *** \n");
	v = TTValue(0.35);
	mySender->sendMessage(kTTSym_Send, v);
	// note : the value is returned by the Parameter and the Receiver
	


	// Display the namespace structure
	//////////////////////////////////////////////////////////////////
	TTLogMessage("\nNamespace :\n");
	m_namespace->namespaceDisplay();


	TTObjectRelease(TTObjectHandle(&mySender));

	TTLogMessage("\n*** Ending my TTModular application *** \n");

	system("Pause");
	return EXIT_SUCCESS;
}

void parameter_return_value_callback(TTPtr baton, TTValue& v)
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
	TTLogMessage("parameter returns %s \n", s.data());
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