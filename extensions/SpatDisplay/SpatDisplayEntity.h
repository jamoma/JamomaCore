/* 
 * SpatDisplay
 * Extension Class for Jamoma DSP
 * Copyright © 2009, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTBlueAPI.h"
#include "TTGraphicsContext.h"


enum SpatDisplayEntityType {
	kSpatTypeUnknown = 0,
	kSpatTypeSource,
	kSpatTypeMicrophone,
	kSpatTypeLoudspeaker
};


class SpatDisplay; // forward decl


/**	An entity within the SpatDisplay that is located in 3d space. 
	Examples include mic positions, source locations, and speaker coords. 
 
	@remark		IMPORTANT: This object is not really a TTObject -- we only 
				inherit from TTObject because we are creating attrs for the owning SpatDisplay.
 */
class SpatDisplayEntity : TTElement {

public:
	TTFloat64				x;				///< x
	TTFloat64				y;				///< y 
	TTFloat64				z;				///< z  
	TTFloat64				yaw;			///< rotation on the horizontal plane
	TTFloat64				pitch;			///< rotation on the z axis
	TTFloat64				directivity;	///< how directional is the entity
	TTFloat64				intensity;		///< the intensity of the signal for the entity
	SpatDisplayEntityType	type;			///< what kind of entity
	SpatDisplay*			owner;			///< SpatDisplay in which we are embedded
	TTSymbolPtr				name;			///< name of this entity, used for creating attributes

	
	SpatDisplayEntity(SpatDisplay* entityOwner, TTSymbolPtr entityName);

	TTErr setx(const TTValue& newValue);
	TTErr getx(TTValue& returnedValue);
	TTErr sety(const TTValue& newValue);
	TTErr gety(TTValue& returnedValue);
	TTErr setz(const TTValue& newValue);	
	TTErr getz(TTValue& returnedValue);
	
};

