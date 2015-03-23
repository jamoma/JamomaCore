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
    TTObject mDataDemoDecimalParameter;     // a parameter is relative to the state of our application
    TTObject mDataDemoStringParameter;      // a parameter is relative to the state of our application
    TTObject mDataDemoBoolParameter;        // a parameter is relative to the state of our application
    TTObject mDataDemoMessage;              // a message is a kind of command to send to our application
    TTObject mDataDemoReturn;               // a return is a kind of notification sent by our application
    
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
    
    // Create a local application called "myDemoApp" and get it back
    err = mApplicationManager.send("ApplicationInstantiateLocal", "myDemoApp", out);
    
    if (err) {
        TTLogError("Error : can't create myDemoApp application \n");
        return;
    }
    else
        mApplicationDemo = out[0];
    
    // Get registered application names
    mApplicationManager.get("applicationNames", out);
    for (TTElementIter it = out.begin() ; it != out.end() ; it++) {
        TTSymbol name = TTElement(*it);
        TTLogMessage("%s application is well registered into the application manager \n", name.c_str());
    }
    
    
    //TTLogMessage("\n*** Enable Minuit communication ***\n");
    //////////////////////////////////////////////////////////////////////////
    //
    //// Create a Minuit protocol unit
    //err = mApplicationManager.send("ProtocolInstantiate", "Minuit", out);
    //
    //if (err) {
    //    TTLogError("Error : can't create Minuit protocol unit \n");
    //    return;
    //}
    //else
    //    mProtocolMinuit = out[0];
    //
    //// Get Minuit Protocol attribute names and types
    //mProtocolMinuit.get("parameterNames", out);
    //for (TTElementIter it = out.begin() ; it != out.end() ; it++) {
    //    TTSymbol name = TTElement(*it);
    //    TTSymbol type = mProtocolMinuit.attributeType(name);
    //    TTLogMessage("Minuit %s parameter is a %s \n", name.c_str(), type.c_str());
    //}
    //
    //// Register mymyRemoteAppApp and myRemoteApp to the Minuit protocol
    //mProtocolMinuit.send("ApplicationRegister", "myDemoApp", out);
    //mProtocolMinuit.send("ApplicationRegister", "myRemoteApp", out);
    //
    //// Select myDemoApp to set its protocol parameters
    //mProtocolMinuit.send("ApplicationSelect", "myDemoApp", out);
    //mProtocolMinuit.set("port", 9998);
    //mProtocolMinuit.set("ip", "127.0.0.1");
    //
    //// Select myRemoteApp to set its protocol parameters
    //mProtocolMinuit.send("ApplicationSelect", "myRemoteApp", out);
    //mProtocolMinuit.set("port", 13579);
    //mProtocolMinuit.set("ip", "127.0.0.1");
    //
    //// Get Minuit parameters for each registered application
    //mProtocolMinuit.get("applicationNames", out);
    //for (TTElementIter it = out.begin() ; it != out.end() ; it++) {
    //    TTSymbol name = TTElement(*it);
    //    
    //    mProtocolMinuit.send("ApplicationSelect", name, out);
    //    TTLogMessage("Minuit setup for %s application : \n", name.c_str());
    //    
    //    mProtocolMinuit.get("ip", v);
    //    TTSymbol ip = v[0];
    //    TTLogMessage("- ip = %s \n", ip.c_str());
    //    
    //    mProtocolMinuit.get("port", v);
    //    TTUInt16 port = v[0];
    //    TTLogMessage("- port = %d \n", port);
    //}
    //
    //// Enable Minuit communication
    //mProtocolMinuit.send("Run");
    
    
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
    mProtocolWebSocket.get("parameterNames", out);
    for (TTElementIter it = out.begin() ; it != out.end() ; it++) {
        TTSymbol name = TTElement(*it);
        TTLogMessage("WebSocket %s parameter is a %s \n", name.c_str(), mProtocolWebSocket.attributeType(name).c_str());
    }
    
    // Register myDemoApp and myRemoteApp to the WebSocket protocol
    mProtocolWebSocket.send("ApplicationRegister", "myDemoApp", out);
    
    // Select myDemoApp to set its protocol parameters
    mProtocolWebSocket.send("ApplicationSelect", "myDemoApp", out);
    /*mProtocolWebSocket.set("htmlPath", "/Users/ProLauGre/Travail/09-ossia/Jamoma/Core/Modular/implementations/Example/DemoApp/to_test_websocket/jamomarmot");*/
	mProtocolWebSocket.set("htmlPath", "C:/Users/Laugre/Travail/09-ossia/Core/Modular/implementations/Example/DemoApp/to_test_websocket/jamomarmot");
    mProtocolWebSocket.set("port", 9001);
    
    // Get WebSocket parameters for each registered application
    mProtocolWebSocket.get("applicationNames", out);
    for (TTElementIter it = out.begin() ; it != out.end() ; it++) {
        TTSymbol name = TTElement(*it);
        
        mProtocolWebSocket.send("ApplicationSelect", name, out);
        TTLogMessage("WebSocket setup for %s application : \n", name.c_str());
        
        mProtocolWebSocket.get("htmlPath", v);
        TTSymbol htmlPath = v[0];
        TTLogMessage("- htmlPath = %s \n", htmlPath.c_str());
        
        mProtocolWebSocket.get("port", v);
        TTUInt16 port = v[0];
        TTLogMessage("- port = %d \n", port);
    }
    
    // Enable WebSocket communication
    mProtocolWebSocket.send("Run");
    
    TTLogMessage("\n*** Current Protocol Setup ***\n");
    // Get protocol names
    mApplicationManager.get("protocolNames", out);
    for (TTElementIter it = out.begin() ; it != out.end() ; it++) {
        TTSymbol name = TTElement(*it);
        TTLogMessage("%s protocol is well registered into the application manager \n", name.c_str());
    }
    
    
	TTLogMessage("\n*** Creation and registration of datas into myDemoApp ***\n");
    /////////////////////////////////////////////////////////
    
    TTLogMessage("\n*** Creation and registration of a decimal parameter ***\n");
    /////////////////////////////////////////////////////////
    
    // Create a decimal parameter data and set its callback function and baton and some attributes
    mDataDemoDecimalParameter = TTObject("Data", "parameter");
    
    // Setup the callback mechanism to get the value back
    args = TTValue(TTPtr(this), mDataDemoDecimalParameter);
    mDataDemoDecimalParameter.set("baton", args);
    mDataDemoDecimalParameter.set("function", TTPtr(&DemoAppDataReturnValueCallback));
    
    // Setup the data attributes depending of its use inside the application
    mDataDemoDecimalParameter.set("type", "decimal");
    mDataDemoDecimalParameter.set("rangeBounds", TTValue(-1., 1.));
    mDataDemoDecimalParameter.set("rangeClipmode", "both");
    mDataDemoDecimalParameter.set("rampDrive", "System");
    mDataDemoDecimalParameter.set("description", "this parameter is useful for demo purpose");
    mDataDemoDecimalParameter.set("valueDefault", 0);
    mDataDemoDecimalParameter.set("value", 0.9);
    
    // Register the parameter data into myDemoApp at an address
    args = TTValue("/myParameterDecimal", mDataDemoDecimalParameter);
    err = mApplicationDemo.send("ObjectRegister", args, out);
    
    if (err)
        TTLogError("Error : can't register data at /myParameterDecimal address \n");
    
    else {
        address = out[0];
        TTLogMessage("\n /myParameterDecimal : effective registration address is %s \n", address.c_str());
    }
    
    TTLogMessage("\n*** Creation and registration of a string parameter ***\n");
    /////////////////////////////////////////////////////////
    
    // Create a string parameter data and set its callback function and baton and some attributes
    mDataDemoStringParameter = TTObject("Data", "parameter");
    
    // Setup the callback mechanism to get the value back
    args = TTValue(TTPtr(this), mDataDemoStringParameter);
    mDataDemoStringParameter.set("baton", args);
    mDataDemoStringParameter.set("function", TTPtr(&DemoAppDataReturnValueCallback));
    
    // Setup the data attributes depending of its use inside the application
    mDataDemoStringParameter.set("type", "string");
    mDataDemoStringParameter.set("description", "this parameter is useful for demo purpose");
    mDataDemoStringParameter.set("valueDefault", "myDemoApp");
    mDataDemoStringParameter.set("value", "test");
    
    // Register the parameter data into myDemoApp at an address
    args = TTValue("/myParameterString", mDataDemoStringParameter);
    err = mApplicationDemo.send("ObjectRegister", args, out);
    
    if (err)
        TTLogError("Error : can't register data at /myParameterString address \n");
    
    else {
        address = out[0];
        TTLogMessage("\n /myParameterString : effective registration address is %s \n", address.c_str());
    }
    
    TTLogMessage("\n*** Creation and registration of a bool parameter ***\n");
    /////////////////////////////////////////////////////////
    
    // Create a bool parameter data and set its callback function and baton and some attributes
    mDataDemoBoolParameter = TTObject("Data", "parameter");
    
    // Setup the callback mechanism to get the value back
    args = TTValue(TTPtr(this), mDataDemoBoolParameter);
    mDataDemoBoolParameter.set("baton", args);
    mDataDemoBoolParameter.set("function", TTPtr(&DemoAppDataReturnValueCallback));
    
    // Setup the data attributes depending of its use inside the application
    mDataDemoBoolParameter.set("type", "boolean");
    mDataDemoBoolParameter.set("description", "this parameter is useful for demo purpose");
    mDataDemoBoolParameter.set("valueDefault", true);
    mDataDemoBoolParameter.set("value", true);
    
    // Register the parameter data into myDemoApp at an address
    args = TTValue("/myParameterBool", mDataDemoBoolParameter);
    err = mApplicationDemo.send("ObjectRegister", args, out);
    
    if (err)
        TTLogError("Error : can't register data at /myParameterBool address \n");
    
    else {
        address = out[0];
        TTLogMessage("\n /myParameterBool : effective registration address is %s \n", address.c_str());
    }
    
    TTLogMessage("\n*** Creation and registration of a message ***\n");
    /////////////////////////////////////////////////////////
    
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
    err = mApplicationDemo.send("ObjectRegister", args, out);
    
    if (err)
        TTLogError("Error : can't register data at /myMessage address \n");
    
    else {
        address = out[0];
        TTLogMessage("\n /myMessage : effective registration address is %s \n", address.c_str());
    }
    
    TTLogMessage("\n*** Creation and registration of a return ***\n");
    /////////////////////////////////////////////////////////
    
    // Create a return data and set its callback function and baton and some attributes
    mDataDemoReturn = TTObject("Data", "return");
    
    // Setup the callback mechanism to get the value back
    args = TTValue(TTPtr(this), mDataDemoReturn);
    mDataDemoReturn.set("baton", args);
    mDataDemoReturn.set("function", TTPtr(&DemoAppDataReturnValueCallback));
    
    // Setup the data attributes depending of its use inside the application
    mDataDemoReturn.set("type", "integer");
    mDataDemoReturn.set("description", "this return is useful for demo purpose");
    mDataDemoReturn.set("valueDefault", 0);
    mDataDemoReturn.set("value", 0);
    
    // Register the return data into myDemoApp at an address
    args = TTValue("/myReturn", mDataDemoReturn);
    err = mApplicationDemo.send("ObjectRegister", args, out);
    
    if (err)
        TTLogError("Error : can't register data at /myReturn address \n");
    
    else {
        address = out[0];
        TTLogMessage("\n /myReturn : effective registration address is %s \n", address.c_str());
    }
    
    TTLogMessage("\n*** Exploration of myRemoteApp ***\n");
    /////////////////////////////////////////////////////////

    // Explore the namespace of the myRemoteApp application (myRemoteApp have to be opened and configured with a Minuit "myDemoApp" device)
//    mApplicationRemote.send("DirectoryBuild");
    
    
    TTLogMessage("\n*** Control of myRemoteApp ***\n");
    /////////////////////////////////////////////////////////
    
//    v = TTValue("/Main:externalTick", 1);
//    mApplicationRemote.send("ObjectSend", v, out);
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
    //// parse the command : address value
    //TTValue out, v = TTString(command);
    //v.fromString();
    //
    //// Send the command to the object at the given address
    //mApplicationDemo.send("ObjectSend", v, out);
}

void
DemoApp::Quit()
{
    TTValue out;
    
    TTLogMessage("\n*** Release myDemoApp datas ***\n");
    /////////////////////////////////////////////////////
    
    // Unregister the parameter
    if ( mApplicationDemo.send("ObjectUnregister", "/myParameterDecimal", out))
        TTLogError("Error : can't unregister data at /myParameterDecimal address \n");
    
    // Unregister the parameter
    if ( mApplicationDemo.send("ObjectUnregister", "/myParameterString", out))
        TTLogError("Error : can't unregister data at /myParameterString address \n");
    
    // Unregister the parameter
    if ( mApplicationDemo.send("ObjectUnregister", "/myParameterBool", out))
        TTLogError("Error : can't unregister data at /myParameterBool address \n");
    
    // Unregister the message
    if (mApplicationDemo.send("ObjectUnregister", "/myMessage", out))
        TTLogError("Error : can't unregister data at /myMessage address \n");
    
    // Unregister the return
    if (mApplicationDemo.send("ObjectUnregister", "/myReturn", out))
        TTLogError("Error : can't unregister data at /myReturn address \n");
    
    
    TTLogMessage("\n*** Release protocols ***\n");
    ///////////////////////////////////////////////
    
    mApplicationManager.send("ProtocolRelease", "Minuit", out);
    mApplicationManager.send("ProtocolRelease", "WebSocket", out);
    
    
    TTLogMessage("\n*** Release applications ***\n");
    //////////////////////////////////////////////////
    
    mApplicationManager.send("ApplicationRelease", "myRemoteApp", out);
    mApplicationManager.send("ApplicationRelease", "myDemoApp", out);
}

TTErr
DemoAppDataReturnValueCallback(const TTValue& baton, const TTValue& value)
{
    DemoApp*    demoApp = (DemoApp*)TTPtr(baton[0]);
    TTObject    anObject = baton[1];
    
	// Reteive which data has been updated
    if (anObject.instance() == demoApp->mDataDemoDecimalParameter.instance()) {
        
        // print the returned value
        TTLogMessage("/myParameterDecimal has been updated to %s \n", value.toString().data());
        return kTTErrNone;
    }
    
    if (anObject.instance() == demoApp->mDataDemoStringParameter.instance()) {
        
        // print the returned value
        TTLogMessage("/myParameterString has been updated to %s \n", value.toString().data());
        return kTTErrNone;
    }
    
    if (anObject.instance() == demoApp->mDataDemoBoolParameter.instance()) {
        
        // print the returned value
        TTLogMessage("/myParameterBool has been updated to %s \n", value.toString().data());
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