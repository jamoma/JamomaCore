/** @file
 *
 * @ingroup modularOSC
 *
 * @brief An OSC send object manager
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2013, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "OSCSenderManager.h"

OSCSenderManager::OSCSenderManager()
{
    mSenders = new TTHash();
}

OSCSenderManager::~OSCSenderManager()
{
    TTValue     keys, v;
    TTSymbol    key;
    TTObjectBasePtr anObject;
    
    mSenders->getKeys(keys);
    
    for (TTUInt8 i = 0; i < keys.size(); i++) {
        key = keys[i];
        
        mSenders->lookup(key, v);
        anObject = v[0];
        
        TTObjectBaseRelease(TTObjectBaseHandle(&anObject));
    }
    
	delete mSenders;
}

TTObjectBasePtr OSCSenderManager::lookup(TTSymbol applicationName, TTSymbol ip, TTUInt16 port)
{
    TTValue     last, v;
    TTObjectBasePtr lastObject = NULL;
    TTSymbol    lastIp;
    TTUInt16    lastPort;
    TTErr       err;
    
    err = mSenders->lookup(applicationName, last);
    
    if (err)
        return this->add(applicationName, ip, port);
    
    else {
        
        lastObject = last[0];
        lastIp = last[1];
        lastPort = last[2];
        
        if (lastIp == ip && lastPort == port)
            ;
        
        else {
            
            v.append(lastObject);
            v.append(ip);
            v.append(port);
            
            mSenders->remove(applicationName);
            mSenders->append(applicationName,v);
        }
    }
    
    return lastObject;
}

TTObjectBasePtr OSCSenderManager::add(TTSymbol applicationName, TTSymbol ip, TTUInt16 port)
{
    TTValue     v;
    TTObjectBasePtr anObject = NULL;
    TTErr       err;
    
    err = TTObjectBaseInstantiate(TTSymbol("osc.send"), &anObject, kTTValNONE);
    if (!err) {
        anObject->setAttributeValue(TTSymbol("address"), ip);
        anObject->setAttributeValue(TTSymbol("port"), port);
        
        v.append(anObject);
        v.append(ip);
        v.append(port);
        
        mSenders->append(applicationName, v);
    }
    
    return anObject;
}