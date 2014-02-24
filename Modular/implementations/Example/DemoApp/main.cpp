#include "TTModular.h"

// A class for our application
class DemoApp {
    
public:
    
    DemoApp(){};
    ~DemoApp(){};
    
    // This application is divided into tree main functions
    void Setup();
    void Use();
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
    
    app.Setup();
    
    app.Use();
    
    app.Quit();
    
    return 0;
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
    err = mApplicationManager.send("ApplicationInstantiateLocal", TTSymbol("myDemoApp"), out);
    
    if (err) {
        TTLogError("Error : can't create myDemoApp application \n");
        return;
    }
    else
        mApplicationDemo = out[0];
    
    
    // Create a distant application called "myRemoteApp" and get it back
    err = mApplicationManager.send("ApplicationInstantiateDistant", TTSymbol("myRemoteApp"), out);
    
    if (err) {
        TTLogError("Error : can't create myRemoteApp application \n");
        return;
    }
    else
        mApplicationRemote = out[0];
    
    // Get application names
    mApplicationManager.get("applicationNames", out);
    for (TTElementIter it = out.begin() ; it != out.end() ; it++)
        TTLogMessage("%s application is well registered into the application manager \n", TTSymbol(&it).c_str());
    
    
    TTLogMessage("\n*** Creation of Minuit and WebSocket protocols ***\n");
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
    mProtocolMinuit.attributes(out);
    for (TTElementIter it = out.begin() ; it != out.end() ; it++)
        TTLogMessage("Minuit::%s is a %s \n", TTSymbol(&it).c_str(), mProtocolMinuit.attributeType(TTSymbol(&it)).c_str());
    
    // Register myDemoApp and myRemoteApp to the Minuit protocol
    mProtocolMinuit.send("RegisterApplication", TTSymbol("myDemoApp"), out);
    mProtocolMinuit.send("RegisterApplication", TTSymbol("myRemoteApp"), out);
    
    // Select myDemoApp to set its protocol parameters
    mProtocolMinuit.send("SelectApplication", TTSymbol("myDemoApp"), out);
    mProtocolMinuit.set("port", 8002);
    mProtocolMinuit.set("ip", TTSymbol("127.0.0.1"));
    
    // Select myRemoteApp to set its protocol parameters
    mProtocolMinuit.send("SelectApplication", TTSymbol("myRemoteApp"), out);
    mProtocolMinuit.set("port", 9998);
    mProtocolMinuit.set("ip", TTSymbol("127.0.0.1"));
    
    // Enable Minuit communication
    mProtocolMinuit.send("Run");
    
    // Create a WebSocket protocol unit
    err = mApplicationManager.send("ProtocolInstantiate", TTSymbol("WebSocket"), out);
    
    if (err) {
        TTLogError("Error : can't create WebSocket protocol unit \n");
        return;
    }
    else
        mProtocolWebSocket = out[0];
    
    // Get WebSocket Protocol attribute names and types
    mProtocolWebSocket.attributes(out);
    for (TTElementIter it = out.begin() ; it != out.end() ; it++)
        TTLogMessage("WebSocket::%s is a %s \n", TTSymbol(&it).c_str(), mProtocolWebSocket.attributeType(TTSymbol(&it)).c_str());
    
    // Register myDemoApp and myRemoteApp to the WebSocket protocol
    mProtocolWebSocket.send("RegisterApplication", TTSymbol("myDemoApp"), out);
    mProtocolWebSocket.send("RegisterApplication", TTSymbol("myRemoteApp"), out);
    
    // Select myDemoApp to set its protocol parameters
    mProtocolWebSocket.send("SelectApplication", TTSymbol("myDemoApp"), out);
    mProtocolWebSocket.set("???", none);
    
    // Select myRemoteApp to set its protocol parameters
    mProtocolWebSocket.send("SelectApplication", TTSymbol("myRemoteApp"), out);
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
    mDataDemoParameter = TTObject("Data", TTSymbol("parameter"));
    mDataDemoParameter.set("function", TTPtr(&DemoAppDataReturnValueCallback));
    mDataDemoParameter.set("baton", mDataDemoParameter);
    mDataDemoParameter.set("type", TTSymbol("decimal"));
    mDataDemoParameter.set("rangeBounds", TTValue(-1., 1.));
    mDataDemoParameter.set("description", TTSymbol("this parameter is useful for demo purpose"));
    
    // Register the parameter data into myDemoApp at an address
    args = TTValue(TTAddress("/myParameter"), mDataDemoParameter);
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
    mDataDemoMessage.set("baton", mDataDemoMessage);
    mDataDemoMessage.set("type", TTSymbol("none"));
    mDataDemoMessage.set("description", TTSymbol("this message is useful for demo purpose"));
    
    // Register the message data into myDemoApp at an address
    args = TTValue(TTAddress("/myMessage"), mDataDemoMessage);
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
    mDataDemoReturn.set("baton", mDataDemoReturn);
    mDataDemoReturn.set("type", TTSymbol("integer"));
    mDataDemoReturn.set("description", TTSymbol("this return is useful for demo purpose"));
    
    // Register the return data into myDemoApp at an address
    args = TTValue(TTAddress("/myReturn"), mDataDemoReturn);
    mApplicationDemo.send("RegisterObject", args, out);
    
    if (err)
        TTLogError("Error : can't register data at /myReturn address \n");
    
    else {
        address = out[0];
        TTLogMessage("\n /myReturn : effective registration address is %s \n", address.c_str());
    }
}

void
DemoApp::Use()
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
    
    mApplicationManager.send("ReleaseApplication", TTSymbol("myRemoteApp"), out);
    mApplicationManager.send("ReleaseApplication", TTSymbol("myDemoApp"), out);
}

TTErr
DemoAppDataReturnValueCallback(const TTValue& baton, const TTValue& value)
{
    DemoApp*    demoApp = (DemoApp*)TTPtr(baton[0]);
    TTObject    anObject = TTObject(baton[1]);
    
	// Reteive which data has been updated
    if (anObject == demoApp->mDataDemoParameter) {
        
        // print the returned value
        TTLogMessage("/myParameter has been updated to %s \n", value.toString().data());
        return kTTErrNone;
    }
    
    if (anObject == demoApp->mDataDemoMessage) {
        
        // print the returned value
        TTLogMessage("/myMessage has been updated to %s \n", value.toString().data());
        return kTTErrNone;
    }
    
    if (anObject == demoApp->mDataDemoReturn) {
        
        // print the returned value
        TTLogMessage("/myReturn has been updated to %s \n", value.toString().data());
        return kTTErrNone;
    }
    
    return kTTErrGeneric;
}