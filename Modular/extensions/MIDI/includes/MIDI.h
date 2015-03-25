/** @file
 *
 * @ingroup modularMIDI
 *
 * @brief the MIDI protocol for Jamoma Modular
 *
 * @details
 *
 * @author Theo Delahogue
 *
 * @copyright © 2014, GMEA (http://www.gmea.net) @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __MIDI_H__
#define __MIDI_H__

#include "TTProtocol.h"
#include "MIDIInclude.h"
#include "MIDIDestination.h"
#include "MIDIInput.h"
#include "MIDIOutput.h"
#include "MIDISource.h"

class MIDIDestination;
typedef MIDIDestination* MIDIDestinationPtr;

class MIDIInput;
typedef MIDIInput* MIDIInputPtr;

class MIDIOutput;
typedef MIDIOutput* MIDIOutputPtr;

class MIDISource;
typedef MIDISource* MIDISourcePtr;

class MIDI : public TTProtocol {
	
	TTCLASS_SETUP(MIDI)
	
private:
	
    TT_PROTOCOL_PARAMETER(Input);                          ///< PROTOCOL PARAMETER : each registered application have to setup its input device name
    TT_PROTOCOL_PARAMETER(Output);                         ///< PROTOCOL PARAMETER : each registered application have to setup its output device name
    
	TTHash                  mInputs;                    ///< a table of MIDIInput instances for each device
    TTHash                  mOutputs;                   ///< a table of MIDIOutput instances for each device

#if !defined(TT_PLATFORM_MAC)
    TTPtr                   mClient;                    ///< TODO : a client handle to the Windows MIDI server
#else
    MIDIClientRef           mClient;                    ///< a client handle to the Mac OS X Core MIDI server
#endif

public:
    /** send messages using MIDIOutput or MIDISource instances relative to an application
     @param applicationName     : #TTSymbol
     @param address             : #TTAddress
     @param value               : #TTValue
     @return errorcode          : #TTErr
     */
    TTErr sendMessage(TTSymbol& applicationName, TTAddress& address, const TTValue& value);
    
    /** used by MIDIInput and MIDIDestination instances to pass received messages
     @param applicationName     : #TTSymbol
     @param address             : #TTAddress
     @param value               : #TTValue
     @return errorcode          : #TTErr
     */
	TTErr receivedMessage(TTSymbol& applicationName, TTAddress& address, const TTValue& value);

private:
	/** Scan to find remote applications and add them to the application manager
     @param inputValue			: #TTSymbol "inputs" or #TTSymbol "outputs"
	 @param outputValue			: all remote device names
     @return errorcode			: return a kTTErrGeneric if the protocol fails to start or if it was running already
     */
	TTErr Scan(const TTValue& inputValue, TTValue& outputValue);
	
	/*!
     * Run MIDI sending and reception
     @param inputValue			: nothing to run all registered applications or a #TTSymbol application name
	 @param outputValue			: nothing
     @return errorcode			: return a kTTErrGeneric if the protocol fails to start or if it was running already
     */
	TTErr Run(const TTValue& inputValue, TTValue& outputValue);
    TTErr runDestination(TTSymbol& applicationName);
    TTErr runInput(TTSymbol& applicationName);
    TTErr runOutput(TTSymbol& applicationName);
    TTErr runSource(TTSymbol& applicationName);
	
    /*!
     * Stop MIDI sending and reception
     @param inputValue			: nothing to stop all registered applications or a #TTSymbol application name
	 @param outputValue			: nothing
     @return errorcode			: return a kTTErrGeneric if the protocol fails to stop or if it was already stopped
     */
	TTErr Stop(const TTValue& inputValue, TTValue& outputValue);
    TTErr stopDestination(TTSymbol& applicationName);
    TTErr stopInput(TTSymbol& applicationName);
    TTErr stopOutput(TTSymbol& applicationName);
    TTErr stopSource(TTSymbol& applicationName);
	
	/**************************************************************************************************************************
	 *
	 *	SEND REQUEST METHODS
	 *
	 **************************************************************************************************************************/
	
	/*!
	 * Send a discover request to an application to get a part of the namespace at the given address
	 *
 	 @param to					: the application where to discover
	 @param address				: the address to discover
     @param returnedType          : the type of the node at the address (default is none which means no type)
	 @param returnedChildren      : all names of nodes below the address
	 @param returnedAttributes	: all attributes the node at the address
     @param tryCount              : number of try for this request
	 @return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
	 else it returns kTTErrGeneric if no answer or timeout
	 */
	TTErr SendDiscoverRequest(TTSymbol to, TTAddress address,
                              TTSymbol& returnedType,
							  TTValue& returnedChildren,
							  TTValue& returnedAttributes,
                              TTUInt8 tryCount=0);
    
    /*!
	 * Send a discover all request to an application to fill all the directory under this address
	 *
 	 @param to					: the application where to discover
	 @param address				: the address to discover
     @param node                  : the node for this address
     @param tryCount              : number of try for this request
	 @return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
	 else it returns kTTErrGeneric if no answer or timeout
	 */
	TTErr SendDiscoverAllRequest(TTSymbol to, TTAddress address,
                                 TTNodePtr node,
                                 TTUInt8 tryCount=0);
	
	/*!
	 * Send a get request to an application to get a value at the given address
	 *
 	 @param to					: the application where to get
	 @param address				: the address to get
	 @param returnedValue			: the value which is going to be filled
     @param tryCount              : number of try for this request
	 @return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
	 else it returns kTTErrGeneric if no answer or timeout
	 */
	TTErr SendGetRequest(TTSymbol to, TTAddress address, 
						 TTValue& returnedValue,
                         TTUInt8 tryCount=0);
	
	/*!
	 * Send a set request to set a value of a specific application
	 *
	 @param to					: the application where to set
	 @param address				: the address to set
	 @param value					: anything to send
     @param tryCount              : number of try for this request
	 @return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
	 */
	TTErr SendSetRequest(TTSymbol to, TTAddress address, 
						 TTValue& value,
                         TTUInt8 tryCount=0);
	
	/*!
	 * Send a listen request to a specific application
	 *
	 @param to					: the application where to listen
	 @param address				: the address to listen
	 @param attribute				: the attribute to listen
	 @param enable				: enable/disable the listening
     @param tryCount              : number of try for this request
	 @return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
	 */
	TTErr SendListenRequest(TTSymbol to, TTAddress address, 
							TTBoolean enable,
                            TTUInt8 tryCount=0);
	
	
	/**************************************************************************************************************************
	 *
	 *	SEND ANSWER METHODS
	 *
	 **************************************************************************************************************************/
	
	/*!
	 * Send a disover answer to a application which ask for.
	 *
	 @param to					: the application where to send answer
	 @param address				: the address where comes from the description
     @param returnedType          : the type of the node at the address (default is none which means no type)
	 @param returnedChildren      : all names of nodes below the address
	 @param returnedAttributes	: all attributes the node at the address
	 */
	TTErr SendDiscoverAnswer(TTSymbol to, TTAddress address,
                             TTSymbol& returnedType,
							 TTValue& returnedChildren,
							 TTValue& returnedAttributes,
							 TTErr err=kTTErrNone);
	
    /*!
	 * Send a discover answer to a application which ask for.
	 *
	 @param to					: the application where to send answer
	 @param address				: the address where comes from the description
     @param node                  : the node for this address
	 */
	TTErr SendDiscoverAllAnswer(TTSymbol to, TTAddress address,
                                TTNodePtr node,
                                TTErr err=kTTErrNone);
    
	/*!
	 * Send a get answer to a application which ask for.
	 *
	 @param to					: the application where to send answer
	 @param address				: the address where comes from the value
	 @param returnedValue			: the value of the attribute at the address
	 */
	TTErr SendGetAnswer(TTSymbol to, TTAddress address, 
						const TTValue& returnedValue,
						TTErr err=kTTErrNone);
	
	/*!
	 * Send a listen answer to a application which ask for.
	 *
	 @param to					: the application where to send answer
	 @param address				: the address where comes from the value
	 @param returnedValue			: the value of the attribute at the address
	 */
	TTErr SendListenAnswer(TTSymbol to, TTAddress address, 
						   const TTValue& returnedValue,
						   TTErr err=kTTErrNone);
};
typedef MIDI* MIDIPtr;

#endif // __MIDI_H__
