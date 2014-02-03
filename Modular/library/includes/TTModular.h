/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief the Modular Application Programming Interface
 *
 * @details The Modular API allows to use Modular inside any application @n@n
 *
 * @see TTModular
 *
 * @authors Théo de la Hogue
 *
 * @copyright Copyright © 2013, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_MODULAR_H__
#define __TT_MODULAR_H__

#include "TTModularIncludes.h"

// Use the standard library namespace
namespace std;

// Read Jamoma API for primitive data type : http://api.jamoma.org/chapter_datatypes.html

/*
     The Modular API allows to use Modular inside any application
*/
class TTMODULAR_EXPORT Modular {
    
private:
    
    TTObject    mApplications;                      ///< An application manager instance to handle its application and any distant applications
    
    TTHash      mSenders;                           ///< Store all senders by address < address, sender >
    
    TTHash      mReceivers;                         ///< Store all receivers by address < address, < receiver, addressValueCallback > >
    
    TTAddress   mReceivedAddress;                   ///< An internal address to know which value will be received

public:
    
#if 0
#pragma mark -
#pragma mark Contructor, Destructor
#endif
    
	/** Constructor 
        @param binaries                 path to the Jamoma libraries and extensions binaries folder to load them */
	Modular(const char* binaries = NULL);
    
    /** Destructor : release all local datas registered and all senders and receivers */
	~Modular(void);
    
#if 0
#pragma mark -
#pragma mark Applications management
#endif
    
    /** Declare its application as the Modular local application
     @param applicationName             the name used to declare its application
     @param applicationVersion          the version of its application
     @param applicationAuthor           the author name of its application
     @param applicationConfiguration    the path to the xml configuration file 
     @return kTTErrGeneric if the application cannot be created */
    TTErr   ApplicationCreateLocal(const string applicationName,
                                   const string applicationVersion,
                                   const string applicationAuthor,
                                   const string applicationConfiguration = "");
    
    /** Declare another application as a Modular distant application
     @param applicationName             the name used to declare the application
     @return kTTErrGeneric if the application cannot be created */
    TTErr   ApplicationCreateDistant(const string applicationName);
    
    /** Write an application namespace in console 
     @param applicationName             any application name 
     @return kTTErrGeneric if the application namespace cannot be dumpr */
    TTErr   ApplicationDump(const string applicationName);
    
    /** Save the namespace in a xml file. This function doesn't write senders and receivers configuration.
     @param filepath             the path where to save the namespace
     @return kTTErrInvalidFilepath if the file cannot be written at the given path, kTTErrGeneric for any other reason */
	TTErr   ApplicationWriteAsXml(const string filepath);
    
	/** Load and build a namespace tree by parsing a xml file. This function doesn't read senders and receivers configuration.
     @param filepath             the path to the file from where to load the namespace
     @return kTTErrInvalidFilepath if the file cannot be read at the given path, kTTErrGeneric for any other reasons */
	TTErr   ApplicationReadFromXml(const string filepath);
    
    /** Set the value of an application
     @param applicationName             any application name 
     @param attribute                   the attribute name to set :
                                            - "version" : a string value to change the version
                                            - "author"  : a string value to change the author
                                            - "activity": a boolean value to enable the activity mechanism before to observe "/:activity/in" or "/:actvity/out" with a receiver
     @return kTTErrInvalidAttribute if the attribute doesn't exist, kTTErrGneric for any other reasons */
    TTErr   ApplicationAttributeSet(const string applicationName,
                                    const string attribute,
                                    const TTValue& value);
    
	/** Get the value of an application
     @param applicationName             any application name
     @param attribute                   the attribute name to get :
                                            - "version" : a string value to change the version
                                            - "author"  : a string value to change the author
                                            - "activity": a boolean value to enable the activity mechanism before to observe "/:activity/in" or "/:actvity/out" with a receiver 
     @return kTTErrInvalidAttribute if the attribute doesn't exist, kTTErrGneric for any other reasons */
	TTErr   ApplicationAttributeGet(const string applicationName,
                                    const string attribute,
                                    TTValue& value);
    
#if 0
#pragma mark -
#pragma mark Protocols management
#endif
    
    /** Get all loaded protocol names 
     @param names                       the returned protocol names
     @return kTTErrGeneric if no protocol have been loaded */
    TTErr   ProtocolGetNames(TTValue& names);
    
    /** Register an application to a protocol 
     @param protocolName                the protocol to use 
     @param applicationName             the application to register 
     @return kTTErrGeneric if the application cannot be registered */
    TTErr   ProtocolRegisterApplication(string protocolName, string applicationName);
    
    /** Unregister an application to a protocol
     @param protocolName                the protocol to not use anymore
     @param applicationName             the application to unregister 
     @return kTTErrGeneric if the application cannot be unregistered */
    TTErr   ProtocolUnregisterApplication(string protocolName, string applicationName);
    
    /** Get all attributes of a protocol
     @param names                       the returned attribute names
     @return kTTErrGeneric if the protocol have no attribute */
    TTErr   ProtocolGetAttributeNames(TTValue& names);
    
    /** Ask if a protocol attribute is an integer
     @param attribute                   an attribute name
     @return true if the attribute is an integer */
    bool    ProtocolIsAttributeInteger(string attribute);
    
    /** Ask if a protocol attribute is a string
     @param attribute                   an attribute name
     @return true if the attribute is a string */
    bool    ProtocolIsAttributeString(string attribute);

    /** Set a protocol integer attribute
     @param attribute                   an attribute name
     @param value                       an integer value
     @return kTTErrInvalidAttribute if the attribute doesn't exist, kTTErrGeneric for any other reasons */
    TTErr   ProtocolSetIntegerAttribute(string applicationName, string attribute, int value);
    
    /** Set a protocol string attribute
     @param attribute                   an attribute name
     @param value                       an string value
     @return kTTErrInvalidAttribute if the attribute doesn't exist, kTTErrGeneric for any other reasons */
    TTErr   ProtocolSetStringAttribute(string applicationName, string attribute, string value);

#if 0
#pragma mark -
#pragma mark Datas management
#endif
    
    /** Create a data object and register it under an address into the local or a distant application
     @param address                     address of the data into an application directory :
                                            - /any/level/name.instance to create data into the local application
                                            - /any/level/name.[N] to create N instances of this data under N different addresses /any/level/name.1, /any/level/name.2, ..., /any/level/name.N
                                            - distantApp:/any/level/name.instance to create a data into the distantApp application
     @param returnedValueCallback		callback method to process the data value
     @param owner                       pointer to the owner the data
     @param service                     a data can be "parameter", "message" or a "return" :
                                            - "parameter" handles the state of the application (e.g. a position or a gain).
                                            - "message" handles a command of the application (e.g. a play, a stop).
                                            - "return" handles a notification of the application (e.g. a fps, the end of a loop). 
     @return kTTErrGeneric if the data cannot be created */
	TTErr   DataCreate(string address,
                       void (*returnValueCallback) (void*, const TTValue&) = NULL,
                       void* owner = NULL,
                       string service = "parameter");
    
    /** Delete a data object registered under an address into the local or a distant application
     @param address                     address of the data into an application directory :
                                            - /any/level/name.instance to create data into the local application
                                            - /any/level/name.[N] to create N instances of this data under N different addresses /any/level/name.1, /any/level/name.2, ..., /any/level/name.N
                                            - distantApp:/any/level/name.instance to create a data into the distantApp application 
     @return kTTErrGeneric if the data cannot be deleted */
    TTErr   DataDelete(string address);
    
    /** Set the value of a data attribute
     @param address                     address of the data into an application directory :
                                            - /any/level/name.instance to acces to a data into the local application
                                            - /any/level/name.[N] to acces to N data instances registered under N different addresses /any/level/name.1, /any/level/name.2, ..., /any/level/name.N
                                            - distantApp:/any/level/name.instance to access to a data into the distantApp application
     @param attribute                   the attribute name to set :
                                            - "value"                   :   set the data value
                                            - "valueDefault"            :   set the default value recalled on "Init" method
                                            - "valueStepsize"           :   amount to increment or decrement by
     
                                            - "type"                    :   type of this data's value ("none", "generic" (default), "integer", "decimal", "string", "array")
                                            - "tag"                     :   tag list for this data
                                            - "priority"                :   does this data have a priority over other datas ? (0 means no priority then 1 is the highest priority)
                                            - "description"             :   text to describe the role of this data
                                            - "repetitionsFilter"       :   is repetitions are filtered out ?
                                            - "active"                  :   to stop notifying any value changes
                                            - "initialized"             :   is the value attribute has been initialized ?
     
                                            - "rangeBounds"             :   low and a high bounds values
                                            - "rangeClipmode"           :   behavior at the bounds ("low", "high", "wrap", "fold")
     
                                            - "rampDrive"               :   the scheduler unit to use for the ramp ("none or "System")
                                            - "rampFunction"            :   the function used by the ramping
                                            - "rampFunctionParameters"  :   names of parameter's function
                                            - "rampStatus"              :   is the ramp running ?
     
                                            - "dynamicInstances"        :   is the data can be dynamically instanciated ?
                                            - "instanceBounds"          :   low and a high bounds values to range dynamic instances (-1 means no bounds)
     
     @param value                       the value to set 
     @return kTTErrInvalidAttribute if the attribute doesn't exist, kTTErrGeneric for any other reasons */
	TTErr   DataAttributeSet(const string address,
                             const string attribute,
                             const TTValue& value);
    
	/** Get the value of a data attribute
     @param address                     address of the data into an application directory :
                                            - /any/level/name.instance to acces to a data into the local application
                                            - /any/level/name.[N] to acces to N data instances registered under N different addresses /any/level/name.1, /any/level/name.2, ..., /any/level/name.N
                                            - distantApp:/any/level/name.instance to access to a data into the distantApp application
     @param attribute                   the attribute name to get :
                                            - "value"                   :   set the data value
                                            - "valueDefault"            :   set the default value recalled on "Init" method
                                            - "valueStepsize"           :   amount to increment or decrement by
     
                                            - "type"                    :   type of this data's value ("none", "generic" (default), "integer", "decimal", "string", "array")
                                            - "tag"                     :   tag list for this data
                                            - "priority"                :   does this data have a priority over other datas ? (0 means no priority then 1 is the highest priority)
                                            - "description"             :   text to describe the role of this data
                                            - "repetitionsFilter"       :   is repetitions are filtered out ?
                                            - "active"                  :   to stop notifying any value changes
                                            - "initialized"             :   is the value attribute has been initialized ?
     
                                            - "rangeBounds"             :   low and a high bounds values
                                            - "rangeClipmode"           :   behavior at the bounds ("low", "high", "wrap", "fold")
     
                                            - "rampDrive"               :   the scheduler unit to use for the ramp ("none or "System")
                                            - "rampFunction"            :   the function used by the ramping
                                            - "rampFunctionParameters"  :   names of parameter's function
                                            - "rampStatus"              :   is the ramp running ?
     
                                            - "dynamicInstances"        :   is the data can be dynamically instanciated ?
                                            - "instanceBounds"          :   low and a high bounds values to range dynamic instances (-1 means no bounds)
     
     @param value                       the returned attribute value
     @return kTTErrInvalidAttribute if the attribute doesn't exist, kTTErrGeneric for any other reasons */
	TTErr   DataAttributeGet(const string address,
                             const string attribute,
                             TTValue& value);
    
#if 0
#pragma mark -
#pragma mark Senders management
#endif
    
	/**  */
	TTErr   SenderCreate(string address,
                         string attribute);
    
    /**  */
    TTErr   SenderDelete(string address,
                         string attribute);
    
    /**  */
    TTErr   SenderUse(string address,
                      string attribute,
                      const TTValue& value);

#if 0
#pragma mark -
#pragma mark Receivers management
#endif
    
	/** Create an observer object on a parameter attribute which could execute callback methods when attribute value is updated
     address			:	osc like address of the parameter data in the namespace directory
     application name is automatically added at the beginning of the address : /"appName"
     attribute		:	symbol representing the attribute name to set (attribute symbols are defined on top)
     instance		:	number of the instance you want to observe the attribute value
     object			:	pointer to an object that will process the parameter attribute value
     callbacks		:	callback methods that will process the value and/or address of the
     parameter attribute value when change */
	TTErr   ReceiverCreate(string address,
                           string attribute,
                           void (*returnAddressAttributeAndValueCallback) (void*, string address, string attribute, const TTValue&),
                           void* owner = NULL);
    
    TTErr   ReceiverDelete(string address,
                           string attribute);

#if 0
#pragma mark -
#pragma mark State management
#endif
    
    /** Load and build preset manager on namespace tree parameters by parsing a xml file */
	TTErr   StateManagerReadFromXml(string filepath);
    
    /** Load and build preset manager on namespace tree parameters by parsing a xml file */
	TTErr   StateManagerWriteAsXml(string filepath);
	
	/** Call a specific preset listed by the preset manager using it name */
	TTErr   StateManagerRecall(string name);
    
	/** Call a specific preset listed by the preset manager using it number */
	TTErr   StateManagerRecall(int number);
    
#if 0
#pragma mark -
#pragma mark Addresses edition
#endif
    
    string  AddressEditNumericInstance(string integerFormatString, int instanceNumber);
    
    string  AddressEditStringInstance(string stringFormatString, int instanceString);
    
    /** Get all intances at an address */
	TTErr   AddressGetInstances(string address, TTValue& instances);
}

#endif  // __TT_MODULAR_H__
