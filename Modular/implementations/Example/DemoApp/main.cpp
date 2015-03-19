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
    TTModularInit("/usr/local/jamoma/extensions");
    
    // Create an application manager
    mApplicationManager = TTObject("ApplicationManager");
    
    
    TTLogMessage("\n*** Creation of myDemoApp and myRemoteApp applications ***\n");
    ////////////////////////////////////////////////////////////////////////////////
    
    // Create a local application called "myDemoApp" and get it back
    mApplicationDemo = mApplicationManager.send("ApplicationInstantiateLocal", "myDemoApp");
    
    // Create a remote application called "myRemoteApp" and get it back
    mApplicationRemote = mApplicationManager.send("ApplicationInstantiateDistant", "myRemoteApp");
    
    
    // Get registered application names
    mApplicationManager.get("applicationNames", out);
    for (TTElementIter it = out.begin() ; it != out.end() ; it++) {
        TTSymbol name = TTElement(*it);
        TTLogMessage("%s application is well registered into the application manager \n", name.c_str());
    }
    
    TTLogMessage("\n*** Enable WebSocket communication ***\n");
    ////////////////////////////////////////////////////////////////////////
    
    // Create a WebSocket protocol unit
    mProtocolWebSocket = mApplicationManager.send("ProtocolInstantiate", "WebSocket");
    
    // Get WebSocket Protocol attribute names and types
    mProtocolWebSocket.get("parameterNames", out);
    for (TTElementIter it = out.begin() ; it != out.end() ; it++) {
        TTSymbol name = TTElement(*it);
        TTLogMessage("WebSocket %s parameter is a %s \n", name.c_str(), mProtocolWebSocket.attributeType(name).c_str());
    }
    
    // Register myDemoApp and myRemoteApp to the WebSocket protocol
    mProtocolWebSocket.send("ApplicationRegister", "myDemoApp");
    mProtocolWebSocket.send("ApplicationRegister", "myRemoteApp");
    
    // Select myDemoApp to set its protocol parameters
    mProtocolWebSocket.send("ApplicationSelect", "myDemoApp");
    mProtocolWebSocket.set("htmlPath", "/Users/ProLauGre/Travail/09-ossia/Jamoma/Core/Modular/implementations/Example/DemoApp/to_test_websocket/jamomarmot");
//	mProtocolWebSocket.set("htmlPath", "C:/Users/Laugre/Travail/09-ossia/Core/Modular/implementations/Example/DemoApp/to_test_websocket/jamomarmot");
    mProtocolWebSocket.set("port", 9001);
    
    // Get WebSocket parameters for each registered application
    mProtocolWebSocket.get("applicationNames", out);
    for (TTElementIter it = out.begin() ; it != out.end() ; it++) {
        TTSymbol name = TTElement(*it);
        
        mProtocolWebSocket.send("ApplicationSelect", name);
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
    
    TTLogMessage("\n*** Exploration of myRemoteApp ***\n");
    /////////////////////////////////////////////////////////

    // Explore the namespace of the myRemoteApp application (myRemoteApp have to be opened and configured with a Minuit "myDemoApp" device)
    mApplicationRemote.send("DirectoryBuild");
    
    
    TTLogMessage("\n*** Control of myRemoteApp ***\n");
    /////////////////////////////////////////////////////////
    
//    v = TTValue("/test", 1);
//    mApplicationRemote.send("ObjectSend", v);
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
    
    // Send the command to the object at the given address
    mApplicationRemote.send("ObjectSend", v);
}

void
DemoApp::Quit()
{
    TTValue out;
    
    TTLogMessage("\n*** Release myDemoApp datas ***\n");
    /////////////////////////////////////////////////////
    
    TTLogMessage("\n*** Release protocols ***\n");
    ///////////////////////////////////////////////
    
    mApplicationManager.send("ProtocolRelease", "Minuit");
    mApplicationManager.send("ProtocolRelease", "WebSocket");
    
    
    TTLogMessage("\n*** Release applications ***\n");
    //////////////////////////////////////////////////
    
    mApplicationManager.send("ApplicationRelease", "myRemoteApp");
    mApplicationManager.send("ApplicationRelease", "myDemoApp");
}