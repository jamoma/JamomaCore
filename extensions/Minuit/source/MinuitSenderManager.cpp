/*
 * A OSC send object manager
 * Copyright © 2013, Théo de la Hogue
 *
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "MinuitSenderManager.h"

MinuitSenderManager::MinuitSenderManager()
{
    mSenders = new TTHash();
}

MinuitSenderManager::~MinuitSenderManager()
{
    TTValue     keys, v;
    TTSymbol    key;
    TTObjectPtr anObject;
    
    mSenders->getKeys(keys);
    
    for (TTUInt8 i = 0; i < keys.getSize(); i++) {
        keys.get(i, key);
        
        mSenders->lookup(key, v);
        v.get(0, (TTPtr*)&anObject);
        
        TTObjectRelease(TTObjectHandle(&anObject));
    }
    
	delete mSenders;
}

TTObjectPtr MinuitSenderManager::lookup(TTSymbol applicationName, TTSymbol ip, TTUInt16 port)
{
    TTValue     last, v;
    TTObjectPtr lastObject = NULL;
    TTSymbol    lastIp;
    TTUInt16    lastPort;
    TTErr       err;
    
    err = mSenders->lookup(applicationName, last);
    
    if (err)
        return this->add(applicationName, ip, port);
    
    else {
        
        last.get(0, (TTPtr*)&lastObject);
        last.get(1, lastIp);
        last.get(2, lastPort);
        
        if (lastIp == ip && lastPort == port)
            ;
        
        else {
            
            v.append((TTPtr)lastObject);
            v.append(ip);
            v.append(port);
            
            mSenders->remove(applicationName);
            mSenders->append(applicationName,v);
        }
    }
    
    return lastObject;
}

TTObjectPtr MinuitSenderManager::add(TTSymbol applicationName, TTSymbol ip, TTUInt16 port)
{
    TTValue     v;
    TTObjectPtr anObject = NULL;
    TTErr       err;
    
    err = TTObjectInstantiate(TTSymbol("osc.send"), &anObject, kTTValNONE);
    if (!err) {
        anObject->setAttributeValue(TTSymbol("address"), ip);
        anObject->setAttributeValue(TTSymbol("port"), port);
        
        v.append((TTPtr)anObject);
        v.append(ip);
        v.append(port);
        
        mSenders->append(applicationName, v);
    }
    
    return anObject;
}