#include "TTModular.h"

#include <iostream>
#include <string>

// A class for our application
class DemoApp {
    
public:
    
    DemoApp(){};
    ~DemoApp(){};
    
    // This application is divided into tree main functions
    void Setup();
    void Execute(TTSymbol& command);
    void Quit();
    
private:
    
    // Declare the application manager, our application and another one
    TTObject mApplicationManager;
    TTObject mApplicationDemo;
    TTObject mApplicationRemote;
    
    // Declare protocol units to use
    TTObject mProtocolMinuit;
    TTObject mProtocolWebSocket;
 
public:
    
    // Declare publicly all datas of our application to retreive them from the callback function
    TTObject mDataDemoParameter;     // a parameter is relative to the state of our application
    TTObject mDataDemoMessage;       // a message is a kind of command to send to our application
    TTObject mDataDemoReturn;        // a return is a kind of notification sent by our application
    
    // Be friend with the callback function
    friend TTErr DemoAppDataReturnValueCallback(const TTValue& baton, const TTValue& v);
};

// Callback function to get data's value back
TTErr DemoAppDataReturnValueCallback(const TTValue& baton, const TTValue& v);

int
main(int argc, char **argv) 
{
    DemoApp     app;

    TTLogMessage("\n*** Start of Jamoma Modular demonstration ***\n");
    
    app.Setup();
    
    // read command from console
    std::string s;
    TTSymbol    command;
    do {
        TTLogMessage("Type a command : \n");
        std::getline(std::cin, s);
        command = TTSymbol(s);
        
        if (command == TTSymbol("quit")) {
            
            app.Quit();
            
            TTLogMessage("\n*** End of Jamoma Modular demonstration ***\n");
            return EXIT_SUCCESS;
        }
        else
            app.Execute(command);
    }
    while (YES);
}

void
DemoApp::Setup()
{
    TTValue     args, v, out, none;
    TTAddress   address;
    TTErr       err;
    
    TTLogMessage("\n*** Initialisation of Modular environnement ***\n");
    /////////////////////////////////////////////////////////////////////
    
    // Init the Modular library (passing the folder path where all the dylibs are)
    TTModularInit("/usr/local/jamoma");
    
    // Create an application manager
    mApplicationManager = TTObject("ApplicationManager");
    
    
    TTLogMessage("\n*** Creation of myDemoApp and myRemoteApp applications ***\n");
    ////////////////////////////////////////////////////////////////////////////////
    
    // Create a local application called "demo" and get it back
    err = mApplicationManager.send("ApplicationInstantiateLocal", TTSymbol("demo"), out);
    
    if (err) {
        TTLogError("Error : can't create myDemoApp application \n");
        return;
    }
    else
        mApplicationDemo = out[0];
    
    
    // Create a distant application called "i-score" and get it back
    err = mApplicationManager.send("ApplicationInstantiateDistant", TTSymbol("i-score"), out);
    
    if (err) {
        TTLogError("Error : can't create myRemoteApp application \n");
        return;
    }
    else
        mApplicationRemote = out[0];
    
    // Get registered application names
    mApplicationManager.get("applicationNames", out);
    for (TTElementIter it = out.begin() ; it != out.end() ; it++) {
        TTSymbol name = TTElement(*it);
        TTLogMessage("%s application is well registered into the application manager \n", name.c_str());
    }
    
    
    TTLogMessage("\n*** Enable Minuit communication ***\n");
    ////////////////////////////////////////////////////////////////////////
    
    // Create a Minuit protocol unit
    err = mApplicationManager.send("ProtocolInstantiate", TTSymbol("Minuit"), out);
    
    if (err) {
        TTLogError("Error : can't create Minuit protocol unit \n");
        return;
    }
    else
        mProtocolMinuit = out[0];
    
    // Get Minuit Protocol attribute names and types
    mProtocolMinuit.get("parameterNames", out);
    for (TTElementIter it = out.begin() ; it != out.end() ; it++) {
        TTSymbol name = TTElement(*it);
        TTSymbol type = mProtocolMinuit.attributeType(name);
        TTLogMessage("Minuit %s parameter is a %s \n", name.c_str(), type.c_str());
    }
    
    // Register myDemoApp and myRemoteApp to the Minuit protocol
    mProtocolMinuit.send("RegisterApplication", TTSymbol("demo"), out);
    mProtocolMinuit.send("RegisterApplication", TTSymbol("i-score"), out);
    
    // Select myDemoApp to set its protocol parameters
    mProtocolMinuit.send("SelectApplication", TTSymbol("demo"), out);
    mProtocolMinuit.set("port", 9998);
    mProtocolMinuit.set("ip", TTSymbol("127.0.0.1"));
    
    // Select myRemoteApp to set its protocol parameters
    mProtocolMinuit.send("SelectApplication", TTSymbol("i-score"), out);
    mProtocolMinuit.set("port", 13579);
    mProtocolMinuit.set("ip", TTSymbol("127.0.0.1"));
    
    // Get Minuit parameters for each registered application
    mProtocolMinuit.get("registeredApplicationNames", out);
    for (TTElementIter it = out.begin() ; it != out.end() ; it++) {
        TTSymbol name = TTElement(*it);
        
        mProtocolMinuit.send("SelectApplication", name, out);
        TTLogMessage("Minuit setup for %s application : \n", name.c_str());
        
        mProtocolMinuit.get("ip", v);
        TTSymbol ip = v[0];
        TTLogMessage("- ip = %s \n", ip.c_str());
        
        mProtocolMinuit.get("port", v);
        TTUInt16 port = v[0];
        TTLogMessage("- port = %d \n", port);
    }
    
    // Enable Minuit communication
    mProtocolMinuit.send("Run");
    
/*
    TTLogMessage("\n*** Enable WebSocket communication ***\n");
    ////////////////////////////////////////////////////////////////////////
    
    // Create a WebSocket protocol unit
    err = mApplicationManager.send("ProtocolInstantiate", TTSymbol("WebSocket"), out);
    
    if (err) {
        TTLogError("Error : can't create WebSocket protocol unit \n");
        return;
    }
    else
        mProtocolWebSocket = out[0];
    
    // Get WebSocket Protocol attribute names and types
    mProtocolMinuit.get("parameterNames", out);
    for (TTElementIter it = out.begin() ; it != out.end() ; it++) {
        TTSymbol name = TTElement(*it);
        TTLogMessage("WebSocket::%s is a %s \n", name.c_str(), mProtocolWebSocket.attributeType(name).c_str());
    }
    
    // Register myDemoApp and myRemoteApp to the WebSocket protocol
    mProtocolWebSocket.send("RegisterApplication", TTSymbol("demo"), out);
    mProtocolWebSocket.send("RegisterApplication", TTSymbol("i-score"), out);
    
    // Select myDemoApp to set its protocol parameters
    mProtocolWebSocket.send("SelectApplication", TTSymbol("demo"), out);
    mProtocolWebSocket.set("???", none);
    
    // Select myRemoteApp to set its protocol parameters
    mProtocolWebSocket.send("SelectApplication", TTSymbol("i-score"), out);
    mProtocolWebSocket.set("???", none);
    
    // Enable WebSocket communication
    mProtocolWebSocket.send("Run");
*/
    
    TTLogMessage("\nCurrent Protocol Setup :\n");
    // Get protocol names
    mApplicationManager.get("protocolNames", out);
    for (TTElementIter it = out.begin() ; it != out.end() ; it++) {
        TTSymbol name = TTElement(*it);
        TTLogMessage("%s protocol is well registered into the application manager \n", name.c_str());
    }
    
    
	TTLogMessage("\n*** Creation of myDemoApp datas ***\n");
    /////////////////////////////////////////////////////////
    
    // Create a parameter data and set its callback function and baton and some attributes
    mDataDemoParameter = TTObject("Data", TTSymbol("parameter"));
    mDataDemoParameter.set("function", TTPtr(&DemoAppDataReturnValueCallback));
    mDataDemoParameter.set("baton", mDataDemoParameter.instance());
    mDataDemoParameter.set("type", TTSymbol("decimal"));
    mDataDemoParameter.set("rangeBounds", TTValue(-1., 1.));
    mDataDemoParameter.set("description", TTSymbol("this parameter is useful for demo purpose"));
    
    // Register the parameter data into myDemoApp at an address
    args = TTValue(TTAddress("/myParameter"), mDataDemoParameter.instance());
    err = mApplicationDemo.send("RegisterObject", args, out);
    
    if (err)
        TTLogError("Error : can't register data at /myParameter address \n");
    
    else {
        address = out[0];
        TTLogMessage("\n /myParameter : effective registration address is %s \n", address.c_str());
    }
    
    // Create a message data and set its callback function and baton and some attributes
    mDataDemoMessage = TTObject("Data", TTSymbol("parameter"));
    mDataDemoMessage.set("function", TTPtr(&DemoAppDataReturnValueCallback));
    mDataDemoMessage.set("baton", mDataDemoMessage.instance());
    mDataDemoMessage.set("type", TTSymbol("none"));
    mDataDemoMessage.set("description", TTSymbol("this message is useful for demo purpose"));
    
    // Register the message data into myDemoApp at an address
    args = TTValue(TTAddress("/myMessage"), mDataDemoMessage.instance());
    mApplicationDemo.send("RegisterObject", args, out);
    
    if (err)
        TTLogError("Error : can't register data at /myMessage address \n");
    
    else {
        address = out[0];
        TTLogMessage("\n /myMessage : effective registration address is %s \n", address.c_str());
    }
    
    // Create a return data and set its callback function and baton and some attributes
    mDataDemoReturn = TTObject("Data", TTSymbol("return"));
    mDataDemoReturn.set("function", TTPtr(&DemoAppDataReturnValueCallback));
    mDataDemoReturn.set("baton", mDataDemoReturn.instance());
    mDataDemoReturn.set("type", TTSymbol("integer"));
    mDataDemoReturn.set("description", TTSymbol("this return is useful for demo purpose"));
    
    // Register the return data into myDemoApp at an address
    args = TTValue(TTAddress("/myReturn"), mDataDemoReturn.instance());
    mApplicationDemo.send("RegisterObject", args, out);
    
    if (err)
        TTLogError("Error : can't register data at /myReturn address \n");
    
    else {
        address = out[0];
        TTLogMessage("\n /myReturn : effective registration address is %s \n", address.c_str());
    }
}

void
DemoApp::Execute(TTSymbol& command)
{
    TTValue     args, v, out, none;
    TTObject    aData, aSender, aReceiver;
    TTString    s;
    TTErr       err;
    
    // Write an application namespace in console
    mApplicationDemo.send("Dump");
    
    // Retreive a data object (this allows to don't have to manage data object ourself)
    err = mApplicationDemo.send("RetreiveObject", TTSymbol("/myParameter"), out);
    
    if (!err) {
        
        aData = out[0];
        
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
    aSender.set("address", TTSymbol("/myParameter:value"));
    aSender.send("Send", 0.5, none);
    
    // Create a receiver to observe an object attribute without taking care of his existence or not
    aReceiver = TTObject("Sender");
    aReceiver.set("callbackFunction", TTPtr(&DemoAppDataReturnValueCallback));
    aReceiver.set("callbackBaton", TTPtr(aReceiver.instance()));
    aReceiver.set("address", TTSymbol("/myParameter:value"));
}

void
DemoApp::Quit()
{
    TTValue     args, v, out, none;
    TTAddress   address;
    
    
    TTLogMessage("\n*** Release myDemoApp datas ***\n");
    /////////////////////////////////////////////////////
    
    // Unregister the parameter
    if ( mApplicationDemo.send("UnregisterObject", TTSymbol("/myParameter"), out))
        TTLogError("Error : can't unregister data at /myParameter address \n");
    
    // Unregister the message
    if (mApplicationDemo.send("UnregisterObject", TTSymbol("/myMessage"), out))
        TTLogError("Error : can't unregister data at /myMessage address \n");
    
    // Unregister the return
    if (mApplicationDemo.send("UnregisterObject", TTSymbol("/myReturn"), out))
        TTLogError("Error : can't unregister data at /myReturn address \n");
    
    
    TTLogMessage("\n*** Release protocols ***\n");
    ///////////////////////////////////////////////
    
    mApplicationManager.send("ReleaseProtocol", TTSymbol("Minuit"), out);
    mApplicationManager.send("ReleaseProtocol", TTSymbol("WebSocket"), out);
    
    
    TTLogMessage("\n*** Release applications ***\n");
    //////////////////////////////////////////////////
    
    mApplicationManager.send("ReleaseApplication", TTSymbol("i-score"), out);
    mApplicationManager.send("ReleaseApplication", TTSymbol("demo"), out);
}

TTErr
DemoAppDataReturnValueCallback(const TTValue& baton, const TTValue& value)
{
    DemoApp*    demoApp = (DemoApp*)TTPtr(baton[0]);
    TTObject    anObject = TTObject(baton[1]);
    
	// Reteive which data has been updated
    if (anObject.instance() == demoApp->mDataDemoParameter.instance()) {
        
        // print the returned value
        TTLogMessage("/myParameter has been updated to %s \n", value.toString().data());
        return kTTErrNone;
    }
    
    if (anObject.instance() == demoApp->mDataDemoMessage.instance()) {
        
        // print the returned value
        TTLogMessage("/myMessage has been updated to %s \n", value.toString().data());
        return kTTErrNone;
    }
    
    if (anObject.instance() == demoApp->mDataDemoReturn.instance()) {
        
        // print the returned value
        TTLogMessage("/myReturn has been updated to %s \n", value.toString().data());
        return kTTErrNone;
    }
    
    return kTTErrGeneric;
}