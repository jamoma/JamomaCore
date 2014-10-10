/** @file
 *
 * @ingroup modularWebSocket
 *
 * @brief A WebSocket send object manager
 *
 * @details
 *
 * @authors Théo de la Hogue, Laurent Garnier
 *
 * @copyright Copyright © 2013, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "WebSocketSenderManager.h"

WebSocketSenderManager::WebSocketSenderManager()
{}

WebSocketSenderManager::~WebSocketSenderManager()
{}

TTObject WebSocketSenderManager::lookup(TTSymbol applicationName)
{
    TTValue  last, v;
    TTObject lastObject;
    TTErr    err;
    
    err = mSenders.lookup(applicationName, last);
    
    if (err)
        return this->add(applicationName);
    
    else {
        
        lastObject = last[0];
            
        v.append(lastObject);
            
        mSenders.remove(applicationName);
        mSenders.append(applicationName, v);
    }
    
    return lastObject;
}

TTObject WebSocketSenderManager::add(TTSymbol applicationName)
{
    TTValue     v;
    TTObject    anObject("web.send");
    
    v.append(anObject);
    
    mSenders.append(applicationName, v);
    
    return anObject;
}