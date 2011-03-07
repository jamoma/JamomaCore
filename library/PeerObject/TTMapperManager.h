/* 
 * A MapperManager Object
 * Copyright © 2010, Laurent Garnier
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD
 */

#ifndef __TT_MAPPER_MANAGER_H__
#define __TT_MAPPER_MANAGER_H__

#include "TTModular.h"

/**	For now the TTMapperManager allows to instanciate several TTMappers by reading a xml mapping
 *  configuration file using a TTXmlHandler
 *  TODO : writeAsText/readFromText
 */

class TTMapper;
typedef TTMapper* TTMapperPtr;

class TTXmlHandler;
typedef TTXmlHandler* TTXmlHandlerPtr;

class TTMODULAR_EXPORT TTMapperManager : public TTDataObject
{
	TTCLASS_SETUP(TTMapperManager)
	
public:
	
	TTSymbolPtr			mAddress;						///< ATTRIBUTE : the address of the mapper manager in the directory

private:
	
	TTApplicationPtr	mApplication;					///< the application
	TTListPtr			mMapperList;					///< a list containing <TTMapperPtr>
	
public:
	
	TTErr New();
	
private :
	
	/**  needed to be handled by a TTXmlHandler */
	TTErr WriteAsXml(const TTValue& value);
	TTErr ReadFromXml(const TTValue& value);

	/** A setter for the address attribute */
	TTErr setAddress(const TTValue& value);

};

typedef TTMapperManager* TTMapperManagerPtr;

#endif // __TT_MAPPER_MANAGER_H__
