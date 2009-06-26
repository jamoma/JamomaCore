/* 
 * TTBlue Audio Signal Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTAudioSignalArray.h"
#include "TTEnvironment.h"
#define thisTTClass TTAudioSignalArray


/****************************************************************************************************/

TTAudioSignalArray::TTAudioSignalArray(TTValue& arguments)
	: TTObject(TT("audiosignalarray"), arguments), 
	  audioSignals(NULL)
{
	TTUInt16 initialMaxNumAudioSignals = arguments;
	
	setMaxNumAudioSignals(initialMaxNumAudioSignals);
}


TTAudioSignalArray::~TTAudioSignalArray()
{
	delete[] audioSignals;
}


void TTAudioSignalArray::init()
{
	delete[] audioSignals;
	audioSignals = new TTAudioSignalPtr[maxNumAudioSignals];
	for(TTUInt16 i=0; i<maxNumAudioSignals ;i++)
		audioSignals[i] = NULL;
	numAudioSignals = 0;
}


void TTAudioSignalArray::releaseAll()
{
	for(TTUInt16 i=0; i<maxNumAudioSignals; i++)
		TTObjectRelease(&audioSignals[i]);
}

void TTAudioSignalArray::clearAll()
{
	for(TTUInt16 i=0; i<maxNumAudioSignals; i++)
		audioSignals[i]->clear();
}

void TTAudioSignalArray::allocAllWithVectorSize(TTUInt16 vs)
{
	for(TTUInt16 i=0; i<maxNumAudioSignals; i++)
		audioSignals[i]->allocWithVectorSize(vs);
}

TTUInt16 TTAudioSignalArray::getVectorSize()
{
	return audioSignals[0]->getVectorSize();
}

void TTAudioSignalArray::setAllMaxNumChannels(TTUInt16 newMaxNumChannels)
{
	for(TTUInt16 i=0; i<maxNumAudioSignals; i++)
		audioSignals[i]->setmaxNumChannels(newMaxNumChannels);
}

void TTAudioSignalArray::setAllNumChannels(TTUInt16 newNumChannels)
{
	for(TTUInt16 i=0; i<maxNumAudioSignals; i++)
		audioSignals[i]->setnumChannels(newNumChannels);
}

