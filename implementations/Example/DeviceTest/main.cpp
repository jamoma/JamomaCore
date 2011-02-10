#include "TTModular.h"

using namespace std;

#define APP_NAME		TT("DeviceTest")
#define	PLUGINS_PATH	TT("../../../../../library/DeviceManagerLib/Plugins")
#define CONFIG_PATH		TT("/Users/laurent/Travail/Galamus/Jamoma/Modules/Modular/implementations/Example/Config.xml")


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
	TTModularInit("DeviceTest", "");
	
	mApplication	= (TTApplicationPtr)TTModularGetApplication(APP_NAME);
	mDirectory		= TTApplicationGetDirectory(TTObjectPtr(mApplication));

	TTApplicationPtr	TestModular = NULL;
	TestModular		= (TTApplicationPtr)TTModularGetApplication(TT("TestModularApp"));
	if (TestModular == NULL) {
		std::cout << "ko" << std::endl;
	}
	
	
	// Create a TTDeviceManager
	/////////////////////////////////////////////////////////
	TTLogMessage("\n*** Creating a DeviceManager Object *** \n");
	TTDeviceManagerPtr mDeMan = NULL;
	args.clear();
	args.append(mApplication);
	args.append(APP_NAME);
	
	TTObjectInstantiate(TT("DeviceManager"), TTObjectHandle(&mDeMan), args);
	
	args.clear();
	args.append(PLUGINS_PATH);
	args.append(CONFIG_PATH);
	mDeMan->sendMessage(TT("LoadPlugins"), args);
	
//	// add a TTDevice
//	args.clear();
//	args.append(TT("TestModularApp"));
//	args.append(TT("Minuit"));
//	
//	args.append(TT("ip"));
//	args.append(TT("127.0.0.1"));
//	args.append(TT("port"));
//	TTValue valu = TTValue(7002);
//	args.append(&valu);
//	
//	mDeMan->sendMessage(TT("AddDevice"), args);
	
	
//	TTSenderPtr	sender = NULL;
//	
//	// prepare arguments : see TTSender.h to know which args are needed
//	args.clear();
//	args.append(mApplication);
//	args.append(TT("/TestModularApp"));
//	args.append(kTTSym_value);
//	
//	TTObjectInstantiate(TT("Sender"), TTObjectHandle(&sender), args);
//	
//	TTValue val = TTValue(2);
//	sender->sendMessage(kTTSym_Send, val);
	
	
	TTList			nodeList;
	TTNodePtr		node;
	mDirectory->Lookup(TT("/TestModularApp"), nodeList, &node);
	
	// get the object store in the node
	TTObjectPtr	o;
	o = node->getObject();
	
	if (o) {
		if (o->getName() == TT("Device")) {
			
//			// set a data on the remote device
//			o->setAttributeValue(TT("addressToSpeakWith"), TT("/control/volume"));
//			args.clear();
//			args.append(2);
//			
//			o->sendMessage(TT("Set"), args);
			
			// get a data from the remote device
//			args.clear();
//			args.append(TT("/control/volume"));
//			args.append(kTTSym_description);
//			
//			TTValue valret;
//			args.append(&valret);
//			
//			o->sendMessage(TT("Get"), args);
//			std::cout << args.getSize() << std::endl;
			
//			TTFloat32 f;
//			args.get(2, f);
//			TTString s;
//			args.toString();
//			args.get(0, s);
//			std::cout << "value :" << s << std::endl;
			
			// discover a namespace on the remote device
			args.clear();
			args.append(TT("/control"));
			o->sendMessage(TT("Discover"), args);
		}	
	}
	

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