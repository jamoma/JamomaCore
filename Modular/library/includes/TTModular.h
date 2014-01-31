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
    
    /** Destructor : release all local datas registered and all receivers */
	~Modular(void);
    
#if 0
#pragma mark -
#pragma mark Applications management
#endif
    
    /** Declare its application as the Modular local application
     @param applicationName             the name used to declare its application
     @param applicationVersion          the version of its application
     @param applicationCreator          the creator name of its application
     @param applicationConfiguration    the path to the xml configuration file
     */
    TTErr   ApplicationCreateLocal(const string applicationName,
                                   const string applicationVersion,
                                   const string applicationCreator,
                                   const string applicationConfiguration = "");
    
    /** */
    TTErr   ApplicationCreateDistant(const string applicationName);
    
    /** Write an application namespace in console */
    TTErr   ApplicationDumpDirectory(const string applicationName);
    
    /** Save the namespace in a xml file */
	TTErr   ApplicationWriteAsXml(const string filepath);
    
	/** Load and build a namespace tree by parsing a xml file
     Note that namespace observers are not created */
	TTErr   ApplicationReadFromXml(const string filepath);
    
    /** */
    TTErr   ApplicationAttributeSet(const string applicationName,
                                    const string attribute,
                                    const TTValue& value);
    
	/** */
	TTErr   ApplicationAttributeGet(const string applicationName,
                                    const string attribute,
                                    TTValue& value);
    
#if 0
#pragma mark -
#pragma mark Protocols management
#endif
    
    /** */
    TTErr   ProtocolGetNames(TTValue& names);
    
    /** */
    TTErr   ProtocolRegisterApplication(string protocolName, string applicationName);
    
    /** */
    TTErr   ProtocolUnregisterApplication(string protocolName, string applicationName);
    
    /** */
    TTErr   ProtocolGetAttributeNames(TTValue& names);
    
    /** */
    bool    ProtocolIsAttributeNumeric(string attribute);
    
    /** */
    bool    ProtocolIsAttributeString(string attribute);

    /** */
    TTErr   ProtocolSetNumericAttribute(string applicationName, string attribute, int value);
    
    /** */
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
                                            - "return" handles a notification of the application (e.g. a fps, the end of a loop). */
	TTErr   DataCreate(string address,
                       void (*returnValueCallback) (void*, const TTValue&) = NULL,
                       void* owner = NULL,
                       string service = "parameter");
    
    TTErr   DataDelete(string address);
    
    /** Set the value of a data attribute (usefull to init it)
     @param address                     address of the data into an application directory :
                                            - /any/level/name.instance to acces to a data into the local application
                                            - /any/level/name.[N] to acces to N data instances registered under N different addresses /any/level/name.1, /any/level/name.2, ..., /any/level/name.N
                                            - distantApp:/any/level/name.instance to access to a data into the distantApp application
     @param attribute		:           the attribute name to set :
     
                                            "value"         :   set the data value
                                            "valueDefault"  :   set the default value recalled on "Init" method
                                            "valueStepsize" :   amount to increment or decrement by
     
                                            "type";						///< ATTRIBUTE: type of this data's value
     TTValue			mTag;						///< ATTRIBUTE: tag list for this data
     TTInt32			mPriority;					///< ATTRIBUTE: does this data have a priority over other datas ?
     TTSymbol		mDescription;				///< ATTRIBUTE: text to describe the role of this data
     TTBoolean		mRepetitionsFilter;			///< ATTRIBUTE: is repetitions are filtered out ?
     TTBoolean		mActive;					///< ATTRIBUTE: this used by return only to stop sending values
     TTBoolean		mInitialized;				///< ATTRIBUTE: is the Value attribute has been initialized ?
     
     TTValue			mRangeBounds;				///< ATTRIBUTE:
     TTSymbol		mRangeClipmode;				///< ATTRIBUTE:
     
     TTBoolean		mDynamicInstances;			///< ATTRIBUTE: is the data can be dynamically instanciated
     TTValue			mInstanceBounds;			///< ATTRIBUTE: two TTValues for a range of dynamic instances (-1 = infini)
     
     TTSymbol		mRampDrive;					///< ATTRIBUTE: ramp mode
     #ifndef TT_NO_DSP
     TTSymbol		mRampFunction;				///< ATTRIBUTE: for setting the function used by the ramping
     #endif
     TTValue			mRampFunctionParameters;	///< ATTRIBUTE: names of parameter's function
     TTBoolean		mRampStatus;				///< ATTRIBUTE: is the ramp running ?

                                            
     @param value			:	the value to set */
	TTErr   DataAttributeSet(const string address,
                             const string attribute,
                             const TTValue& value);
    
	/** Get the value of a parameter attribute
     address			:	osc like address of the parameter data in the namespace directory
     application name is automatically added at the beginning of the address : /"appName"
     instance		:	number of the instance you want to get the value
     attribute		:	symbol representing the attribute name to set (attribute symbols are defined on top)
     value			:	the value that will be got */
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
