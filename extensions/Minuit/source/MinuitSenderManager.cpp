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
    
    for (TTUInt8 i = 0; i < keys.size(); i++) {
        key = keys[i];
        
        mSenders->lookup(key, v);
        anObject = TTObjectPtr((TTPtr)v[0]);
        
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
        
        lastObject = TTObjectPtr((TTPtr)last[0]);
        lastIp = last[1];
        lastPort = last[2];
        
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