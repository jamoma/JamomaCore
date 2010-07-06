#include "Coordinate.h"

Coordinate::Coordinate(Namespace* nsp)
{
	radius = 0.0;
	azimuth = 0.0;

	nsp->namespaceParameterCreate("/coordinates/polar/radius", this);
	nsp->namespaceParameterCreate("/coordinates/polar/azimuth", this);

}

Coordinate::~Coordinate(void)
{
}
