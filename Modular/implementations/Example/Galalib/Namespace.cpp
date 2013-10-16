/* 
 * Namespace.cpp v0.1
 * interface for creating and managing namespaces
 *
 * Based on TTModular & TTFoundation libraries developped by Theo de la Hogue & Tim Place
 * and DeviceManager developped by Laurent Garnier & Theo de la Hogue, copyright LaBRI - Blue Yeti - GMEA
 *
 * Author: Laurent Garnier, 2010
 *
 * Copyright Galamus Software. All rights reserved.
 *
 */

#include "Namespace.h"

#define PLUGINS_PATH					"DeviceManager/Plugins"
#define XML_CONFIG_PATH					"DeviceManager/Config.xml"

#define XML_VERSION						"1.0"
#define XML_ENCODING					/*"UTF-8"*/"ISO-8859-1"
#define XML_STANDALONE					"yes"
 
#define XML_NSP_HEADER_NODE_NAME		"namespaceXML"
#define XML_NSP_VERSION					"0.0.1"
#define XML_NSP_SCHEMA_INSTANCE			"http://www.w3.org/2001/XMLSchema-instance"
#define XML_NSP_SCHEMA_LOCATION			"http://www.galamus-software.fr/ file:namespaceXML_0_0_1.xsd"

#define XML_MAPPING_HEADER_NODE_NAME	"mappingXML"
#define XML_MAPPING_VERSION				"0.0.1"
#define XML_MAPPING_SCHEMA_LOCATION		"http://www.galamus-software.fr/ file:mappingXML_0_0_1.xsd"

#define XML_PRESET_HEADER_NODE_NAME		"presetXML"
#define XML_PRESET_VERSION				"0.0.1"
#define XML_PRESET_SCHEMA_LOCATION		"http://www.galamus-software.fr/ file:presetXML_0_0_1.xsd"

#define ATTR_TYPE						"type"
#define ATTR_RANGE_MIN					"rangeBoundMin"
#define ATTR_RANGE_MAX					"rangeBoundMax"


static std::string AppName = "/";
TTApplicationPtr GalamusApplication = NULL;

Namespace::Namespace(std::string appName, std::string appVersion, std::string creatorName)
{
	m_appName = appName;
	m_appVersion = appVersion;
	m_creatorName = creatorName;
	
	AppName += appName;
}

Namespace::~Namespace() {}

NSPStatus
Namespace::namespaceInit(bool useDeviceManager)
{
	// Initialise TT environments
	TTModularInit(m_appName, "");
	
	GalamusApplication = (TTApplicationPtr)TTModularGetApplication(TT(m_appName));
	
	if (NSPDirectory == NULL) {
		return NSP_INIT_ERROR;
	}

	if (useDeviceManager) {
		// Initialise DeviceManager if wanted
		/*TTDeviceManagerPtr */m_deMan = NULL;
		TTValue	args;
		
		// Make a TTDeviceManager object
		args.append(GalamusApplication);
		args.append(TT(m_appName));
		
		TTObjectInstantiate(TTSymbol("DeviceManager"), TTObjectHandle(&m_deMan), args);
		
		// Load plugins and config with xml
		TTValue value;
		value.append(TT(PLUGINS_PATH));
		value.append(TT(XML_CONFIG_PATH));
		m_deMan->LoadPlugins(value);

		// Load devices with xml
		m_deMan->LoadDeviceXmlConfig(TT(XML_CONFIG_PATH));
	}

	return NSP_NO_ERROR;
}

NSPStatus
Namespace::namespaceFree(void)
{
	if(TTObjectRelease(TTObjectHandle(NSPDirectory)) != kTTErrNone) {
		return NSP_RELEASE_ERROR;
	}

	return NSP_NO_ERROR;
}

NSPStatus
Namespace::namespaceParameterCreate(std::string address, int instanceNumber, void* object, void (*returnValueCallback)	(TTPtr, TTValue&)
																  						 , void (*returnAddressCallback)(TTPtr, TTValue&))
{
	// Create a TTData
	TTDataPtr		data = NULL;
	TTCallbackPtr	p_returnValueCallback, p_returnAddressCallback;
	TTValuePtr		p_returnValueBaton, p_returnAddressBaton;
	
	// prepare arguments : see TTData.h to know which args are needed
	TTValue args;
	args.clear();
	
	p_returnValueCallback = NULL;
	TTObjectInstantiate(TTSymbol("callback"), TTObjectHandle(&p_returnValueCallback), kTTValNONE);
	p_returnValueBaton = new TTValue(TTPtr(object));
	p_returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(p_returnValueBaton));
	p_returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(returnValueCallback));
	args.append(p_returnValueCallback);

	p_returnAddressCallback = NULL;
	TTObjectInstantiate(TTSymbol("callback"), TTObjectHandle(&p_returnAddressCallback), kTTValNONE);
	p_returnAddressBaton = new TTValue(TTPtr(object));
	p_returnAddressCallback->setAttributeValue(kTTSym_baton, TTPtr(p_returnAddressBaton));
	p_returnAddressCallback->setAttributeValue(kTTSym_function, TTPtr(p_returnAddressCallback));
	args.append(p_returnAddressCallback);

	// Register a TTObject into the NSPDirectory
	TTNodePtr	returnedNode;
	TTBoolean	newInstanceCreated;

	for (int i = 0; i < instanceNumber; i++) { 
		data				= NULL;
		returnedNode		= NULL;
		newInstanceCreated	= NULL;

		// create an instance of TTData
		TTObjectInstantiate(TTSymbol("Data"), TTObjectHandle(&data), args);

		std::string absAddress = AppName + address;
		// add instance number
		if (i != 0) {
			absAddress += ".";
			stringstream st;
			st << i;
			absAddress += st.str();
		}

		// add the parameter data in the namespace directory
		NSPDirectory->TTNodeCreate(TT(absAddress), (TTObjectPtr)data, NULL, &returnedNode, &newInstanceCreated);
		// note : our myRegistrationObserver is informed if declared 
	}

	return NSP_NO_ERROR;
}

NSPStatus 
Namespace::namespaceAttributeSet(std::string address, TTSymbolPtr attribute, TTValue value, int instance)
{
	TTErr		err, err1;
	TTList		returnedTTNodes;
	TTNodePtr	firstReturnedTTNode;

	if (NSPDirectory) {
		// add Application name to the address
		std::string absAddress = AppName + address;

		// add instance number
		if (instance != 0) {
			absAddress += ".";
			stringstream st;
			st << instance;
			absAddress += st.str();
		}

		err = NSPDirectory->Lookup(TT(absAddress), returnedTTNodes, &firstReturnedTTNode);

		if (err != kTTErrNone) {
			return NSP_INVALID_ADDRESS;
		}

		TTObjectPtr param = firstReturnedTTNode->getObject();

		if (param != NULL) {
			err1 = param->setAttributeValue(attribute, value);
		}

		if (err1 != kTTErrNone) {
			return NSP_INVALID_ATTRIBUTE;
		}

		return NSP_NO_ERROR;
	}

	return NSP_INIT_ERROR;
}

NSPStatus 
Namespace::namespaceAttributeGet(std::string address, TTSymbolPtr attribute, TTValue& value, int instance)
{
	TTList			aNodeList;
	TTNodePtr		aNode;
	TTErr			err;

	// add Application name to the address
	std::string absAddress = AppName + address;

	// add instance number
	if (instance != 0) {
		absAddress += ".";
		stringstream st;
		st << instance;
		absAddress += st.str();
	}

	// get the node which represent our data at the given address
	err = NSPDirectory->Lookup(TT(absAddress), aNodeList, &aNode);

	if (err != kTTErrNone) {
		//TTLogMessage("Invalid address \n");
		return NSP_INVALID_ADDRESS;
	}

	// get the object stored in the node
	TTObjectPtr anObject = aNode->getObject();

	// get the attribute value of the data
	value.clear();
	err = anObject->getAttributeValue(attribute, value);
	if (err != kTTErrNone) {
		return NSP_INVALID_ATTRIBUTE;
	}

	return NSP_NO_ERROR;
}

NSPStatus 
Namespace::namespaceObserverCreate(std::string address, TTSymbolPtr attribute, void* object, void (*returnValueCallback)	(TTPtr, TTValue&)
																						   , void (*returnAddressCallback)	(TTPtr, TTValue&)
																						   , int instance)
{
	TTReceiverPtr	myReceiver = NULL;
	TTCallbackPtr	r_returnAddressCallback; 
	TTCallbackPtr	r_returnValueCallback;
	TTValuePtr		r_returnAddressBaton, r_returnValueBaton;
	
	// prepare arguments : see TTReceiver.h to know which args are needed
	TTValue args;
	args.clear();
	args.append(GalamusApplication);

	// add Application name to the address
	std::string absAddress = AppName + address;

	// add instance number
	if (instance != 0) {
		absAddress += ".";
		stringstream st;
		st << instance;
		absAddress += st.str();
	}

	args.append(TT(absAddress));
	args.append(attribute);
		
	r_returnAddressCallback = NULL;
	TTObjectInstantiate(TTSymbol("callback"), TTObjectHandle(&r_returnAddressCallback), kTTValNONE);
	r_returnAddressBaton = new TTValue(TTPtr(object));
	r_returnAddressCallback->setAttributeValue(kTTSym_baton, TTPtr(r_returnAddressBaton));
	r_returnAddressCallback->setAttributeValue(kTTSym_function, TTPtr(returnAddressCallback));
	args.append(r_returnAddressCallback);
	
	r_returnValueCallback = NULL;
	TTObjectInstantiate(TTSymbol("callback"), TTObjectHandle(&r_returnValueCallback), kTTValNONE);
	r_returnValueBaton = new TTValue(TTPtr(object));
	r_returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(r_returnValueBaton));
	r_returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(returnValueCallback));
	args.append(r_returnValueCallback);
		
	TTObjectInstantiate(TTSymbol("Receiver"), TTObjectHandle(&myReceiver), args);

	return NSP_NO_ERROR;
}

NSPStatus 
Namespace::namespaceValueSend(std::string address, TTSymbolPtr attribute, TTValue value, int instance)
{
	TTSenderPtr	sender = NULL;
	
	// prepare arguments : see TTSender.h to know which args are needed
	TTValue args;
	args.clear();
	args.append(GalamusApplication);

	// add Application name to the address
	std::string absAddress = AppName + address;

	// add instance number
	if (instance != 0) {
		absAddress += ".";
		stringstream st;
		st << instance;
		absAddress += st.str();
	}

	args.append(TT(absAddress));
	args.append(attribute);
		
	TTObjectInstantiate(TTSymbol("Sender"), TTObjectHandle(&sender), args);

	sender->sendMessage(kTTSym_Send, value);
	// note : the value is returned by the Data and the Receiver

	//TTObjectRelease(TTObjectHandle(&sender));// throw an exception on windows

	return NSP_NO_ERROR;
}

void addAttributeToXml(TTObjectPtr param, XMLNode xmlNode, TTSymbolPtr attrName)
{
	TTValue		v, vDescr;
	TTString	s;
	TTSymbolPtr descr;

	// get the Value of an attribute and format to string
	v.clear();
	param->getAttributeValue(attrName, v);

	param->getAttributeValue(kTTSym_description, vDescr);
	vDescr.get(0, &descr);
 
	if (attrName == kTTSym_type && descr == TTSymbol("filepath")) {
		xmlNode.addAttribute_(attrName->getCString(), "filepath");
	} else {
		v.toString();
		v.get(0, s);
		// add this attribute in xml tree
		xmlNode.addAttribute_(attrName->getCString(), s.data());
	}
}

// method to extract a substring safely
char *str_sub (const char *s, unsigned int start, unsigned int end)
{
   char *new_s = NULL;

   if (s != NULL && start < end) {
      new_s = (char*) malloc (sizeof (*new_s) * (end - start + 2));
      if (new_s != NULL) {
         unsigned int i;

         for (i = start; i <= end; i++) {
            new_s[i-start] = s[i];
         }
         new_s[i-start] = '\0';
      }
      else {
         fprintf (stderr, "Memoire insuffisante\n");
         exit (EXIT_FAILURE);
      }
   }
   return new_s;
}

void snapshot(XMLNode xmlNode, TTNodePtr ttNode)
{
	TTSymbolPtr OSCaddress;
	TTValue		v, attributeNames;
	TTList		childList;
	TTNodePtr	p_node;
	TTString	s;
	
	ttNode->getOscAddress(&OSCaddress);
	ttNode->getChildren(S_WILDCARD, S_WILDCARD, childList);
	
	const char* address = OSCaddress->getCString();
	char* nodeName;
	
	XMLNode childNode = xmlNode;
	
	// don't write the first node AppName in xml because already written in application xml header
	// don't write the node name if is an instance, don't want it in xml file, replaced by dynamic instances attribute
	if (strcmp(address, AppName.c_str()) != 0 && strrchr(address, '.') == NULL) {
		
		// get the substring representing the last node name
		if (strlen(address) > 1) {
			const char* c = strrchr(address, '/');
			int start = c-address+1;
			int end = strlen(address)-1;
			nodeName = str_sub(address, start, end);

			childNode = xmlNode.addChild(nodeName);
		}
		
		if (childList.isEmpty()) {
			
			// get the Data object of the Node
			TTObjectPtr param = ttNode->getObject(); 
			
			if (param != NULL) {
				
				addAttributeToXml(param, childNode, kTTSym_type);
				addAttributeToXml(param, childNode, kTTSym_valueDefault);
				addAttributeToXml(param, childNode, kTTSym_rangeBounds);
				addAttributeToXml(param, childNode, kTTSym_rangeClipmode);
				addAttributeToXml(param, childNode, kTTSym_valueStepsize);
				addAttributeToXml(param, childNode, TTSymbol("dynamicInstances"));
				addAttributeToXml(param, childNode, TTSymbol("instanceBounds"));
				addAttributeToXml(param, childNode, kTTSym_priority);
				addAttributeToXml(param, childNode, kTTSym_description);
				addAttributeToXml(param, childNode, kTTSym_repetitionsFilter);
				addAttributeToXml(param, childNode, kTTSym_readonly);
			}
		}
	}
	
	// repeat recursively for each child
	for (childList.begin(); childList.end(); childList.next()) {
		childList.current().get(0,(TTPtr*)&p_node);
		snapshot(childNode, p_node);
	}
}

NSPStatus 
Namespace::namespaceSaveToXml(std::string filepath)
{
	// add xml header
	XMLNode xMainNode = XMLNode::createXMLTopNode("xml", TRUE);
	xMainNode.addAttribute_("version",		XML_VERSION);
	xMainNode.addAttribute_("encoding",		XML_ENCODING);
	xMainNode.addAttribute_("standalone",	XML_STANDALONE);

	// add namespace header
	XMLNode node = xMainNode.addChild(XML_NSP_HEADER_NODE_NAME);
	node.addAttribute_("version",			 XML_NSP_VERSION);
	node.addAttribute_("xmlns:xsi",			 XML_NSP_SCHEMA_INSTANCE);
	node.addAttribute_("xsi:schemaLocation", XML_NSP_SCHEMA_LOCATION);
	
	// add application header 
	XMLNode appHeader = node.addChild(m_appName.data());
	appHeader.addAttribute_("appName",		m_appName.data());
	appHeader.addAttribute_("appVersion",	m_appVersion.data());
	appHeader.addAttribute_("creatorName",	m_creatorName.data());
	
	TTNodePtr root = NSPDirectory->getRoot();
	
	// recursive method to get the namespace and build the xml tree
	snapshot(appHeader, root);
	
	// write the datas in xml file
	xMainNode.writeToFile(filepath.c_str(), XML_ENCODING);

	return NSP_NO_ERROR;
}

void 
Namespace::parseXmlParameters(XMLNode xmlNode, std::string address)
{
	int nChild = xmlNode.nChildNode();

	// for each child of the node
	for (int i = 0; i < nChild; i++) {
		XMLNode child = xmlNode.getChildNode(i);

		const char* childName = child.getName();
		std::string name = (std::string)childName;

		std::string absoluteAddress;
		if (address == "/")
			absoluteAddress = address + name;
		else
			absoluteAddress = address + "/" + name;

		// check if it is a Data i.e. a leaf
		if (child.nChildNode() == 0) {
			
			// Remove /"appName" which starts the absolute address because automatically added by Galalib
			std::string absoluteAddressWithoutAppName = absoluteAddress.substr(m_appName.size() + 1);

			// create the Data in the namespace tree
			namespaceParameterCreate(absoluteAddressWithoutAppName);

			int nAttrChild = child.nAttribute();

			const char* type = child.getAttribute(ATTR_TYPE);
			if (strcmp(type, "filepath") == 0)
				type = "string";
			
			// get all it attributes
			TTValue value;
			for (int j = 0; j < nAttrChild; j++) {

				const char* attrName = child.getAttributeName(j);
				
				value.clear();
				
				// convert attribute values from const char* to their real types
				if (   strcmp(attrName, NSPAttr_TYPE->getCString())			== 0 
					|| strcmp(attrName, NSPAttr_RANGE->getCString())		== 0
					|| strcmp(attrName, NSPAttr_PRIORITY->getCString())		== 0 
					|| strcmp(attrName, NSPAttr_DESCRIPTION->getCString())  == 0
					|| strcmp(attrName, NSPAttr_RANGECLIPMODE->getCString())== 0) 
				{

					const char* val = child.getAttributeValue(j);
					if (strcmp(val, "filepath") == 0)
						val = "string";
					// converted to TTSymbolPtr passed to TTValue constructor
					value = TTValue(TT(val));
					
				}
				if (   strcmp(attrName, NSPAttr_DEFAULT->getCString())		== 0 
					|| strcmp(attrName, NSPAttr_STEP->getCString())			== 0
					|| strcmp(attrName, NSPAttr_REPETITION->getCString())	== 0
					|| strcmp(attrName, NSPAttr_READONLY->getCString())		== 0)
				{

					const char* val = child.getAttributeValue(j);

					if (strncmp(type, NSPType_FLOAT->getCString(), 3)		== 0) {
						double tmp = atof(val);
						value = TTValue(tmp);
					} 
					else if (strncmp(type, NSPType_INT->getCString(), 3)	== 0) {
						int tmp = atoi(val);
						value = TTValue(tmp);
					}
					else if (strncmp(type, NSPType_BOOL->getCString(), 3)	== 0) {
						bool tmp = (atoi(val) == 1); 
						value = TTValue(tmp);
					}
					else if (strncmp(type, NSPType_STRING->getCString(), 3)	== 0) {
						value = TTValue(TT(val));
					}
					else if (strncmp(type, NSPType_GENERIC->getCString(), 3) == 0) {
						void* tmp = (void*)val;
						value = TTValue(tmp);
					}
					//TODO : NSPType_ARRAY
				}

				// Init the attribute in the namespace tree
				namespaceAttributeSet(absoluteAddressWithoutAppName, TT(attrName), value);
				// Init the value attribute with the valueDefault attribute
				if (strcmp(attrName, NSPAttr_DEFAULT->getCString())	== 0) {
					namespaceAttributeSet(absoluteAddressWithoutAppName, NSPAttr_VAL, value);
				}
			} 
		} else {
			// if not a Data call it recursively for each child
			parseXmlParameters(child, absoluteAddress);
		}
	}
}

NSPStatus 
Namespace::namespaceLoadFromXml(std::string filepath)
{
	XMLNode xMainNode;
	XMLError err = XMLNode::openFileHelper(&xMainNode, filepath.c_str(), XML_NSP_HEADER_NODE_NAME);

	if (err == eXMLErrorFileNotFound)
		return NSP_FILE_NOTFOUND;
	if (err == eXMLErrorFirstTagNotFound)
		return NSP_XMLPARSING_ERROR;

	std::string address = "/";
	parseXmlParameters(xMainNode, address);

	return NSP_NO_ERROR;
}

NSPStatus 
Namespace::namespaceMappingLoadFromXml(std::string filepath)
{
	// Parse xml file to instantiate TTData for each input 
	XMLNode xMainNode;
	XMLError err = XMLNode::openFileHelper(&xMainNode, filepath.c_str(), XML_MAPPING_HEADER_NODE_NAME);
	
	if (err == eXMLErrorFileNotFound)
		return NSP_FILE_NOTFOUND;
	if (err == eXMLErrorFirstTagNotFound)
		return NSP_XMLPARSING_ERROR;
	
	int nChild = xMainNode.nChildNode();
	
	// For each child of the node create a mapping parameter according to the input attribute
	for (int i = 0; i < nChild; i++) {
		XMLNode child = xMainNode.getChildNode(i);
		namespaceParameterCreate(child.getAttribute("input"), NULL);
	}
	
	// Instanciate a MapperManager
	TTValue				args, v;
	TTMapperManagerPtr	returnedMapperManager	= NULL;
	TTXmlHandlerPtr		aXmlHandler				= NULL;
	
	args.append(GalamusApplication);
	TTObjectInstantiate(TTSymbol("MapperManager"),	TTObjectHandle(&returnedMapperManager), args);
	
	// Instanciate a XmlHandler
	args.clear();
	TTObjectInstantiate(TTSymbol("XmlHandler"),		TTObjectHandle(&aXmlHandler),			args);
	
	// Set XmlHandler being used by MapperManager
	v = TTValue(TTPtr(returnedMapperManager));
	aXmlHandler->setAttributeValue(kTTSym_object, v);
	aXmlHandler->setAttributeValue(TTSymbol("headerNodeName"),	TT(XML_MAPPING_HEADER_NODE_NAME));
	aXmlHandler->setAttributeValue(TTSymbol("version"),			TT(XML_MAPPING_VERSION));
	aXmlHandler->setAttributeValue(TTSymbol("xmlSchemaLocation"), TT(XML_MAPPING_SCHEMA_LOCATION));
	
	v.clear();
	v.append(TT(filepath));
	aXmlHandler->sendMessage(TTSymbol("Read"), v);//TODO : return an error code if fail
	
//	v.clear();
//	v.append(TTSymbol("writtenMapping.xml"));
//	aXmlHandler->sendMessage(TTSymbol("Write"), v);
	
	return NSP_NO_ERROR;
}

NSPStatus 
Namespace::namespacePresetsLoadFromXml(std::string filepath)
{
	TTValue				args, v, attr;
//	TTPresetManagerPtr	returnedPresetManager	= NULL;
	TTXmlHandlerPtr		aXmlHandler				= NULL;
	TTHashPtr			toStore					= new TTHash();
	TTObjectPtr			testObjectCallback;
//	TTValuePtr			testObjectBaton;
	
	// Instanciate a PresetManager
	args.append(GalamusApplication);	// add application arg
	
	testObjectCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TTSymbol("callback"),			&testObjectCallback,					kTTValNONE);
//	testObjectBaton = new TTValue(TTPtr(x));
//	testObjectCallback->setAttributeValue(kTTSym_baton, TTPtr(testObjectBaton));
//	testObjectCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_presetManager_test_object_callback));
	args.append(testObjectCallback);	// add callback method arg (we don't need here)
	
	// Here we decide to store only Value and Priority attributes for Data object
	attr = TTValue(kTTSym_value);
	attr.append(kTTSym_priority);
	//toStore->append(TTSymbol("Data"), attr);
	
	args.append((TTPtr)toStore);		// add storing hash table arg
	
	m_presetManager = NULL;
	TTObjectInstantiate(TTSymbol("PresetManager"),	TTObjectHandle(&m_presetManager), args);
	
	// Instanciate a XmlHandler
	args.clear();
	TTObjectInstantiate(TTSymbol("XmlHandler"),		TTObjectHandle(&aXmlHandler),			args);
	
	// Set XmlHandler being used by PresetManager
	v = TTValue(TTPtr(m_presetManager));
	aXmlHandler->setAttributeValue(kTTSym_object, v);
	aXmlHandler->setAttributeValue(TTSymbol("headerNodeName"),	TT(XML_PRESET_HEADER_NODE_NAME));
	aXmlHandler->setAttributeValue(TTSymbol("version"),			TT(XML_PRESET_VERSION));
	aXmlHandler->setAttributeValue(TTSymbol("xmlSchemaLocation"), TT(XML_PRESET_SCHEMA_LOCATION));
	
	v.clear();
	v.append(TT(filepath));
	aXmlHandler->sendMessage(TTSymbol("Read"), v);//TODO : return an error code if fail
	
//	TTValue tmp;
//	m_presetManager->getAttributeValue(TTSymbol("names"), tmp);
//	
//	for (int i = 0; i < tmp.getSize(); i++) {
//		TTString s;
//		tmp.toString();
//		tmp.get(i, s);
//		
//		std::cout << s << std::endl;
//	}
	
	return NSP_NO_ERROR;
}

NSPStatus 
Namespace::namespacePresetCall(std::string name)
{
	TTValue v(TT(name));
	m_presetManager->sendMessage(TTSymbol("Recall"), v);
	
	return NSP_NO_ERROR;
}

NSPStatus 
Namespace::namespacePresetCall(int number)
{
	TTValue v(number);
	m_presetManager->sendMessage(TTSymbol("Recall"), v);
	
	return NSP_NO_ERROR;
}

NSPStatus 
Namespace::namespaceDisplay(void)
{
	unsigned int i;
	TTValue hk;
	TTSymbolPtr key;

	if (NSPDirectory) {	
		NSPDirectory->getDirectory()->getKeys(hk);

		for (i = 0; i < NSPDirectory->getDirectory()->getSize(); i++) {
			hk.get(i,(TTSymbol**)&key);
			TTLogMessage("%s\n",key->getCString());
		}

		return NSP_NO_ERROR;
	}
	
	//TTLogMessage("NSPDirectory_dump : create a directory before");
	return NSP_INIT_ERROR;
}

int 
Namespace::namespaceParameterGetInstanceNumber(std::string address)
{
	TTList		returnedChildrenInstance;
	TTNodePtr	parentNode;
	std::string parentAddress, childAddress;
	
	// split the address
	size_t lastSlashPos = address.find_last_of("/");
	parentAddress		= address.substr(0, lastSlashPos);
	childAddress		= address.substr(lastSlashPos+1, std::string::npos);
	
	// get the parent node at the given address
	NSPDirectory->getTTNodeForOSC(TT(AppName + parentAddress), &parentNode);
	
	// get the list of children instances
	parentNode->getChildrenInstance(TT(childAddress), returnedChildrenInstance);
	
	return returnedChildrenInstance.getSize();
}


void Namespace::setAppName		(const  std::string _appName)		{ m_appName = _appName; }
void Namespace::setAppVersion	(const  std::string _appVersion)	{ m_appVersion = _appVersion; }
void Namespace::setCreatorName	(const  std::string _creatorName)	{ m_creatorName = _creatorName; }

std::string Namespace::getAppName()		const { return m_appName; }
std::string Namespace::getAppVersion()  const { return m_appVersion; }
std::string Namespace::getCreatorName()	const { return m_creatorName; }
