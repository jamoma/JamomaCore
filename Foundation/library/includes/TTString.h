/*
 Jamoma Class for representing strings
 Copyright © 2012, Timothy Place & Théo Delahogue

 License: This code is licensed under the terms of the "New BSD License"
 http://creativecommons.org/licenses/BSD/
 */

#pragma once

#include "TTBase.h"

using TTString = std::string;

/** Replace contents with a pseudo-random string. */
std::string TTFOUNDATION_EXPORT TTGenerateRandomString();

// TODO: These conversions seem a bit misguided, but are being maintained momentarily for backward compatibility.
// Should be replaced with standard calls like std::stoi() and friends.

TTBoolean TTFOUNDATION_EXPORT TTStringToTTInt32(const std::string s, TTInt32& convertedInt);
TTBoolean TTFOUNDATION_EXPORT TTStringToTTUInt32(const std::string s, TTUInt32& convertedUInt);
TTBoolean TTFOUNDATION_EXPORT TTStringToTTFloat32(const std::string s, TTFloat32& convertedFloat);
