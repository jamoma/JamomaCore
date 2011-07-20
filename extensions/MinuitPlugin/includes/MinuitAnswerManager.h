/*
 * A Plugin interface
 * Copyright © 2011, Laurent Garnier, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef MINUIT_ANSWER_MANAGER
#define MINUIT_ANSWER_MANAGER

#include "Minuit.h"
#include "MinuitInclude.h"
#include "MinuitAnswer.h"

#include <string>
#include <map>
#include <vector>

typedef std::map<TTString, MinuitAnswerPtr>	 MinuitAnswerTable;

class Minuit;
typedef Minuit* MinuitPtr;

class MinuitAnswerManager {
	
private:
	
	MinuitPtr			mPlugin;
	
	MinuitAnswerTable	mDiscoverAnswers;
	MinuitAnswerTable	mGetAnswers;
	
public:

	MinuitAnswerManager(MinuitPtr aMinuitPlugin);
	virtual ~MinuitAnswerManager();
	
	void	AddDiscoverAnswer(TTString from, TTNodeAddressPtr address, int timeOutInMs = DEFAULT_TIMEOUT);
	TTErr	ReceiveDiscoverAnswer(TTString from, TTNodeAddressPtr address, const TTValue& value);
	int		CheckDiscoverAnswer(TTString from, TTNodeAddressPtr address, TTValue& value);
	TTErr	ParseDiscoverAnswer(const TTValue& answer, TTValue& returnedChildrenNames, TTValue& returnedChildrenTypes, TTValue& returnedAttributes);
								
	void	AddGetAnswer(TTString from, TTNodeAddressPtr address, int timeOutInMs = DEFAULT_TIMEOUT);
	TTErr	ReceiveGetAnswer(TTString from, TTNodeAddressPtr address, const TTValue& value);
	int		CheckGetAnswer(TTString from, TTNodeAddressPtr address, TTValue& value);
};
typedef MinuitAnswerManager* MinuitAnswerManagerPtr;

#endif // MINUIT_ANSWER_MANAGER
