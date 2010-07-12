#include "Coordinate.h"

Coordinate::Coordinate(Namespace* nsp)
{
	radius = 0.0;
	azimuth = 0.0;

	nsp->namespaceParameterCreate("/coordinates/polar/radius", this);
	nsp->namespaceParameterCreate("/coordinates/polar/azimuth", this);

	nsp->namespaceParameterCreate("/zoom/enabled", this);
	nsp->namespaceAttributeSet("/zoom/enabled", NSPAttr_TYPE, NSPType_BOOL);
	nsp->namespaceAttributeSet("/zoom/enabled", NSPAttr_DEFAULT, true);

}

Coordinate::~Coordinate(void)
{
}
