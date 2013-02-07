/*
 * A Protocol interface
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
#include <vector>

class Minuit;
typedef Minuit* MinuitPtr;

class MinuitAnswerManager {
	
private:
	
	MinuitPtr   mProtocol;
	
	TTHashPtr   mDiscoverAnswers;
	TTHashPtr   mGetAnswers;
	
public:

	MinuitAnswerManager(MinuitPtr aMinuitProtocol);
	virtual ~MinuitAnswerManager();
	
	void	AddDiscoverAnswer(TTSymbol from, TTAddress address, int timeOutInMs = DEFAULT_TIMEOUT);
	TTErr	ReceiveDiscoverAnswer(TTSymbol from, TTAddress address, const TTValue& value);
	int		CheckDiscoverAnswer(TTSymbol from, TTAddress address, TTValue& value);
	TTErr	ParseDiscoverAnswer(const TTValue& answer, TTSymbol& returnedType, TTValue& returnedChildren, TTValue& returnedAttributes);
								
	void	AddGetAnswer(TTSymbol from, TTAddress address, int timeOutInMs = DEFAULT_TIMEOUT);
	TTErr	ReceiveGetAnswer(TTSymbol from, TTAddress address, const TTValue& value);
	int		CheckGetAnswer(TTSymbol from, TTAddress address, TTValue& value);
};
typedef MinuitAnswerManager* MinuitAnswerManagerPtr;

#endif // MINUIT_ANSWER_MANAGER
