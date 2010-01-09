/* 
 * Multicore Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TTMULTICORE_INLET_H__
#define __TTMULTICORE_INLET_H__

#include "TTMulticore.h"


/******************************************************************************************/

/**	This object represents a single 'inlet' to a TTMulticoreObject.
	TTMulticoreObject maintains a vector of these inlets.
	
	The relationship of an inlet to other parts of the multicore heirarchy is as follows:

		A graph may have many objects.
		An object may have many inlets.	
		An inlet may have many signals connected.
		A signal may have many channels.
*/
class TTMulticoreInlet {
	TTUInt16				numSources;					///< The number of getSamples callback functions (sources) for each inlet from which we pull.
	TTUInt16*				audioSourceOutletIndices;
	
	// TODO: should the connection itself be a separate class?
	
//	MCoreObject*			owner;
//	TTAudioSignal*			audioInput;					///< The buffered input for processing audio with our object.  Provided to the "inputs" array.
//	TTUInt16				index;						///< What inlet am I?
public:
//	MCoreObjectPtr*			audioSources;				///< An array of objects from which we pull our source samples using the ::getAudioOutput() method.
//	TTAudioSignalArray*		inputs;
	
public:
	TTMulticoreInlet();
	~TTMulticoreInlet();
	
//	void setOwner(MCoreObjectPtr newOwner, TTAudioSignalArray* newInputs, TTUInt16 newIndex);
	
	// reset
//	void reset();
	
	// init the chain from which we will pull
//	void init();
	
//	void prepareToProcess();
	
	// collect and sum the sources
//	void pull();
	
	// when we receive a notification than an object is going away...
//	void drop(TTObjectPtr theObjectBeingDeleted);
	
//	TTErr addSource(TTObjectPtr anObject, TTUInt16 sourceOutletNumber);

//	TTUInt16 getMaxNumSourceChannels(TTUInt16 weDeliverNumChannels);
	
//private:
//	TTUInt16 initAudioSignal(TTAudioSignalPtr aSignal, MCoreObjectPtr aSource);

};


typedef TTMulticoreInlet*					TTMulticoreInletPtr;
typedef vector<TTMulticoreInlet>			TTMulticoreInletVector;		// TODO: should this be a vector of pointers?
typedef TTMulticoreInletVector::iterator	TTMulticoreInletIter;



#endif // __TTMULTICORE_INLET_H__
