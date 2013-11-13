#include "TTModular.h"

//#include <iostream>
using namespace std;

static TTApplicationPtr	mDemoApp = NULL;
static TTSymbol			kTTSym_DemoApp;

TTObjectBasePtr         mDemoData = NULL;

void	init();
void    runProtocol();

// TODO : this should move into a TTModularAPI file
/** Create a TTData object
 @param	service			a symbol to tell if the data have to be a "parameter", a "message" or a "return"
 @param	TTValuePtr      a value pointer to return back
 @param valueCallback   a pointer to a void function(TTPtr baton, TTValue& value) to return the value back
 @param returnedData    a new data object
 @return                an error code if the creation fails */
TTErr TTModularCreateData(TTSymbol service, TTValuePtr baton, TTFunctionWithBatonAndValue valueCallback, TTObjectBasePtr *returnedData);

// TODO : this should move into a TTModularAPI file
/** Register a TTObject
 @param	address			the absolute address where to register the object
 @param	object          the object to register
 @return                an error code if the registration fails */
TTErr TTModularRegisterObject(TTAddress address, TTObjectBasePtr object);

void    DemoDataReturnValueCallback(TTPtr baton, TTValue& v);

int 
main(int argc, char **argv) 
{
	TTValue	v;
	
	// Initialize Jamoma environment
	/////////////////////////////////////////////////////////

	TTLogMessage("/n*** Starting my DemoApp application *** /n");

	init();
    
    //runProtocol();
    //
    //getchar();  // Wait until user hits "enter"

    //TTValuePtr batonDemoData = new TTValue(TTPtr(this));
    //batonDemoData->append(TTSymbol("Speed"));
    //TTModularCreateData(kTTSym_message, batonDemoData, &DemoDataReturnValueCallback, &mDemoData);
    //
    //mDemoData->setAttributeValue(kTTSym_type, kTTSym_decimal);
    //v = TTValue(-1., 1.);
    //mDemoData->setAttributeValue(kTTSym_rangeBounds, v);
    //mDemoData->setAttributeValue(kTTSym_description, TTSymbol("change DemoData value"));
    //
    //TTModularRegisterObject(TTAddress("/Demo/Data"), mDemoData);

	TTLogMessage("/n*** Ending my DemoApp application *** /n");

	return 0;
}

void init()
{
    TTString JamomaConfigurationFilePath;
    TTValue  v, args;
	
	// Init the Modular library
	TTModularInit();
    
    // Edit the path to the JamomaConfiguration.xml file
	const char *name = "DemoApp";
	const char *config = "JamomaConfiguration.xml";
    
    // Create a local application named DemoApp and get it
    TTModularCreateLocalApplication(name, config);
    mDemoApp = getLocalApplication;
    kTTSym_DemoApp = TTSymbol("DemoApp");
}

void runProtocol()
{
    TTValue  v1, v2;
    getProtocol("WebSocket")->Run(v1, v2);
}

// TODO : this should move into a TTModularAPI file
TTErr TTModularCreateData(TTSymbol service, TTValuePtr baton, TTFunctionWithBatonAndValue valueCallback, TTObjectBasePtr *returnedData)
{
    TTValue			args;
	TTObjectBasePtr	returnValueCallback;
	
	// prepare arguments
	returnValueCallback = NULL;
	TTObjectBaseInstantiate(TTSymbol("callback"), TTObjectBaseHandle(&returnValueCallback), kTTValNONE);
    
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(baton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(valueCallback));
    
	args.append(returnValueCallback);
	
	args.append(service);
	
    // create data
	*returnedData = NULL;
	TTObjectBaseInstantiate(kTTSym_Data, TTObjectBaseHandle(returnedData), args);
	
	return kTTErrNone;
}

// TODO : this should move into a TTModularAPI file
TTErr TTModularRegisterObject(TTAddress address, TTObjectBasePtr object)
{
    TTNodePtr returnedTTNode;
    TTBoolean nodeCreated;
    
    return getLocalDirectory->TTNodeCreate(address, object, NULL, &returnedTTNode, &nodeCreated);
}

void DemoDataReturnValueCallback(TTPtr baton, TTValue& v)
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
	TTLogMessage("DemoData has been updated to %s /n", s.data());
}