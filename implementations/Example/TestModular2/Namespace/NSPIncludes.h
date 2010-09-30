#include "TTModular.h"

#define NSPValue				TTValue
#define NSPSymbol				TTSymbolPtr
#define NSPLog					TTLogMessage

#define NSPType_ARRAY			kTTSym_array
#define NSPType_BOOL			kTTSym_boolean
#define NSPType_INT				kTTSym_integer
#define NSPType_FLOAT			kTTSym_decimal
#define NSPType_STRING			kTTSym_string
#define NSPType_GENERIC			kTTSym_generic

#define NSPAttr_VAL				kTTSym_Value
#define NSPAttr_DEFAULT			kTTSym_ValueDefault
#define NSPAttr_TYPE			kTTSym_Type
#define NSPAttr_RANGE			kTTSym_RangeBounds
#define NSPAttr_RANGECLIPMODE	kTTSym_RangeClipmode
#define NSPAttr_STEP			kTTSym_ValueStepsize
#define NSPAttr_PRIORITY		kTTSym_Priority
#define NSPAttr_DESCRIPTION		kTTSym_Description
#define NSPAttr_REPETITION		kTTSym_RepetitionsAllow
#define NSPAttr_READONLY		kTTSym_Readonly

#define NSPTask_CREATE			kTTSym_Created
#define NSPTask_DESTROY			kTTSym_Destroyed
