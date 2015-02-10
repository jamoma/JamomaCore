#include "TTModular.h"
#include "TTScore.h"

#include <iostream>
#include <string>

// A class for our application
class DemoApp
{

public:
    
    DemoApp(){};
    ~DemoApp(){};
    
    // This application is divided into four main functions
    void SetupModular();
    void SetupScore();
    void SetMessage(std::string s);
    void Quit();
    
private:
    
    // Declare the application manager and our application
    TTObject mApplicationManager;
    TTObject mApplicationDemo;
    
    // Declare callbacks used to observe scenario execution
    TTObject mEventStatusChangedCallback;
    
    // Declare a thread used to poll information about scenario execution at another rate
    TTThread* mPollingThread;
    
public:
    
    // Declare publicly all datas of our application to retreive them from the callback function
    TTObject mDataDemoParameter;     // a parameter is relative to the state of our application
    TTObject mDataDemoMessage;       // a message is a kind of command to send to our application
    TTObject mDataDemoReturn;        // a return is a kind of notification sent by our application
    
    // Declare publicly the scenario to retreive it from the callback function
    TTObject mScenario;
    
    // Be friend with each callback or function
    friend TTErr DemoAppDataReturnValueCallback(const TTValue& baton, const TTValue& value);
    friend TTErr DemoAppEventStatusChangedCallback(const TTValue& baton, const TTValue& value);
    friend void DemoAppScenarioPollingThread(DemoApp* demoApp);
};

// Callback function to get data's value back
TTErr DemoAppDataReturnValueCallback(const TTValue& baton, const TTValue& value);

// Callback function to be notified when an event status is changing
TTErr DemoAppEventStatusChangedCallback(const TTValue& baton, const TTValue& value);

// Function to poll information about scenario execution at another rate
void DemoAppScenarioPollingThread(DemoApp* demoApp);

int
main(int argc, char **argv) 
{
    DemoApp app;

    TTLogMessage("\n*** Start of Jamoma Modular and Score demonstration ***\n");
    
    app.SetupModular();
    app.SetupScore();
    
    // read command from console
    do {
        TTLogMessage("\nType a command : \n");
        
        std::string s;
        std::getline(std::cin, s);
        
        // quit the application
        if (!s.compare("quit")) {
            
            app.Quit();
            
            TTLogMessage("\n*** End of Jamoma Modular and Score demonstration ***\n");
            return EXIT_SUCCESS;
        }
        // update mDataDemoMessage data with the command
        else {
            
            app.SetMessage(s);
        }
    }
    while (YES);
}

void
DemoApp::SetupModular()
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
    
    
    TTLogMessage("\n*** Creation of mApplicationDemo application ***\n");
    /////////////////////////////////////////////////////////////////////
    
    // Create a local application called "demo" and get it back
    err = mApplicationManager.send("ApplicationInstantiateLocal", "demo", out);
    
    if (err) {
        TTLogError("Error : can't create demo application \n");
        return;
    }
    else
        mApplicationDemo = out[0];
    
    
	TTLogMessage("\n*** Creation of mApplicationDemo datas ***\n");
    /////////////////////////////////////////////////////////////////////
    
    // Create a parameter data and set its callback function and baton and some attributes
    mDataDemoParameter = TTObject("Data", "parameter");
    
    // Setup the callback mechanism to get the value back
    args = TTValue(TTPtr(this), mDataDemoParameter);
    mDataDemoParameter.set("baton", args);
    mDataDemoParameter.set("function", TTPtr(&DemoAppDataReturnValueCallback));

    // Setup the data attributes depending of its use inside the application
    mDataDemoParameter.set("type", "decimal");
    mDataDemoParameter.set("rangeBounds", TTValue(0., 1.));
    mDataDemoParameter.set("rangeClipmode", "low");
    mDataDemoParameter.set("description", "any information relative to the state of the application");
    
    // Register the parameter data into mApplicationDemo at an address
    args = TTValue("/myParameter", mDataDemoParameter);
    mApplicationDemo.send("ObjectRegister", args, out);
    
    
    // Create a message data and set its callback function and baton and some attributes
    mDataDemoMessage = TTObject("Data", "message");
    
    // Setup the callback mechanism to get the value back
    args = TTValue(TTPtr(this), mDataDemoMessage);
    mDataDemoMessage.set("baton", args);
    mDataDemoMessage.set("function", TTPtr(&DemoAppDataReturnValueCallback));
    
    // Setup the data attributes depending of its use inside the application
    mDataDemoMessage.set("type", "string");
    mDataDemoMessage.set("description", "any information to provide to the application");
    
    // Register the message data into mApplicationDemo at an address
    args = TTValue("/myMessage", mDataDemoMessage);
    mApplicationDemo.send("ObjectRegister", args, out);
    
    
    // Create a return data and set its callback function and baton and some attributes
    mDataDemoReturn = TTObject("Data", "return");
    
    // Setup the callback mechanism to get the value back
    args = TTValue(TTPtr(this), mDataDemoReturn);
    mDataDemoReturn.set("baton", args);
    mDataDemoReturn.set("function", TTPtr(&DemoAppDataReturnValueCallback));

    // Setup the data attributes depending of its use inside the application
    mDataDemoReturn.set("type", "integer");
    mDataDemoReturn.set("defaultValue", 0);
    mDataDemoReturn.set("description", "any information the application returns back");
    
    // Register the return data into mApplicationDemo at an address
    args = TTValue("/myReturn", mDataDemoReturn);
    mApplicationDemo.send("ObjectRegister", args, out);
    
    // Initialise the application and all datas inside (using defaultValue attribute)
    mApplicationDemo.send("Init");
}

void
DemoApp::SetupScore()
{
    TTValue     args, out;
    TTObject    xmlHandler("XmlHandler");
    
    TTLogMessage("\n*** Initialisation of Score environnement ***\n");
    /////////////////////////////////////////////////////////////////////
    
    // Init the Score library (passing the folder path where all the dylibs are)
    TTScoreInit("/usr/local/jamoma");
    
    
    TTLogMessage("\n*** Reading of an interactive scenario file ***\n");
    /////////////////////////////////////////////////////////////////////
    
    // Create an empty Scenario
    mScenario = TTObject("Scenario");
    
    // Read DemoScenario1.score file to fill mScenario
    xmlHandler.set("object", mScenario);
    xmlHandler.send("Read", "../DemoScenario.score", out);
    
    
    TTLogMessage("\n*** Prepare scenario observation ***\n");
    /////////////////////////////////////////////////////////////////////
    
    // Create a callback for the "EventStatusChanged" notification sent by each event
    mEventStatusChangedCallback = TTObject("callback");
    mEventStatusChangedCallback.set("baton", TTPtr(this));
    mEventStatusChangedCallback.set("function", TTPtr(&DemoAppEventStatusChangedCallback));
    mEventStatusChangedCallback.set("notification", TTSymbol("EventStatusChanged"));
    
    // Get all events of the scenario and attach a callback to them
    TTValue timeEvents;
    mScenario.get("timeEvents", timeEvents);
    
    for (TTElementIter it = timeEvents.begin() ; it != timeEvents.end() ; it++) {
        TTObject event = TTElement(*it);
        event.registerObserverForNotifications(mEventStatusChangedCallback);
    }
    
    
    TTLogMessage("\n*** Start scenario execution ***\n");
    /////////////////////////////////////////////////////////////////////
    
    // Set the execution speed of the scenario
    mScenario.set("speed", 2.);
    
    // Start the scenario
    mScenario.send("Start");
    
    // Poll Scenario information
    mPollingThread = new TTThread(TTThreadCallbackType(DemoAppScenarioPollingThread), this);
}

void
DemoApp::SetMessage(std::string s)
{
    TTSymbol message(s);
    TTValue out;
    
    mDataDemoMessage.send("Command", message, out);
}

void
DemoApp::Quit()
{
    TTValue out;

    TTLogMessage("\n*** Release mApplicationDemo datas ***\n");
    /////////////////////////////////////////////////////////////////////
    
    // Unregister the parameter
    if ( mApplicationDemo.send("ObjectUnregister", "/myParameter", out))
        TTLogError("Error : can't unregister data at /myParameter address \n");
    
    // Unregister the message
    if (mApplicationDemo.send("ObjectUnregister", "/myMessage", out))
        TTLogError("Error : can't unregister data at /myMessage address \n");
    
    // Unregister the return
    if (mApplicationDemo.send("ObjectUnregister", "/myReturn", out))
        TTLogError("Error : can't unregister data at /myReturn address \n");
    
    
    TTLogMessage("\n*** Release application ***\n");
    /////////////////////////////////////////////////////////////////////
    
    mApplicationManager.send("ApplicationRelease", "demo", out);
    
    // delete the polling thread
    if (mPollingThread)
        mPollingThread->wait();
    
    delete mPollingThread;
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

TTErr
DemoAppEventStatusChangedCallback(const TTValue& baton, const TTValue& value)
{
    DemoApp*    demoApp = (DemoApp*)TTPtr(baton[0]);
    
    TTObject    event = value[0];
    TTSymbol    newStatus = value[1];
    TTSymbol    oldStatus = value[2];
    
    // get the name of the event
    TTSymbol    name;
    event.get("name", name);
    
    // print the event status
    TTLogMessage("%s status : %s \n", name.c_str(), newStatus.c_str());
    
    return kTTErrNone;
}

void DemoAppScenarioPollingThread(DemoApp* demoApp)
{
    TTBoolean isRunning;
    
    do {
        // wait
        demoApp->mPollingThread->sleep(1);
        
        // look at the running state of the scnario
        demoApp->mScenario.get("running", isRunning);
    }
    while (isRunning);
        
    // quit DemoApp
    demoApp->Quit();
}