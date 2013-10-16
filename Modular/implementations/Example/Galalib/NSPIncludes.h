#include "TTModular.h"

#define NSPValue				TTValue
#define NSPSymbol				TTSymbolPtr
#define NSPLog					TTLogMessage

#define NSPType_ARRAY			kTTSym_array
#define NSPType_BOOL			kTTSym_boolean
#define NSPType_INT				kTTSym_integer
#define NSPType_FLOAT			kTTSym_decimal
#define NSPType_STRING			kTTSym_string
#define NSPType_PATH			kTTSym_string
#define NSPType_GENERIC			kTTSym_generic

#define NSPAttr_VAL				kTTSym_value
#define NSPAttr_DEFAULT			kTTSym_valueDefault
#define NSPAttr_TYPE			kTTSym_type
#define NSPAttr_RANGE			kTTSym_rangeBounds
#define NSPAttr_RANGECLIPMODE	kTTSym_rangeClipmode
#define NSPAttr_STEP			kTTSym_valueStepsize
#define NSPAttr_PRIORITY		kTTSym_priority
#define NSPAttr_DESCRIPTION		kTTSym_description
#define NSPAttr_REPETITION		kTTSym_repetitionsFilter
#define NSPAttr_READONLY		kTTSym_readonly
#define NSPAttr_DYNAMIC			TTSymbol("dynamicInstances")
#define NSPAttr_INSTANCEBOUNDS  TTSymbol("instanceBounds")

#define NSPTask_CREATE			kTTSym_created
#define NSPTask_DESTROY			kTTSym_destroyed

#define NSPDirectory			TTApplicationGetDirectory(TTObjectPtr(GalamusApplication))
