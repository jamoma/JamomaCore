#include "TTModular.h"

#include <iostream>
using namespace std;

#define APP_NAME		"DemoApp"

#ifdef TT_WIN
#define PLUGINS_PATH	"C:\Program Files\Common Files\TTBlue\Extensions"
#else
#define PLUGINS_PATH	"/Library/Application Support/Jamoma/Extensions"
#endif

#define CONFIG_PATH		"/Users/TO/Documents/Jamoma/Modules/Modular/implementations/Example/DemoApp/ApplicationConfiguration-DemoApp.xml"

static TTApplicationPtr	mDemoApp = NULL;
static TTSymbolPtr		kTTSym_DemoApp;

void	init();
TTErr	instantiate_Data(TTDataPtr *returnedData);
void	myData_return_value_callback(TTPtr baton, TTValue& v);

int 
main(int argc, char **argv) 
{
	TTValue	v;
	
	// Initialize Jamoma environment
	/////////////////////////////////////////////////////////
	TTLogMessage("\n*** Starting my DemoApp application *** \n");
	
	init();
	
	/*
	// TEST TTDictionary
	TTDictionaryPtr aDictionary = new TTDictionary;
	
	aDictionary->setSchema(TT("aSchema"));
	aDictionary->append(TT("name"), TT("toto"));
	aDictionary->append(TT("type"), TT("gars"));
	aDictionary->append(TT("tag"), TT("blague"));
	 */
	
	/*
	// RUN TEST
	TTObjectPtr testNodeLib = NULL;
	TTValue	args;
	TTObjectInstantiate(TT("nodelib.test"), &testNodeLib, args);
	
	testNodeLib->sendMessage(TT("test"), args);
	 */
	
	
	/*

	// Create a TTData object an use it
	/////////////////////////////////////////////////////////
	TTLogMessage("\n*** Instantiate myData as a TTData object ***\n");
	
	TTDataPtr myData = NULL;
	
	instantiate_Data(&myData);

	// set TTData object attributes
	myData->setAttributeValue(kTTSym_type, kTTSym_decimal);
	myData->setAttributeValue(kTTSym_valueDefault, 0);
	myData->setAttributeValue(kTTSym_description, TT("a data for the demo"));

	
	// Register a TTObject into the DemoApp directory
	/////////////////////////////////////////////////////////
	TTLogMessage("\n*** Register myData into the DemoApp directory ***\n");
	TTNodePtr		returnedNode;
	TTBoolean		newInstanceCreated;

	getDirectoryFrom(kTTAdrsRoot)->TTNodeCreate(TTADRS("/mydata"), myData, NULL, &returnedNode, &newInstanceCreated);

	
	// 
	// Use a TTData object
	/////////////////////////////////////////////////////////

	
	// set the value
	do {
		TTString s;
		
		cout << "Set /myData value : ";
		cin >> s;
		
		if (s == "exit")
			break;
		
		v.clear();
		v = s;
		v.fromString();
		myData->sendMessage(kTTSym_Command, v);
	} while (true);


	// Delete every TTObject and TTValuePtr
	//////////////////////////////////////////////////////////////////
	TTObjectRelease(TTObjectHandle(&myData));

	TTLogMessage("\n*** Ending my DemoApp application *** \n");
*/
	return EXIT_SUCCESS;
}





void init()
{
	TTValue v, args;
	TTXmlHandlerPtr aXmlHandler;
	
	// Init the Modular library
	TTModularInit(PLUGINS_PATH);
	
	// Create a local application named DemoApp and get it
	TTModularCreateLocalApplication(APP_NAME, "");
	mDemoApp = getLocalApplication;
	kTTSym_DemoApp = TT(APP_NAME);
	
	// read the ApplicationManager Configuration file
	aXmlHandler = NULL;
	TTObjectInstantiate(TT("XmlHandler"), TTObjectHandle(&aXmlHandler), args);
	v = TTValue(TTPtr(TTModularApplications));
	aXmlHandler->setAttributeValue(kTTSym_object, v);
	
	v = TTValue(TT(CONFIG_PATH));
	aXmlHandler->sendMessage(TT("Read"), v);
	
	// launch reception thread mechanism fo each plugin (or not ?)
	TTModularApplications->sendMessage(TT("PluginRun"), v);
}

TTErr instantiate_Data(TTDataPtr *returnedData)
{
	TTValue			args;
	TTCallbackPtr	p_returnValueCallback = NULL;
	TTValuePtr		p_returnValueBaton;
	
	// prepare arguments : see TTData.h to know which args are needed
	TTObjectInstantiate(TT("callback"), TTObjectHandle(&p_returnValueCallback), kTTValNONE);
	p_returnValueBaton = new TTValue(NULL);
	p_returnValueCallback->setAttributeValue(TT("baton"), TTPtr(p_returnValueBaton));
	p_returnValueCallback->setAttributeValue(TT("function"), TTPtr(myData_return_value_callback));
	args.append(p_returnValueCallback);
	
	// create an instance of a TTData object
	return TTObjectInstantiate(TT("Data"), TTObjectHandle(returnedData), args);
}

void myData_return_value_callback(TTPtr baton, TTValue& v)
{
	TTValuePtr	b;
	TTPtr		x;
	TTString	s;	

	// unpack baton
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&x);

	// print the returned value
	v.toString();
	v.get(0, s);
	TTLogMessage("myData has been updated to %s \n", s.data());
}