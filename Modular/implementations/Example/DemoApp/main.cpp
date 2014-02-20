#include "TTModular.h"

// This example is divided into tree main functions
void Setup();
void Use();
void Quit();

// Declare the application manager and your application
static TTObject mApplicationManager;
static TTObject mApplicationDemo;
static TTObject mApplicationRemote;

// Declare protocol units to use
static TTObject mProtocolMinuit;
static TTObject mProtocolWebSocket;

// Declare all datas of your application
static TTObject mDataDemoParameter;     // a parameter is relative to the state of your application
static TTObject mDataDemoMessage;       // a message is relative to a command to send to your application
static TTObject mDataDemoReturn;        // a return is relative to notification sent by your application

void   DemoDataReturnValueCallback(TTPtr baton, TTValue& v);

int
main(int argc, char **argv) 
{
    Setup();
    
    Use();
    
    Quit();
    
    return 0;
}

void
Setup()
{
    TTValue     args, v, out, none;
    TTAddress   address;
    TTErr       err;
    
    
    TTLogMessage("\n*** Initialisation of Modular environnement ***\n");
    /////////////////////////////////////////////////////////////////////
    
    // Init the Modular library (passing the folder path where all the dylibs are)
    TTModularInit("/Users/WALL-E/Documents/Jamoma/Core/Modular/implementations/Example/DemoApp");
    
    // Create an application manager
    mApplicationManager = TTObject("ApplicationManager");
    
    
    TTLogMessage("\n*** Creation of myDemoApp and myRemoteApp applications ***\n");
    ////////////////////////////////////////////////////////////////////////////////
    
    // Create a local application called "myDemoApp" and get it back
    err = mApplicationManager.send("ApplicationInstantiateLocal", "myDemoApp", out);
    
    if (err) {
        TTLogError("Error : can't create myDemoApp application \n");
        return;
    }
    else
        mApplicationDemo = TTObject(out[0]);
    
    // Create a distant application called "myRemoteApp" and get it back
    err = mApplicationManager.send("ApplicationInstantiateDistant", "myRemoteApp", out);
   
    if (err) {
        TTLogError("Error : can't create myRemoteApp application \n");
        return;
    }
    else
        mApplicationRemote = TTObject(out[0]);
    
    // Get application names
    mApplicationManager.get("applicationNames", out);
    for (TTElementIter it = out.begin() ; it != out.end() ; it++)
            TTLogMessage("%s application is well registered into the application manager \n", TTSymbol(&it).c_str());

    
    TTLogMessage("\n*** Creation of Minuit and WebSocket protocols ***\n");
    ////////////////////////////////////////////////////////////////////////

    // Create a Minuit protocol unit
    err = mApplicationManager.send("ProtocolInstantiate", "Minuit", out);

    if (err) {
        TTLogError("Error : can't create Minuit protocol unit \n");
        return;
    }
    else
        mProtocolMinuit = TTObject(out[0]);
    
    // Get Minuit Protocol attribute names and types
    mProtocolMinuit.attributes(out);
    for (TTElementIter it = out.begin() ; it != out.end() ; it++)
        TTLogMessage("Minuit::%s is a %s \n", TTSymbol(&it).c_str(), mProtocolMinuit.attributeType(TTSymbol(&it)).c_str());
    
    // Register myDemoApp and myRemoteApp to the Minuit protocol
    mProtocolMinuit.send("RegisterApplication", "myDemoApp", out);
    mProtocolMinuit.send("RegisterApplication", "myRemoteApp", out);
    
    // Select myDemoApp to set its protocol parameters
    mProtocolMinuit.send("SelectApplication", "myDemoApp", out);
    mProtocolMinuit.set("port", 8002);
    mProtocolMinuit.set("ip", "127.0.0.1");
    
    // Select myRemoteApp to set its protocol parameters
    mProtocolMinuit.send("SelectApplication", "myRemoteApp", out);
    mProtocolMinuit.set("port", 9998);
    mProtocolMinuit.set("ip", "127.0.0.1");
    
    // Enable Minuit communication
    mProtocolMinuit.send("Run");
    
    // Create a WebSocket protocol unit
    err = mApplicationManager.send("ProtocolInstantiate", "WebSocket", out);
    
    if (err) {
        TTLogError("Error : can't create WebSocket protocol unit \n");
        return;
    }
    else
        mProtocolWebSocket = TTObject(out[0]);
    
    // Get WebSocket Protocol attribute names and types
    mProtocolWebSocket.attributes(out);
    for (TTElementIter it = out.begin() ; it != out.end() ; it++)
         TTLogMessage("WebSocket::%s is a %s \n", TTSymbol(&it).c_str(), mProtocolWebSocket.attributeType(TTSymbol(&it)).c_str());
    
    // Register myDemoApp and myRemoteApp to the WebSocket protocol
    mProtocolWebSocket.send("RegisterApplication", "myDemoApp", out);
    mProtocolWebSocket.send("RegisterApplication", "myRemoteApp", out);
    
    // Select myDemoApp to set its protocol parameters
    mProtocolWebSocket.send("SelectApplication", "myDemoApp", out);
    mProtocolWebSocket.set("???", none);
    
    // Select myRemoteApp to set its protocol parameters
    mProtocolWebSocket.send("SelectApplication", "myRemoteApp", out);
    mProtocolWebSocket.set("???", none);
    
    // Enable WebSocket communication
    mProtocolMinuit.send("Run");
    
    // Get protocol names
    mApplicationManager.get("protocolNames", out);
    for (TTElementIter it = out.begin() ; it != out.end() ; it++)
        TTLogMessage("%s protocol is well registered into the application manager \n", TTSymbol(&it).c_str());
    
	TTLogMessage("\n*** Creation of myDemoApp datas ***\n");
    /////////////////////////////////////////////////////////
    
    // Create a parameter data and set its callback function and baton and some attributes
    mDataDemoParameter = TTObject("Data", "parameter");
    mDataDemoParameter.set("callbackFunction", TTPtr(&DemoDataReturnValueCallback));
    mDataDemoParameter.set("callbackBaton", TTPtr(mDataDemoParameter.instance()));
    mDataDemoParameter.set("type", "decimal");
    mDataDemoParameter.set("rangeBounds", TTValue(-1., 1.));
    mDataDemoParameter.set("description", "this parameter is useful for demo purpose");
    
    // Register the parameter data into myDemoApp at an address
    args = TTAddress("/myParameter");
    args.append(mDataDemoParameter);
    err = mApplicationDemo.send("RegisterObject", args, out);
    
    if (err)
        TTLogError("Error : can't register data at /myParameter address \n");
    
    else {
        address = out[0];
        TTLogMessage("\n /myParameter : effective registration address is %s \n", address.c_str());
    }
    
    // Create a message data and set its callback function and baton and some attributes
    mDataDemoMessage = TTObject("Data", "parameter");
    mDataDemoMessage.set("callbackFunction", TTPtr(&DemoDataReturnValueCallback));
    mDataDemoMessage.set("callbackBaton", TTPtr(mDataDemoMessage.instance()));
    mDataDemoMessage.set("type", "none");
    mDataDemoMessage.set("description", "this message is useful for demo purpose");
    
    // Register the message data into myDemoApp at an address
    args = TTAddress("/myMessage");
    args.append(mDataDemoMessage);
    mApplicationDemo.send("RegisterObject", args, out);
    
    if (err)
        TTLogError("Error : can't register data at /myMessage address \n");
    
    else {
        address = out[0];
        TTLogMessage("\n /myMessage : effective registration address is %s \n", address.c_str());
    }
    
    // Create a return data and set its callback function and baton and some attributes
    mDataDemoReturn = TTObject("Data", "return");
    mDataDemoReturn.set("callbackFunction", TTPtr(&DemoDataReturnValueCallback));
    mDataDemoReturn.set("callbackBaton", TTPtr(mDataDemoReturn.instance()));
    mDataDemoReturn.set("type", "integer");
    mDataDemoReturn.set("description", "this return is useful for demo purpose");
    
    // Register the return data into myDemoApp at an address
    args = TTAddress("/myReturn");
    args.append(mDataDemoReturn);
    mApplicationDemo.send("RegisterObject", args, out);
    
    if (err)
        TTLogError("Error : can't register data at /myReturn address \n");
    
    else {
        address = out[0];
        TTLogMessage("\n /myReturn : effective registration address is %s \n", address.c_str());
    }
}

void
Use()
{
    TTValue     args, v, out, none;
    TTObject    aData, aSender, aReceiver;
    TTString    s;
    TTErr       err;
    
    
    // Write an application namespace in console
    mApplicationDemo.send("Dump");
    
    // Retreive a data object (this allows to don't have to manage data object ourself)
    err = mApplicationDemo.send("RetreiveObject", "/myParameter", out);
    
    if (!err) {
        
        aData = TTObject(out[0]);
        
        // Set data's value and check his validity
        aData.send("Command", 10., none);
        
        // Get data's value
        aData.get("value", v);
        
        // Print the value
        v.toString();
        s = TTString(v[0]);
        TTLogMessage("/myParameter value is %s \n", s.data());
    }
    
    // Create a sender to set an object attribute without taking care of his existence or not
    aSender = TTObject("Sender");
    aSender.set("address", "/myParameter:value");
    aSender.send("Send", 0.5, none);
    
#ifdef READY
    // Create a receiver to observe an object attribute without taking care of his existence or not
    aReceiver = TTObject("Sender");
    aReceiver.set("callbackFunction", TTPtr(&DemoReturnValueCallback));
    aReceiver.set("callbackBaton", TTPtr(aReceiver.instance()));
    aReceiver.set("address", "/myParameter:value");
#endif
}

void
Quit()
{
    TTValue     args, v, out, none;
    TTAddress   address;
    
    
    TTLogMessage("\n*** Release myDemoApp datas ***\n");
    /////////////////////////////////////////////////////
    
    // Unregister the parameter
    if ( mApplicationDemo.send("UnregisterObject", "/myParameter", out))
        TTLogError("Error : can't unregister data at /myParameter address \n");
    
    // Unregister the message
    if (mApplicationDemo.send("UnregisterObject", "/myMessage", out))
        TTLogError("Error : can't unregister data at /myMessage address \n");
    
    // Unregister the return
    if (mApplicationDemo.send("UnregisterObject", "/myReturn", out))
        TTLogError("Error : can't unregister data at /myReturn address \n");
    
    
    TTLogMessage("\n*** Release protocols ***\n");
    ///////////////////////////////////////////////
    
    mApplicationManager.send("ReleaseProtocol", "Minuit", out);
    mApplicationManager.send("ReleaseProtocol", "WebSocket", out);

    
    TTLogMessage("\n*** Release applications ***\n");
    //////////////////////////////////////////////////
    
    mApplicationManager.send("ReleaseApplication", "myRemoteApp", out);
    mApplicationManager.send("ReleaseApplication", "myDemoApp", out);
}

void
DemoDataReturnValueCallback(TTPtr baton, TTValue& v)
{
	TTPtr		x;
	TTString	s;

	// Compare baton to know which data has been updated
    if (baton == mDataDemoParameter.instance()) {
        
        // print the returned value
        v.toString();
        v.get(0, s);
        TTLogMessage("/myParameter has been updated to %s \n", s.data());
        return;
    }
    
    if (baton == mDataDemoMessage.instance()) {
        
        // print the returned value
        v.toString();
        v.get(0, s);
        TTLogMessage("/myMessage has been updated to %s \n", s.data());
        return;
    }
    
    if (baton == mDataDemoReturn.instance()) {
        
        // print the returned value
        v.toString();
        v.get(0, s);
        TTLogMessage("/myReturn has been updated to %s \n", s.data());
        return;
    }
}