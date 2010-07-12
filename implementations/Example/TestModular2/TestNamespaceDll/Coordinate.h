#ifndef Coordinate_H
#define Coordinate_H
#pragma once

#include "Namespace.h"

class Coordinate
{
public:
	Coordinate(Namespace* nsp);
	~Coordinate(void);

private:
	float radius;
	float azimuth;
};

#endif /*Coordinate_H*/