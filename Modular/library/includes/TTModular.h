/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief the Modular Application Programming Interface
 *
 * @details The Modular API allows to use Modular inside any application @n@n
 *
 * @see TTModularIncludes
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

#if 0
#pragma mark -
#pragma mark Initialisation
#endif

/** Initialize the Modular library 
 @param binaries                    path to the Jamoma libraries and extensions binaries folder to load them */
void TTMODULAR_EXPORT TTModularInit(const char* binaries = NULL);

/** The Modular object instanciated in TTModularInit */
extern TTMODULAR_EXPORT Modular* TTModular;

/*
     The Modular API allows to use Modular inside any application
*/
class TTMODULAR_EXPORT Modular {
    
private:

    TTObject    mApplications;                      ///< An application manager instance to handle its application and any distant applications
    
    TTHash      mSenders;                           ///< Store all senders by address < address, sender >
    
    TTHash      mReceivers;                         ///< Store all receivers by address < address, < receiver, addressValueCallback > >
    
    TTAddress   mReceivedAddress;                   ///< An internal address to know which value will be received
    
    TTObject    mStateManager;                      ///< A state manager instance to handle state storage or recall
    
    TTHash      mSelections;                        ///< Store all selections by name

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
     @return #kTTErrGeneric if the application cannot be created */
    TTErr   ApplicationCreateLocal(const TTSymbol applicationName,
                                   const TTSymbol applicationVersion,
                                   const TTSymbol applicationAuthor,
                                   const TTSymbol applicationConfiguration = kTTSymEmpty);
    
    /** Declare another application as a Modular distant application
     @param applicationName             the name used to declare the application
     @return #kTTErrGeneric if the application cannot be created */
    TTErr   ApplicationCreateDistant(const TTSymbol applicationName);
    
    /** Write an application namespace in console 
     @param applicationName             any application name 
     @return #kTTErrGeneric if the application namespace cannot be dumpr */
    TTErr   ApplicationDump(const TTSymbol applicationName);
    
    /** Save the namespace in a xml file. This function doesn't write senders and receivers configuration.
     @param filepath             the path where to save the namespace
     @return #kTTErrInvalidFilepath if the file cannot be written at the given path, #kTTErrGeneric for any other reason */
	TTErr   ApplicationWriteAsXml(const TTSymbol filepath);
    
	/** Load and build a namespace tree by parsing a xml file. This function doesn't read senders and receivers configuration.
     @param filepath             the path to the file from where to load the namespace
     @return #kTTErrInvalidFilepath if the file cannot be read at the given path, #kTTErrGeneric for any other reasons */
	TTErr   ApplicationReadFromXml(const TTSymbol filepath);
    
    /** Set the value of an application
     @param applicationName             any application name 
     @param attribute                   the attribute name to set :
                                            - "version" : a TTSymbol value to change the version
                                            - "author"  : a TTSymbol value to change the author
                                            - "activity": a boolean value to enable the activity mechanism before to observe "/:activity/in" or "/:actvity/out" with a receiver
     @return #kTTErrInvalidAttribute if the attribute doesn't exist, #kTTErrGneric for any other reasons */
    TTErr   ApplicationAttributeSet(const TTSymbol applicationName,
                                    const TTSymbol attribute,
                                    const TTValue& value);
    
	/** Get the value of an application
     @param applicationName             any application name
     @param attribute                   the attribute name to get :
                                            - "version" : a TTSymbol value to change the version
                                            - "author"  : a TTSymbol value to change the author
                                            - "activity": a boolean value to enable the activity mechanism before to observe "/:activity/in" or "/:actvity/out" with a receiver 
     @return #kTTErrInvalidAttribute if the attribute doesn't exist, #kTTErrGneric for any other reasons */
	TTErr   ApplicationAttributeGet(const TTSymbol applicationName,
                                    const TTSymbol attribute,
                                    TTValue& value);
    
#if 0
#pragma mark -
#pragma mark Protocols management
#endif
    
    /** Get all loaded protocol names 
     @param names                       the returned protocol names
     @return #kTTErrGeneric if no protocol have been loaded */
    TTErr   ProtocolGetNames(TTValue& names);
    
    /** Register an application to a protocol 
     @param protocolName                the protocol to use 
     @param applicationName             the application to register 
     @return #kTTErrGeneric if the application cannot be registered */
    TTErr   ProtocolRegisterApplication(const TTSymbol protocolName,
                                        const TTSymbol applicationName);
    
    /** Unregister an application to a protocol
     @param protocolName                the protocol to not use anymore
     @param applicationName             the application to unregister 
     @return #kTTErrGeneric if the application cannot be unregistered */
    TTErr   ProtocolUnregisterApplication(const TTSymbol protocolName,
                                          const TTSymbol applicationName);
    
    /** Get all attributes of a protocol
     @param names                       the returned attribute names
     @return #kTTErrGeneric if the protocol have no attribute */
    TTErr   ProtocolGetAttributeNames(TTValue& names);
    
    /** Ask if a protocol attribute is an integer
     @param attribute                   an attribute name
     @return true if the attribute is an integer */
    TTBoolean ProtocolIsAttributeInteger(const TTSymbol attribute);
    
    /** Ask if a protocol attribute is a TTSymbol
     @param attribute                   an attribute name
     @return true if the attribute is a TTSymbol */
    TTBoolean ProtocolIsAttributeString(const TTSymbol attribute);

    /** Set a protocol integer attribute
     @param attribute                   an attribute name
     @param value                       an integer value
     @return #kTTErrInvalidAttribute if the attribute doesn't exist, #kTTErrGeneric for any other reasons */
    TTErr   ProtocolSetIntegerAttribute(const TTSymbol applicationName,
                                        const TTSymbol attribute,
                                        const TTUInt32 value);
    
    /** Set a protocol TTSymbol attribute
     @param attribute                   an attribute name
     @param value                       an TTSymbol value
     @return #kTTErrInvalidAttribute if the attribute doesn't exist, #kTTErrGeneric for any other reasons */
    TTErr   ProtocolSetStringAttribute(const TTSymbol applicationName,
                                       const TTSymbol attribute,
                                       const TTSymbol value);

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
     @param service                     a data can be kTTSym_parameter, kTTSym_message or a kTTSym_return :
                                            - kTTSym_parameter handles the state of the application (e.g. a position or a gain).
                                            - kTTSym_message handles a command of the application (e.g. a play, a stop).
                                            - kTTSym_return handles a notification of the application (e.g. a fps, the end of a loop).
     @return #kTTErrGeneric if the data cannot be created */
	TTErr   DataCreate(const TTAddress address,
                       void (*returnValueCallback) (void*, const TTValue&) = NULL,
                       void* owner = NULL,
                       TTSymbol service = kTTSym_parameter);
    
    /** Delete a data object registered under an address into the local or a distant application
     @param address                     address of the data into an application directory :
                                            - /any/level/name.instance to create data into the local application
                                            - /any/level/name.[N] to create N instances of this data under N different addresses /any/level/name.1, /any/level/name.2, ..., /any/level/name.N
                                            - distantApp:/any/level/name.instance to create a data into the distantApp application 
     @return #kTTErrGeneric if the data cannot be deleted */
    TTErr   DataDelete(const TTAddress address);
    
    /** Set the value of a data attribute
     @param address                     address of the data into an application directory :
                                            - /any/level/name.instance to acces to a data into the local application
                                            - /any/level/name.[N] to acces to N data instances registered under N different addresses /any/level/name.1, /any/level/name.2, ..., /any/level/name.N
                                            - distantApp:/any/level/name.instance to access to a data into the distantApp application
     @param attribute                   the attribute name to set :
                                            - kTTSym_value                   :   the data value
                                            - kTTSym_valueDefault            :   the default value recalled on "Init" method
                                            - kTTSym_valueStepsize           :   amount to increment or decrement by
     
                                            - kTTSym_type                    :   type of this data's value ("none", "generic" (default), "integer", "decimal", "TTSymbol", "array")
                                            - kTTSym_tag                     :   tag list for this data
                                            - kTTSym_priority                :   does this data have a priority over other datas ? (0 means no priority then 1 is the highest priority)
                                            - kTTSym_description             :   text to describe the role of this data
                                            - kTTSym_repetitionsFilter       :   is repetitions are filtered out ?
                                            - kTTSym_active                  :   to stop notifying any value changes
                                            - kTTSym_initialized             :   is the value attribute has been initialized ?
     
                                            - kTTSym_rangeBounds             :   low and a high bounds values
                                            - kTTSym_rangeClipmode           :   behavior at the bounds ("low", "high", "wrap", "fold")
     
                                            - kTTSym_rampDrive               :   the scheduler unit to use for the ramp ("none or "System")
                                            - kTTSym_rampFunction            :   the function used by the ramping
                                            - kTTSym_rampFunctionParameters  :   names of parameter's function
                                            - kTTSym_rampStatus              :   is the ramp running ?
     
                                            - kTTSym_dynamicInstances        :   is the data can be dynamically instanciated ?
                                            - kTTSym_instanceBounds          :   low and a high bounds values to range dynamic instances (-1 means no bounds)
     
     @param value                       the value to set 
     @return #kTTErrInvalidAttribute if the attribute doesn't exist, #kTTErrGeneric for any other reasons */
	TTErr   DataAttributeSet(const TTAddress address,
                             const TTSymbol attribute,
                             const TTValue& value);
    
	/** Get the value of a data attribute
     @param address                     address of the data into an application directory :
                                            - /any/level/name.instance to acces to a data into the local application
                                            - /any/level/name.[N] to acces to N data instances registered under N different addresses /any/level/name.1, /any/level/name.2, ..., /any/level/name.N
                                            - distantApp:/any/level/name.instance to access to a data into the distantApp application
     @param attribute                   the attribute name to get :
                                            - kTTSym_value                   :   the data value
                                            - kTTSym_valueDefault            :   the default value recalled on "Init" method
                                            - kTTSym_valueStepsize           :   amount to increment or decrement by
     
                                            - kTTSym_type                    :   type of this data's value ("none", "generic" (default), "integer", "decimal", "TTSymbol", "array")
                                            - kTTSym_tag                     :   tag list for this data
                                            - kTTSym_priority                :   does this data have a priority over other datas ? (0 means no priority then 1 is the highest priority)
                                            - kTTSym_description             :   text to describe the role of this data
                                            - kTTSym_repetitionsFilter       :   is repetitions are filtered out ?
                                            - kTTSym_active                  :   to stop notifying any value changes
                                            - kTTSym_initialized             :   is the value attribute has been initialized ?
     
                                            - kTTSym_rangeBounds             :   low and a high bounds values
                                            - kTTSym_rangeClipmode           :   behavior at the bounds ("low", "high", "wrap", "fold")
     
                                            - kTTSym_rampDrive               :   the scheduler unit to use for the ramp ("none or "System")
                                            - kTTSym_rampFunction            :   the function used by the ramping
                                            - kTTSym_rampFunctionParameters  :   names of parameter's function
                                            - kTTSym_rampStatus              :   is the ramp running ?
     
                                            - kTTSym_dynamicInstances        :   is the data can be dynamically instanciated ?
                                            - kTTSym_instanceBounds          :   low and a high bounds values to range dynamic instances (-1 means no bounds)
     
     @param value                       the returned attribute value
     @return #kTTErrInvalidAttribute if the attribute doesn't exist, #kTTErrGeneric for any other reasons */
	TTErr   DataAttributeGet(const TTAddress address,
                             const TTSymbol attribute,
                             TTValue& value);
    
#if 0
#pragma mark -
#pragma mark Senders management
#endif
    
	/** Create a sender object to bind on an address and an attribute. A sender can bind on an existing address that doesn't exist yet
     @param address                     an address to bind :
                                            - /any/level/name.instance to acces to the local application
                                            - /any/level/name.* to acces to all instance in the same time
                                            - distantApp:/any/level/name.instance to access to a distantApp application 
     @param attribute                   an attribute to bind 
     @return #kTTErrInvalidAttribute if the attribute doesn't exist, #kTTErrGeneric for any other reasons */
	TTErr   SenderCreate(const TTAddress address,
                         const TTSymbol attribute = kTTSym_value);
    
    /** Delete a sender object registered for address and an attribute.
     @param address                     an address use to retreive the sender to delete
     @param attribute                   an attribute use to retreive the sender to delete
     @return #kTTErrInvalidAttribute if the attribute doesn't exist, #kTTErrGeneric for any other reasons */
    TTErr   SenderDelete(const TTAddress address,
                         const TTSymbol attribute);
    
    /** USe a sender object registered for address and an attribute to send a value
     @param address                     an address use to retreive the sender to use
     @param attribute                   an attribute use to retreive the sender to use
     @param value                       a value to send
     @return #kTTErrInvalidAttribute if the attribute doesn't exist, #kTTErrGeneric for any other reasons */
    TTErr   SenderUse(const TTAddress address,
                      const TTSymbol attribute,
                      const TTValue& value);

#if 0
#pragma mark -
#pragma mark Receivers management
#endif
    
    /** Create a receiver object to bind on an address and an attribute. A receiver can bind on an existing address that doesn't exist yet
     @param address                     an address to bind :
                                            - /any/level/name.instance to acces to the local application
                                            - /any/level/name.* to acces to all instance in the same time
                                            - distantApp:/any/level/name.instance to access to a distantApp application
     @param attribute                   an attribute to bind
     @param returnAddressAttributeAndValueCallback : callback method to process the data value
     @param owner                       pointer to the owner the data
     @return #kTTErrInvalidAttribute if the attribute doesn't exist, #kTTErrGeneric for any other reasons */
	TTErr   ReceiverCreate(const TTAddress address,
                           const TTSymbol attribute,
                           void (*returnAddressAttributeAndValueCallback) (void*, const TTAddress address, const TTSymbol attribute, const TTValue&),
                           void* owner = NULL);
    
    /** Delete a receiver object registered for address and an attribute.
     @param address                     an address use to retreive the receiver to delete
     @param attribute                   an attribute use to retreive the receiver to delete
     @return #kTTErrInvalidAttribute if the attribute doesn't exist, #kTTErrGeneric for any other reasons */
    TTErr   ReceiverDelete(const TTAddress address,
                           const TTSymbol attribute);

#if 0
#pragma mark -
#pragma mark State management
#endif
    
    /** Read state list from a xml file into the state manager
     @param filepath                    the path to the file from where to load the namespace
     @return #kTTErrInvalidFilepath if the file cannot be read at the given path, #kTTErrGeneric for any other reasons */
	TTErr   StateManagerReadFromXml(const TTSymbol filepath);
    
    /** Write state list of the state manager into a xml file
     @param filepath                    the path where to save the namespace
     @return #kTTErrInvalidFilepath if the file cannot be written at the given path, #kTTErrGeneric for any other reason */
	TTErr   StateManagerWriteAsXml(const TTSymbol filepath);
    
    /** Store a state into the state manager using a name
     @param name                        a state name
     @param selection                   pass a selection to choose which part of the namespace to store
     @return #kTTErrGeneric if the state can't be stored */
	TTErr   StateManagerStore(const TTSymbol name, const TTSymbol selectionName = kTTSym_default);
    
	/** Store a state into the state manager using a number
     @param name                        a state id
     @param selection                   pass a selection to choose which part of the namespace to store
     @return #kTTErrGeneric if the state can't be stored */
	TTErr   StateManagerStore(const TTUInt32 number, const TTSymbol selectionName = kTTSym_default);
	
	/** Call a specific state listed by the state manager using a name 
     @param name                        a state name
     @return #kTTErrGeneric if the state doesn't exist */
	TTErr   StateManagerRecall(const TTSymbol name);
    
	/** Call a specific state listed by the state manager using a number 
     @param name                        a state id
     @return #kTTErrGeneric if the state doesn't exist */
	TTErr   StateManagerRecall(const TTUInt32 number);

#if 0
#pragma mark -
#pragma mark Selection management
#endif
    
    /** Get a selection or create one if it doesn't exist yet 
     @param selectionName               a symbol */
    TTAddressItemPtr SelectionLookup(const TTSymbol selectionName);
    
#if 0
#pragma mark -
#pragma mark Addresses edition
#endif
    
    /** Edit a specific integer instance address using an integer format address
     @param integerFormatAddress        a symbol as integer format address : /any/level/name.%d
     @param instanceNumber              an unsigned integer
     @return #TTAddress like /any/level/name.1 */
    TTAddress  AddressEditNumericInstance(const TTSymbol integerFormatAddress,
                                          const TTUInt32 instanceNumber);
    
    /** Edit a specific symbol instance address using an symbol format address
     @param symbolFormatAddress         a symbol as symbol format address : /any/level/name.%s
     @param instanceSymbol              a symbol
     @return #TTAddress like /any/level/name.foo */
    TTAddress  AddressEditSymbolInstance(const TTSymbol symbolFormatAddress,
                                         const TTSymbol instanceSymbol);
    
    /** Get all intances at an address 
     @param address                     an address without instance part :
                                            - /any/level/name
                                            - distantApp:/any/level/name 
     @param instances                   the returned instances symbols 
     @return #kTTErrGeneric if the address doesn't exist */
	TTErr   AddressGetInstances(const TTAddress address,
                                TTValue& instances);
}

// Macro to retreive a selection by name
#define lookupSelection(selectionName) ModularObject->SelectionLookup(namespaceName)

#endif  // __TT_MODULAR_H__
