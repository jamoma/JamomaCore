#include "TTModular.h"

using namespace std;

#define APP_NAME		TTSymbol("DeviceTest")
#define	PLUGINS_PATH	"C:\\Users\\Laurent Garnier\\Travail\\Galamus\\Jamoma\\Modules\\Modular\\library\\DeviceManagerLib\\Plugins"
#define CONFIG_PATH		TTSymbol("C:\\Users\\Laurent Garnier\\Travail\\Galamus\\Jamoma\\Modules\\Modular\\implementations\\Example\\Config.xml")


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
	TestModular		= (TTApplicationPtr)TTModularGetApplication(TTSymbol("TestModularApp"));
	
	
	// Create a TTDeviceManager
	/////////////////////////////////////////////////////////
	TTLogMessage("\n*** Creating a DeviceManager Object *** \n");
	TTDeviceManagerPtr mDeMan = NULL;
	args.clear();
	args.append(mApplication);
	args.append(APP_NAME);
	
	TTObjectInstantiate(TTSymbol("DeviceManager"), TTObjectHandle(&mDeMan), args);
	
	args.clear();
	args.append(TT(PLUGINS_PATH));
	args.append(CONFIG_PATH);
	mDeMan->sendMessage(TTSymbol("LoadPlugins"), args);
	
//	// add a TTDevice
//	args.clear();
//	args.append(TTSymbol("TestModularApp"));
//	args.append(TTSymbol("Minuit"));
//	
//	args.append(TTSymbol("ip"));
//	args.append(TTSymbol("127.0.0.1"));
//	args.append(TTSymbol("port"));
//	TTValue valu = TTValue(7002);
//	args.append(&valu);
//	
//	mDeMan->sendMessage(TTSymbol("AddDevice"), args);
	
	
//	TTSenderPtr	sender = NULL;
//	
//	// prepare arguments : see TTSender.h to know which args are needed
//	args.clear();
//	args.append(mApplication);
//	args.append(TTSymbol("/TestModularApp"));
//	args.append(kTTSym_value);
//	
//	TTObjectInstantiate(TTSymbol("Sender"), TTObjectHandle(&sender), args);
//	
//	TTValue val = TTValue(2);
//	sender->sendMessage(kTTSym_Send, val);
	
	
	TTList			nodeList;
	TTNodePtr		node;
	mDirectory->Lookup(TTSymbol("/TestModularApp"), nodeList, &node);
	
	// get the object store in the node
	TTObjectPtr	o;
	o = node->getObject();
	
	if (o) {
		if (o->getName() == TTSymbol("Device")) {
			
			// set a data on the remote device
			o->setAttributeValue(TTSymbol("addressToSpeakWith"), TTSymbol("/TestModularApp/control/volume"));
			args.clear();
			args.append(TTSymbol("kjhgf"));
			
			o->sendMessage(TTSymbol("Set"), args);
			//
			//// get a data from the remote device
			//args.clear();
			//args.append(TTSymbol("/TestModularApp/control/volume"));
			//args.append(kTTSym_description);
			//
			//o->sendMessage(TTSymbol("Get"), args);
			//std::cout << args.getSize() << std::endl;

			//TTSymbolPtr s;
			//args.get(0, &s);
			//std::cout << "value :" << s->getCString() << std::endl;
			//
			//// discover a namespace on the remote device
			//TTSymbolPtr sLeaveName;
			//args.clear();
			//args.append(TTSymbol("/TestModularApp/control"));
			//o->sendMessage(TTSymbol("Discover"), args);
			//for (int i = 0; i < args.getSize(); i++) {
			//	args.get(i, &sLeaveName);
			//	std::cout << sLeaveName->getCString() << std::endl;
			//}


			//// listen a parameter on a remote device
			//args.clear();
			//args.append(TTSymbol("/TestModularApp/control/volume"));
			//args.append(kTTSym_value);
			//args.append(true);
			//o->sendMessage(TTSymbol("ListenRequest"), args);
		}	
	}
	
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