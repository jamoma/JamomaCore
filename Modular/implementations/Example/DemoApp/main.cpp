#include "TTModular.h"

#include <iostream>
#include <string>

// A class for our application
class DemoApp {
    
public:
    
    DemoApp(){};
    ~DemoApp(){};
    
    // This application is divided into four main functions
    void Setup();
    void Export();
    void Execute(std::string command);
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
    DemoApp app;

    TTLogMessage("\n*** Start of Jamoma Modular demonstration ***\n");
    
    app.Setup();
    
    // read command from console
    do {
        TTLogMessage("\nType a command : \n");
        
        std::string s;
        std::getline(std::cin, s);
        
        // quit the application
        if (!s.compare("quit")) {
            
            app.Quit();
            
            TTLogMessage("\n*** End of Jamoma Modular demonstration ***\n");
            return EXIT_SUCCESS;
        }
        // dump informations about the application
        else if (!s.compare("export")) {
            
             app.Export();
        }
        // parse a command and execute it
        else {
            
            app.Execute(s);
        }
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
    err = mApplicationManager.send("ApplicationInstantiateLocal", "demo", out);
    
    if (err) {
        TTLogError("Error : can't create myDemoApp application \n");
        return;
    }
    else
        mApplicationDemo = out[0];
    
    
    // Create a distant application called "i-score" and get it back
    err = mApplicationManager.send("ApplicationInstantiateDistant", "i-score", out);
    
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
    err = mApplicationManager.send("ProtocolInstantiate", "Minuit", out);
    
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
    mProtocolMinuit.send("ApplicationRegister", "demo", out);
    mProtocolMinuit.send("ApplicationRegister", "i-score", out);
    
    // Select myDemoApp to set its protocol parameters
    mProtocolMinuit.send("ApplicationSelect", "demo", out);
    mProtocolMinuit.set("port", 9998);
    mProtocolMinuit.set("ip", "127.0.0.1");
    
    // Select myRemoteApp to set its protocol parameters
    mProtocolMinuit.send("ApplicationSelect", "i-score", out);
    mProtocolMinuit.set("port", 13579);
    mProtocolMinuit.set("ip", "127.0.0.1");
    
    // Get Minuit parameters for each registered application
    mProtocolMinuit.get("applicationNames", out);
    for (TTElementIter it = out.begin() ; it != out.end() ; it++) {
        TTSymbol name = TTElement(*it);
        
        mProtocolMinuit.send("ApplicationSelect", name, out);
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
    err = mApplicationManager.send("ProtocolInstantiate", "WebSocket", out);
    
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
    mProtocolWebSocket.send("ApplicationRegister", "demo", out);
    mProtocolWebSocket.send("ApplicationRegister", "i-score", out);
    
    // Select myDemoApp to set its protocol parameters
    mProtocolWebSocket.send("ApplicationSelect", "demo", out);
    mProtocolWebSocket.set("???", none);
    
    // Select myRemoteApp to set its protocol parameters
    mProtocolWebSocket.send("ApplicationSelect", "i-score", out);
    mProtocolWebSocket.set("???", none);
    
    // Enable WebSocket communication
    mProtocolWebSocket.send("Run");
*/
    
    TTLogMessage("\n*** Current Protocol Setup ***\n");
    // Get protocol names
    mApplicationManager.get("protocolNames", out);
    for (TTElementIter it = out.begin() ; it != out.end() ; it++) {
        TTSymbol name = TTElement(*it);
        TTLogMessage("%s protocol is well registered into the application manager \n", name.c_str());
    }
    
    
	TTLogMessage("\n*** Creation of myDemoApp datas ***\n");
    /////////////////////////////////////////////////////////
    
    // Create a parameter data and set its callback function and baton and some attributes
    mDataDemoParameter = TTObject("Data", "parameter");
    
    // Setup the callback mechanism to get the value back
    args = TTValue(TTPtr(this), mDataDemoParameter);
    mDataDemoParameter.set("baton", args);
    mDataDemoParameter.set("function", TTPtr(&DemoAppDataReturnValueCallback));

    // Setup the data attributes depending of its use inside the application
    mDataDemoParameter.set("type", "decimal");
    mDataDemoParameter.set("rangeBounds", TTValue(-1., 1.));
    mDataDemoParameter.set("rangeClipmode", "both");
    mDataDemoParameter.set("rampDrive", "System");
    mDataDemoParameter.set("description", "this parameter is useful for demo purpose");
    
    // Register the parameter data into myDemoApp at an address
    args = TTValue("/myParameter", mDataDemoParameter);
    err = mApplicationDemo.send("ObjectRegister", args, out);
    
    if (err)
        TTLogError("Error : can't register data at /myParameter address \n");
    
    else {
        address = out[0];
        TTLogMessage("\n /myParameter : effective registration address is %s \n", address.c_str());
    }
    
    // Create a message data and set its callback function and baton and some attributes
    mDataDemoMessage = TTObject("Data", "message");
    
    // Setup the callback mechanism to get the value back
    args = TTValue(TTPtr(this), mDataDemoMessage);
    mDataDemoMessage.set("baton", args);
    mDataDemoMessage.set("function", TTPtr(&DemoAppDataReturnValueCallback));
    
    // Setup the data attributes depending of its use inside the application
    mDataDemoMessage.set("type", "none");
    mDataDemoMessage.set("description", "this message is useful for demo purpose");
    
    // Register the message data into myDemoApp at an address
    args = TTValue("/myMessage", mDataDemoMessage);
    mApplicationDemo.send("ObjectRegister", args, out);
    
    if (err)
        TTLogError("Error : can't register data at /myMessage address \n");
    
    else {
        address = out[0];
        TTLogMessage("\n /myMessage : effective registration address is %s \n", address.c_str());
    }
    
    // Create a return data and set its callback function and baton and some attributes
    mDataDemoReturn = TTObject("Data", "return");
    
    // Setup the callback mechanism to get the value back
    args = TTValue(TTPtr(this), mDataDemoReturn);
    mDataDemoReturn.set("baton", args);
    mDataDemoReturn.set("function", TTPtr(&DemoAppDataReturnValueCallback));

    // Setup the data attributes depending of its use inside the application
    mDataDemoReturn.set("type", "integer");
    mDataDemoReturn.set("description", "this return is useful for demo purpose");
    
    // Register the return data into myDemoApp at an address
    args = TTValue("/myReturn", mDataDemoReturn);
    mApplicationDemo.send("ObjectRegister", args, out);
    
    if (err)
        TTLogError("Error : can't register data at /myReturn address \n");
    
    else {
        address = out[0];
        TTLogMessage("\n /myReturn : effective registration address is %s \n", address.c_str());
    }
}

void
DemoApp::Export()
{
    TTValue     out;
    TTObject    xmlHandler("XmlHandler");
    
    // export the namespace of myDemoApp
    xmlHandler.set("object", mApplicationDemo);
    xmlHandler.send("Write", "./myDemoApp.xml", out);
}

void
DemoApp::Execute(std::string command)
{
    // parse the command : address value
    TTValue v = TTString(command);
    v.fromString();
    
    // a command have to start by a symbol
    if (v.size() > 1) {
        
        if (v[0].type() == kTypeSymbol) {
            
            TTSymbol    address = v[0];
            TTValue     args, out, none;
            
            args.copyFrom(v, 1);
            
            // Retreive a data object
            TTErr err = mApplicationDemo.send("ObjectRetreive", address, out);
            
            if (!err) {
                
                TTObject aData = out[0];
                
                // Set data's value and check his validity
                aData.send("Command", args, none);
            }
        }
    }
}

void
DemoApp::Quit()
{
    TTValue out;

    TTLogMessage("\n*** Release myDemoApp datas ***\n");
    /////////////////////////////////////////////////////
    
    // Unregister the parameter
    if ( mApplicationDemo.send("ObjectUnregister", "/myParameter", out))
        TTLogError("Error : can't unregister data at /myParameter address \n");
    
    // Unregister the message
    if (mApplicationDemo.send("ObjectUnregister", "/myMessage", out))
        TTLogError("Error : can't unregister data at /myMessage address \n");
    
    // Unregister the return
    if (mApplicationDemo.send("ObjectUnregister", "/myReturn", out))
        TTLogError("Error : can't unregister data at /myReturn address \n");
    
    
    TTLogMessage("\n*** Release protocols ***\n");
    ///////////////////////////////////////////////
    
    mApplicationManager.send("ProtocolRelease", "Minuit", out);
    //mApplicationManager.send("ProtocolRelease", "WebSocket", out);
    
    
    TTLogMessage("\n*** Release applications ***\n");
    //////////////////////////////////////////////////
    
    mApplicationManager.send("ApplicationRelease", "i-score", out);
    mApplicationManager.send("ApplicationRelease", "demo", out);
}

TTErr
DemoAppDataReturnValueCallback(const TTValue& baton, const TTValue& value)
{
    DemoApp*    demoApp = (DemoApp*)TTPtr(baton[0]);
    TTObject    anObject = baton[1];
    
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