/* 
 * Jamoma OSC Receiver
 * Copyright © 2011, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTOscSocket.h"

TTPtr TTOscSocketListener(TTPtr anArgument)
{
	TTOscSocketPtr anOscSocket= (TTOscSocketPtr) anArgument;
	
	anOscSocket->mSocketListener = new UdpListeningReceiveSocket(IpEndpointName(IpEndpointName::ANY_ADDRESS, anOscSocket->mPort), anOscSocket);
	anOscSocket->mSocketListener->Run();
	
	return NULL;
}

TTOscSocket::TTOscSocket(const TTObjectBasePtr owner, const TTUInt16 port)
{
	mOwner = owner;
	mPort = port;
	
	mSocketListener = NULL;
	mSocketListenerThread = new TTThread(TTOscSocketListener, this);
	
	mSocketTransmitter = NULL;
}

TTOscSocket::TTOscSocket(const TTString& address, const TTUInt16 port)
{
	mAddress = address;
	mPort = port;
	
	mSocketTransmitter = new UdpTransmitSocket(IpEndpointName(address.data(), port));
	
	mSocketListener = NULL;
}

TTOscSocket::~TTOscSocket()
{
	unsigned int usecToStopTheSelect = 20000;
	
	if (mSocketListener) {
		
		mSocketListener->AsynchronousBreak();
		
#ifdef TT_PLATFORM_WIN
		Sleep(usecToStopTheSelect/1000);
#else
		usleep(usecToStopTheSelect);
#endif
		
		delete mSocketListener;
		mSocketListener = NULL;
	}
	
	if (mSocketTransmitter) {
		
		delete mSocketTransmitter;
		mSocketTransmitter = NULL;
	}
}

void TTOscSocket::ProcessMessage(const osc::ReceivedMessage&m, const IpEndpointName& remoteEndPoint)
{
	TTValue		receivedMessage = TT(m.AddressPattern());
	
	osc::ReceivedMessage::const_iterator arguments = m.ArgumentsBegin(); // get arguments
	
	while (arguments != m.ArgumentsEnd()) {
		
		if (arguments->IsChar())
			receivedMessage.append(arguments->AsChar());
		
		else if (arguments->IsInt32()) {
			TTInt32 i = arguments->AsInt32();
			receivedMessage.append((TTInt64)i);
			
		} else if (arguments->IsFloat())
			receivedMessage.append(arguments->AsFloat());
		
		else if (arguments->IsString())
			receivedMessage.append(TT(arguments->AsString()));
		
		arguments++;
	}
	
	this->mOwner->sendMessage(TT("oscSocketReceive"), receivedMessage, kTTValNONE);
}

TTErr TTOscSocket::SendMessage(TTSymbol& message, const TTValue& arguments)
{
	TTUInt32 bufferSize = computeMessageSize(message, arguments);
	
	if (!bufferSize)
		return kTTErrGeneric;
	
#ifdef TT_PLATFORM_WIN
	char* buffer = (char*)malloc(bufferSize);
#else
	char buffer[bufferSize];
#endif
	
	osc::OutboundPacketStream oscStream(buffer, bufferSize);
	
	oscStream << osc::BeginMessage(message.c_str());
	
	
	TTSymbol		symValue;
	TTInt32			intValue;
	TTFloat64		floatValue;
	TTBoolean		booleanValue;
	TTDataType		valueType;
	
	for (TTUInt32 i=0; i<arguments.getSize(); ++i) {
		valueType = arguments.getType(i);
		
		if (valueType == kTypeSymbol) {
			arguments.get(i, symValue);
			oscStream << symValue.c_str();
		}
		else if (valueType == kTypeBoolean) {
			arguments.get(i, booleanValue);
			oscStream << booleanValue;
		}
		else if (valueType == kTypeUInt8 || valueType == kTypeUInt16 || valueType == kTypeUInt32 || valueType == kTypeUInt64) {
			arguments.get(i, intValue);
			oscStream << intValue;
		}
		else if (valueType == kTypeInt8 || valueType == kTypeInt16 || valueType == kTypeInt32 || valueType == kTypeInt64) {
			arguments.get(i, intValue);
			oscStream << intValue;
		}
		else if (valueType == kTypeFloat32 || valueType == kTypeFloat64) {
			arguments.get(i, floatValue);
			oscStream << (float)floatValue;
		}
		else
			return kTTErrGeneric;
	}
	
	oscStream << osc::EndMessage;
	
	mSocketTransmitter->Send(oscStream.Data(), oscStream.Size());
	oscStream.Clear();
	
	return kTTErrNone;
}

TTUInt32 TTOscSocket::computeMessageSize(TTSymbol& message, const TTValue& arguments)
 {
	 TTUInt32 result = 0;
	 
	 result += 8;														//#bundle
	 result += 8;														//timetag
	 result += 4;														//datasize
	 
	 TTUInt32 messageSize = std::string(message.c_str()).size();
	 messageSize += 1;													// /0 for end of string
	 
	 result += ((messageSize/4) + 1) * 4;
	 
	 TTUInt32 argumentSize = arguments.getSize();
	 argumentSize += 1;													// , for indicating this is an argument string information
	 
	 result += ((argumentSize/4) + 1) * 4;								// ArgumentTag Size
	 
	 for (TTUInt32 i=0; i<arguments.getSize(); ++i) {
		 
		 if (arguments.getType(i) == kTypeSymbol) {
			 
			 TTSymbol symValue;
			 arguments.get(i, symValue);
			 TTUInt32 stringSize = std::string(symValue.c_str()).size();
			 stringSize += 1;											// /0 for end of string
			 result += ((stringSize/4) + 1) * 4;						// String Size
		 }
		 else if (arguments.getType(i) == kTypeBoolean) {
			 result += 1;												// Boolean size
		 }
		 else if (arguments.getType(i) == kTypeUInt8 || arguments.getType(i) == kTypeInt8) {
			 result += 2;												// Int8 size
		 }
		 else if (arguments.getType(i) == kTypeUInt16 || arguments.getType(i) == kTypeInt16) {
			 result += 4;												// Int16 size
		 }
		 else if (arguments.getType(i) == kTypeUInt32 || arguments.getType(i) == kTypeInt32 || arguments.getType(i) == kTypeFloat32) {
			 result += 4;												// Float32/Int32 size
		 }
		 else if (arguments.getType(i) == kTypeUInt64 || arguments.getType(i) == kTypeInt64 || arguments.getType(i) == kTypeFloat64) {
			 result += 8;												// Float64/Int64 size
		 }
		 else
			 return 0;													// Error
	 }
	 
	 return result;
 }