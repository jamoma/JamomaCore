/**
 * @file WebSocketInclude.h
 * @ingroup modularWebSocket
 * @brief It's the WebSocket protocol
 * @authors Laurent Garnier
 *
 * @copyright © 2013, Laurent Garnier @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 *
 * @details Use cross platform libjson library from http://libjson.sourceforge.net/
 */

#ifndef MINUITINCLUDE_H_
#define MINUITINCLUDE_H_

#ifdef TT_PLATFORM_WIN
	#include <time.h>
	#include <windows.h>
#else
	#include <sys/time.h>
#endif

#include "TTFoundationAPI.h"
#include "libjson.h"

#include <sstream>
#include <iostream>
#include <string>
#include <map>
#include <vector>

using namespace std;

static const unsigned int WEBSOCKET_RECEPTION_PORT = 9001;

#define WEBSOCKET_DEFAULT_REMOTE_APPNAME "telecommande"
#define WEBSOCKET_DEFAULT_HTML_PATH "html"

#define WEBSOCKET_REQUEST_SET "set"

#define WEBSOCKET_REQUEST_DISCOVER "?namespace"
#define WEBSOCKET_REQUEST_DISCOVER_ALL "?namespace_all"
#define WEBSOCKET_REQUEST_GET "?get"
#define WEBSOCKET_REQUEST_LISTEN "?listen"

#define WEBSOCKET_ANSWER_DISCOVER ":namespace"
#define WEBSOCKET_ANSWER_DISCOVER_ALL ":namespace_all"
#define WEBSOCKET_ANSWER_GET ":get"
#define WEBSOCKET_ANSWER_LISTEN ":listen"

#define WEBSOCKET_ERROR_DISCOVER "!namespace"
#define WEBSOCKET_ERROR_DISCOVER_ALL "!namespace_all"
#define WEBSOCKET_ERROR_GET "!get"
#define WEBSOCKET_ERROR_LISTEN "!listen"

#define WEBSOCKET_REQUEST_LISTEN_ENABLE "enable"
#define WEBSOCKET_REQUEST_LISTEN_DISABLE "disable"

#define WEBSOCKET_JSON_SENDER "sender"
#define WEBSOCKET_JSON_OPERATION "operation"
#define WEBSOCKET_JSON_ADDRESS "address"
#define WEBSOCKET_JSON_VALUE "value"
#define WEBSOCKET_JSON_ERROR "error"

#define WEBSOCKET_JSON_CHILDREN "children"
#define WEBSOCKET_JSON_ATTRIBUTES "attributes"
#define WEBSOCKET_JSON_TYPE "type"


#define WEBSOCKET_START_NODES "nodes={"
#define WEBSOCKET_END_NODES "}"
#define WEBSOCKET_START_ATTRIBUTES "attributes={"
#define WEBSOCKET_END_ATTRIBUTES "}"

#define ACCESS_GETTER "getter"
#define ACCESS_SETTER "setter"
#define ACCESS_GETSETTER "getsetter"

#define DEFAULT_TIMEOUT 50
#define MAX_TRY 2
#define NO_TIMEOUT -1

#define REQUEST_NOT_SENT -2
#define TIMEOUT_EXCEEDED -1
#define NO_ANSWER 0
#define ANSWER_RECEIVED 1
#define ANSWER_ERROR 2

#endif /*MINUITINCLUDE_H_*/
