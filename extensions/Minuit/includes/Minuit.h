/*
 Copyright: 
 LaBRI (http://www.labri.fr) - BlueYeti (http://www.blueyeti.fr) - GMEA (http://www.gmea.net)
 
 Author(s): Laurent Garnier, Theo Delahogue
 Last modification: 16/08/2011
 
 Adviser(s): 
 Myriam Desainte-Catherine (myriam.desainte-catherine@labri.fr)
 
 This software is a computer program whose purpose is to propose
 a library for interactive scores edition and execution.
 
 This software is governed by the CeCILL-C license under French law and
 abiding by the rules of distribution of free software.  You can  use, 
 modify and/ or redistribute the software under the terms of the CeCILL-C
 license as circulated by CEA, CNRS and INRIA at the following URL
 "http://www.cecill.info". 
 
 As a counterpart to the access to the source code and  rights to copy,
 modify and redistribute granted by the license, users are provided only
 with a limited warranty  and the software's author,  the holder of the
 economic rights,  and the successive licensors  have only  limited
 liability. 
 
 In this respect, the user's attention is drawn to the risks associated
 with loading,  using,  modifying and/or developing or reproducing the
 software by the user in light of its specific status of free software,
 that may mean  that it is complicated to manipulate,  and  that  also
 therefore means  that it is reserved for developers  and  experienced
 professionals having in-depth computer knowledge. Users are therefore
 encouraged to load and test the software's suitability as regards their
 requirements in conditions enabling the security of their systems and/or 
 data to be ensured and,  more generally, to use and operate it in the 
 same conditions as regards security.
 
 The fact that you are presently reading this means that you have had
 knowledge of the CeCILL-C license and that you accept its terms.
 */

/*!
 * \class Minuit
 *
 * It's the Minuit protocol which use the Open Sound Control protocol 
 * 
 */

#ifndef __MINUIT_H__
#define __MINUIT_H__

#include "Protocol.h"
#include "MinuitInclude.h"
#include "MinuitAnswerManager.h"

class MinuitAnswerManager;
typedef MinuitAnswerManager* MinuitAnswerManagerPtr;

class Minuit : public Protocol {
	
	TTCLASS_SETUP(Minuit)
	
private:
	
	TTSymbol				mIp;						///< ATTRIBUTE : IP of the local application (to share with clients)		(default : loacalhost, readonly)
	TTUInt16				mPort;						///< ATTRIBUTE : port dedicated to data reception (to share with clients)	(default : MINUIT_RECEPTION_PORT)
	
	TTObjectBasePtr			mOscSend;
	TTObjectBasePtr			mOscReceive;
	
	MinuitAnswerManagerPtr	mAnswerManager;
	
	TTErr sendMessage(TTSymbol distantApplicationName, TTSymbol header, TTValue& message);
	TTErr receivedMessage(const TTValue& message, TTValue& outputValue);
	
	/** Get parameters names needed by this protocol */
	TTErr getParameterNames(TTValue& value);
	
	/** Scan to find remote applications and add them to the application manager */
	TTErr Scan();
	
	/** Run reception thread mechanism */
	TTErr Run();
	
	/** Stop the reception thread mechanism of the protocol */
	TTErr Stop();
	
	/**************************************************************************************************************************
	 *
	 *	SEND REQUEST METHODS
	 *
	 **************************************************************************************************************************/
	
	/*!
	 * Send a discover request to an application to get a part of the namespace at the given address
	 *
 	 * \param to					: the application where to discover
	 * \param address				: the address to discover
	 * \param returnedChildrenNames : all names of nodes below the address
	 * \param returnedChildrenTypes : all types of nodes below the address (default is none which means no type)
	 * \param returnedAttributes	: all attributes the node at the address
	 * \return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
	 else it returns kTTErrGeneric if no answer or timeout
	 */
	TTErr SendDiscoverRequest(TTSymbol to, TTAddress address, 
							  TTValue& returnedChildrenNames,
							  TTValue& returnedChildrenTypes,
							  TTValue& returnedAttributes);
	
	/*!
	 * Send a get request to an application to get a value at the given address
	 *
 	 * \param to					: the application where to get
	 * \param address				: the address to get
	 * \param returnedValue			: the value which is going to be filled
	 * \return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
	 else it returns kTTErrGeneric if no answer or timeout
	 */
	TTErr SendGetRequest(TTSymbol to, TTAddress address, 
						 TTValue& returnedValue);
	
	/*!
	 * Send a set request to set a value of a specific application
	 *
	 * \param to					: the application where to set
	 * \param address				: the address to set
	 * \param value					: anything to send
	 * \return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
	 */
	TTErr SendSetRequest(TTSymbol to, TTAddress address, 
						 TTValue& value);
	
	/*!
	 * Send a listen request to a specific application
	 *
	 * \param to					: the application where to listen
	 * \param address				: the address to listen
	 * \param attribute				: the attribute to listen
	 * \param enable				: enable/disable the listening
	 * \return errorcode			: kTTErrNone means the answer has been received, kTTErrValueNotFound means something is bad in the request
	 */
	TTErr SendListenRequest(TTSymbol to, TTAddress address, 
							TTBoolean enable);
	
	
	/**************************************************************************************************************************
	 *
	 *	SEND ANSWER METHODS
	 *
	 **************************************************************************************************************************/
	
	/*!
	 * Send a disover answer to a application which ask for.
	 *
	 * \param to					: the application where to send answer
	 * \param address				: the address where comes from the description
	 * \param returnedChildrenNames : all names of nodes below the address
	 * \param returnedChildrenTypes : all types of nodes below the address(default is none which means no type)
	 * \param returnedAttributes	: all attributes the node at the address
	 */
	TTErr SendDiscoverAnswer(TTSymbol to, TTAddress address,
							 TTValue& returnedChildrenNames,
							 TTValue& returnedChildrenTypes,
							 TTValue& returnedAttributes,
							 TTErr err=kTTErrNone);
	
	/*!
	 * Send a get answer to a application which ask for.
	 *
	 * \param to					: the application where to send answer
	 * \param address				: the address where comes from the value
	 * \param returnedValue			: the value of the attribute at the address
	 */
	TTErr SendGetAnswer(TTSymbol to, TTAddress address, 
						TTValue& returnedValue,
						TTErr err=kTTErrNone);
	
	/*!
	 * Send a listen answer to a application which ask for.
	 *
	 * \param to					: the application where to send answer
	 * \param address				: the address where comes from the value
	 * \param returnedValue			: the value of the attribute at the address
	 */
	TTErr SendListenAnswer(TTSymbol to, TTAddress address, 
						   TTValue& returnedValue,
						   TTErr err=kTTErrNone);
	
};
typedef Minuit* MinuitPtr;

#endif // __MINUIT_H__
