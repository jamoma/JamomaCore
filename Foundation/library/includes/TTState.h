/** @file
 @ingroup foundationLibrary
 
 @brief The #TTState class inherits from #TTDictionary to handle the state of #TTObject.
 
 @details each object to handle is stored under an 'objects' key. @n
 each attribute to handle is stored under its name. @n
 the order of the recall is stored under an 'order' key @n
 
 @author Theo de la Hogue
 
 @copyright Copyright © 2014, Theo de la Hogue @n
 This code is licensed under the terms of the "New BSD License" @n
 http://creativecommons.org/licenses/BSD/
 */

#ifndef __STATE_H__
#define __STATE_H__

#include "TTDictionary.h"

/**	The #TTState class inherits from #TTDictionary to handle the state of #TTObject.
 
 @see TTDictionary, TTObject
 */
class TTState : public TTDictionary
{
public :
    
	TTState(TTSymbol name);
    ~TTState();
    
    /** Append an attribute to the state
	 @param element             #TTSymbol attribute to handle
	 @return					#kTTErrNone.
	 */
    TTErr appendAttribute(const TTSymbol& attribute);
    
    /** Remove an attribute from the state
	 @param element             #TTSymbol attribute to not handle
	 @return					#kTTErrNone.
	 */
    TTErr removeAttribute(const TTSymbol& attribute);
    
    /** Append a state to the state
	 @param state               #TTState to append
	 @return					#kTTErrNone.
	 */
    TTErr appendState(const TTState& state);
    
    /** Remove a state from the state
	 @param state               #TTState to remove
	 @return					#kTTErrNone.
	 */
    TTErr removeState(const TTState& state);
    
    /** Store values
	 @return					#kTTErrNone.
	 */
    TTErr store();
    
    /** Recall values
	 @return					#kTTErrNone.
	 */
    TTErr recall();
};

typedef TTState* TTStatePtr;

#endif // __STATE_H__
