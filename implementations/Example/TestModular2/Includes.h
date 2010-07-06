#include "TTModular.h"

#define NSPValue				TTValue
#define NSPSymbol				TTSymbolPtr

#define NSPType_ARRAY			kTTSym_array
#define NSPType_BOOL			kTTSym_boolean
#define NSPType_INT				kTTSym_integer
#define NSPType_FLOAT			kTTSym_decimal
#define NSPType_STRING			kTTSym_string

#define NSPAttr_VAL				kTTSym_Value
#define NSPAttr_DEFAULT			kTTSym_ValueDefault
#define NSPAttr_TYPE			kTTSym_Type
#define NSPAttr_RANGE			kTTSym_RangeBounds
#define NSPAttr_STEP			kTTSym_ValueStepsize
#define NSPAttr_PRIORITY		kTTSym_Priority
#define NSPAttr_DESCRIPTION		kTTSym_Description

#define NSPTask_CREATE			kTTSym_created
#define NSPTask_DESTROY			kTTSym_destroyed