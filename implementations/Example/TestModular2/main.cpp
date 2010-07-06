#include "TTModular.h"
#include "Namespace.h"
//#include "DeviceManager.h"
#include "Coordinate.h"

using namespace std;


void parameter_return_value_callback(void* baton, NSPValue& v);

void myReceiver_return_value_callback(void* baton, NSPValue& v);
void myReceiver_return_address_callback(void* baton, NSPValue& v);

void myRegistrationObserver_return_value_callback(void* baton, NSPValue& v);
void myRegistrationObserver_return_address_callback(void* baton, NSPValue& v);

void myUnregistrationObserver_return_value_callback(void* baton, NSPValue& v);
void myUnregistrationObserver_return_address_callback(void* baton, NSPValue& v);

int 
main(int argc, char **argv) 
{
	TTLogMessage("\n*** Starting my application *** \n");


	// Initialize DeviceManager
	/////////////////////////////////////////////////////////
	
	//DeviceManager *deviceManager = new DeviceManager("TestModularApp");	
	//deviceManager->pluginLoad("Plugins");
	


	
	// Initialize TT environments
	/////////////////////////////////////////////////////////
	NSPValue			args;

	Namespace* m_namespace = new Namespace("TestModularApp", "0.1", "Toto");
	m_namespace->namespaceInit();
	


	// Create a TTReceiver to observe any (un)registration under the root
	//////////////////////////////////////////////////////////////////

	m_namespace->namespaceObserverCreate("/", NSPTask_CREATE, NULL, &myRegistrationObserver_return_value_callback
																  , &myRegistrationObserver_return_address_callback);
	m_namespace->namespaceObserverCreate("/", NSPTask_DESTROY, NULL, &myUnregistrationObserver_return_value_callback
																   , &myUnregistrationObserver_return_address_callback);



	//// Create a TTParameter : xposition Parameter
	///////////////////////////////////////////////////////////

	m_namespace->namespaceParameterCreate("/coordinates/cartesian/xposition", NULL/*, NULL, &parameter_return_value_callback*/);

	// set type attribute as decimal
	m_namespace->namespaceAttributeSet("/coordinates/cartesian/xposition", NSPAttr_TYPE, NSPType_FLOAT);
	// set valueDefault attribute as 0
	m_namespace->namespaceAttributeSet("/coordinates/cartesian/xposition", NSPAttr_DEFAULT, 0.0);
	// set range attribute as [0, 1]
	NSPValue v = new NSPValue(0.0, 1.0);
	m_namespace->namespaceAttributeSet("/coordinates/cartesian/xposition", NSPAttr_RANGE, v);


	//// Create a TTParameter : yposition Parameter
	///////////////////////////////////////////////////////////

	m_namespace->namespaceParameterCreate("/coordinates/cartesian/yposition", NULL, &parameter_return_value_callback);

	// set type attribute as decimal
	m_namespace->namespaceAttributeSet("/coordinates/cartesian/yposition", NSPAttr_TYPE, NSPType_FLOAT);
	// set valueDefault attribute as 0
	m_namespace->namespaceAttributeSet("/coordinates/cartesian/yposition", NSPAttr_DEFAULT, 0.0);
	// set range attribute as [0, 1]
	v = new NSPValue(0.0, 1.0);
	m_namespace->namespaceAttributeSet("/coordinates/cartesian/yposition", NSPAttr_RANGE, v);




	// Create a TTReceiver to observe the mValue attribute of /coordinates/xposition
	////////////////////////////////////////////////////////////////////
	m_namespace->namespaceObserverCreate("/coordinates/cartesian/xposition", NSPAttr_VAL, NULL, &myReceiver_return_value_callback
																							  , &myReceiver_return_address_callback);




	// Send value 0.35 to set value attribute of /coordinates/xposition
	//////////////////////////////////////////////////////////////////
	m_namespace->namespaceValueSend("/coordinates/cartesian/xposition", NSPAttr_VAL, 0.35);
	// note : the value is returned by the Parameter and the Receiver
	



	// Test using the namespace in another class
	//////////////////////////////////////////////////////////////////
	Coordinate polar(m_namespace);


	// Display the namespace structure
	//////////////////////////////////////////////////////////////////
	TTLogMessage("\nNamespace :\n");
	m_namespace->namespaceDisplay();

	// Save the namespace in a xml file
	//////////////////////////////////////////////////////////////////
	m_namespace->namespaceSaveToXml("Namespace.xml");


	//m_namespace->namespaceFree();

	TTLogMessage("\n*** Ending my application *** \n");

	//system("Pause");
	return EXIT_SUCCESS;
}

void parameter_return_value_callback(void* baton, NSPValue& v)
{
	NSPValue*	b;
	void*		x;
	TTString	s;	

	// unpack baton
	b = (NSPValue*)baton;
	b->get(0, (void**)&x);			// Here x is NULL but it could be usefull to pass 
									// an object in order to process the returned value

	// print the returned value
	v.toString();
	v.get(0, s);
	TTLogMessage("parameter returns %s \n", s.data());
}

void myReceiver_return_value_callback(void* baton, NSPValue& v)
{
	NSPValue*	b;
	void*		x;
	TTString	s;	

	// unpack baton
	b = (NSPValue*)baton;
	b->get(0, (void**)&x);			// Here x is NULL but it could be usefull to pass 
									// an object in order to process the returned value

	// print the returned value
	v.toString();
	v.get(0, s);
	TTLogMessage("myReceiver returns %s \n", s.data());
}

void myReceiver_return_address_callback(void* baton, NSPValue& v)
{
	NSPValue*	b;
	void*		x;
	TTSymbolPtr	s;	

	// unpack baton
	b = (NSPValue*)baton;
	b->get(0, (void**)&x);			// Here x is NULL but it could be usefull to pass 
									// an object in order to process the returned address

	// print the returned value
	v.get(0, &s);
	TTLogMessage("myReceiver returns %s \n", s->getCString());
}

void myRegistrationObserver_return_value_callback(void* baton, NSPValue& v)
{
	// No value returned during registration observe 
}

void myRegistrationObserver_return_address_callback(void* baton, NSPValue& v)
{
	NSPValue*	b;
	void*		x;
	TTSymbolPtr	s;	

	// unpack baton
	b = (NSPValue*)baton;
	b->get(0, (void**)&x);			// Here x is NULL but it could be usefull to pass 
									// an object in order to process the returned address

	// print the returned value
	v.get(0, &s);
	TTLogMessage("myRegistrationObserver returns %s \n", s->getCString());
}

void myUnregistrationObserver_return_value_callback(void* baton, NSPValue& v)
{
	// No value returned during registration observe
}

void myUnregistrationObserver_return_address_callback(void* baton, NSPValue& v)
{
	NSPValue*	b;
	void*		x;
	TTSymbolPtr	s;	

	// unpack baton
	b = (NSPValue*)baton;
	b->get(0, (void**)&x);			// Here x is NULL but it could be usefull to pass 
									// an object in order to process the returned address

	// print the returned value
	v.get(0, &s);
	TTLogMessage("myUnregistrationObserver returns %s \n", s->getCString());
}