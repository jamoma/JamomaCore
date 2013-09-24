#ifndef MINUITINCLUDE_H_
#define MINUITINCLUDE_H_

#ifdef TT_PLATFORM_WIN
	#include <time.h>
	#include <windows.h>
#else
	#include <sys/time.h>
#endif

#include "TTFoundationAPI.h"

#include <sstream>
#include <iostream>
#include <string>
#include <map>
#include <vector>

using namespace std;

static const unsigned int MINUIT_RECEPTION_PORT = 8002;

#define MINUIT_REQUEST_DISCOVER "?namespace"
#define MINUIT_REQUEST_GET "?get"
#define MINUIT_REQUEST_LISTEN "?listen"

#define MINUIT_ANSWER_DISCOVER ":namespace"
#define MINUIT_ANSWER_GET ":get"
#define MINUIT_ANSWER_LISTEN ":listen"

#define MINUIT_ERROR_DISCOVER "!namespace"
#define MINUIT_ERROR_GET "!get"
#define MINUIT_ERROR_LISTEN "!listen"

#define MINUIT_REQUEST_LISTEN_ENABLE "enable"
#define MINUIT_REQUEST_LISTEN_DISABLE "disable"

#define MINUIT_START_NODES "nodes={"
#define MINUIT_END_NODES "}"
#define MINUIT_START_ATTRIBUTES "attributes={"
#define MINUIT_END_ATTRIBUTES "}"

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
