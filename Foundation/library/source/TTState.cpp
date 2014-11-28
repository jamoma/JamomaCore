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

#include "TTState.h"

#if 0
#pragma mark -
#pragma mark Constructor / Destructor
#endif

TTState::TTState(TTSymbol name) :
TTDictionary(name)
{
    setSchema("state");
    
    TTValue empty;
    append("objects", empty);
    append("order", empty);
}

TTState::~TTState()
{
    ;
}

TTErr TTState::appendAttribute(const TTSymbol& attribute)
{
    TT_ASSERT("attribute is not 'order'", attribute != TTSymbol("order"));
    
    // store empty value under attribute key into the state dictionary
    TTValue empty;
    append(attribute, empty);
    
    // append attribute key to the 'order' key value
    TTValue order;
    if (!lookup("order", order))
    {
        order.append(attribute);
        append("order", order);
    }
    
    return kTTErrNone;
}

TTErr TTState::removeAttribute(const TTSymbol& attribute)
{
    TT_ASSERT("attribute is not 'order'", attribute != TTSymbol("order"));
    
    // remove attribute key from the state dictionary
    remove(attribute);
    
    // remove attribute key from the 'order' key value
    TTValue order;
    if (!lookup("order", order))
    {
        TTValue newOrder;
        
        for (TTElementIter it = order.begin(); it != order.end(); it++)
        {
            TTSymbol key = TTElement(*it);
            if (key != attribute)
                newOrder.append(key);
        }
        
        append("order", newOrder);
    }
    
    return kTTErrNone;
}

TTErr TTState::appendState(const TTState& state)
{
    TT_ASSERT("state doesn't append itself", state.name() != name());
    
    // store the state under its name key into the state dictionary
    append(state.name(), state);
    
    // append name key to the 'order' key value
    TTValue order;
    if (!lookup("order", order))
    {
        order.append(state.name());
        append("order", order);
    }

    return kTTErrNone;
}

TTErr TTState::removeState(const TTState& state)
{
    TT_ASSERT("state doesn't remove itself", state.name() != name());
    
    // remove state name key from the state dictionary
    remove(state.name());
    
    // remove state name key from the 'order' key value
    TTValue order;
    if (!lookup("order", order))
    {
        TTValue newOrder;
        
        for (TTElementIter it = order.begin(); it != order.end(); it++)
        {
            TTSymbol key = TTElement(*it);
            if (key != state.name())
                newOrder.append(key);
        }
        
        append("order", newOrder);
    }
    
    return kTTErrNone;
}

TTErr TTState::store()
{
    TTValue objects;
    if (lookup("objects", objects))
        return kTTErrGeneric;
    
    if (!objects.size())
        return kTTErrGeneric;
    
    TTValue order;
    if (!lookup("order", order))
    {
        for (TTElementIter itOrder = order.begin(); itOrder != order.end(); itOrder++)
        {
            TTSymbol key = TTElement(*itOrder);
            TTValue value;
            if (!lookup(key, value))
            {
                // is the value a state ?
                if (value.size())
                {
                    if (value[0].type() == kTypeDictionary)
                    {
                        TTDictionary state = value[0];
                        
                        if (state.getSchema() == "state")
                        {
                            // how to cast a TTDictionary into a TTState ?
                            //state.store()
                            continue;
                        }
                    }
                }
                
                for (TTElementIter itObjects = objects.begin(); itObjects != objects.end(); itObjects++)
                {
                    TTObject object = TTElement(*itObjects);
                    object.get(key, value);
                    append(key, value);
                }
            }
        }
    }
    
    return kTTErrNone;
}

TTErr TTState::recall()
{
    TTValue objects;
    if (lookup("objects", objects))
        return kTTErrGeneric;
    
    if (!objects.size())
        return kTTErrGeneric;
    
    TTValue order;
    if (!lookup("order", order))
    {
        for (TTElementIter itOrder = order.begin(); itOrder != order.end(); itOrder++)
        {
            TTSymbol key = TTElement(*itOrder);
            TTValue value;
            if (!lookup(key, value))
            {
                // is the value a state ?
                if (value.size())
                {
                    if (value[0].type() == kTypeDictionary)
                    {
                        TTDictionary state = value[0];
                        
                        if (state.getSchema() == "state")
                        {
                            // how to cast a TTDictionary into a TTState ?
                            //state.recall()
                            continue;
                        }
                    }
                }
                
                for (TTElementIter itObjects = objects.begin(); itObjects != objects.end(); itObjects++)
                {
                    TTObject object = TTElement(*itObjects);
                    object.set(key, value);
                }
            }
        }
    }
    
    return kTTErrNone;
}