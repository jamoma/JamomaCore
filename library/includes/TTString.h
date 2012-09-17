/*
 Jamoma Class for representing strings
 Copyright © 2012, Timothy Place
 
 License: This code is licensed under the terms of the "New BSD License"
 http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_STRING_H__
#define __TT_STRING_H__

#include "TTBase.h"


/****************************************************************************************************/
// Class Specification

/**
 The TTString class is used to represent a string.
 We cannot safely pass std::string across lib boundaries, particularly on Windows with potential for differences in memory alignment.
 We also don't want to simply pass naked C-Strings for a whole host of reasons.
 
 In many cases we try to mimic the interface of std::string for ease of compatibility.
 
 
FROM http://cboard.cprogramming.com/cplusplus-programming/86598-std-vector-char-vs-std-string.html
 1. std::string has a huge number of string-related functions which make it easy to manipulate strings.
 2. std::vector, on the other hand, is guaranteed to be contiguous in memory -- that is, &data[x + 1] = &data[x] + sizeof(data[x]). std::string has NO guarantee that it is contiguous in memory.
 So, for example, say you're using an API call that fills a character buffer. You'd need to use the vector, not the string.

 
 @seealso TTSymbol
 */
class TTFOUNDATION_EXPORT TTString : public std::vector<char> {
private:
	
//	char*		mData;		///< the c-string
//	size_t		mLength;	///< the length of the c-string
//	size_t		mSize;		///< the amount of memory allocated to hold the c-string
	
	
public:
	
	/** Constructor */
	TTString(const char *aCString = "")
	{
		assign(aCString);
	}
	
	
	TTString(const std::string& aStdString)
	{
		assign(aStdString);
	}
	
	
	TTString(std::vector<char>::iterator& begin, std::vector<char>::iterator& end)
	{
		size_t size = end - begin;
		reserve(size+16);
		for (std::vector<char>::iterator c = begin; c != end; ++c) {
			push_back(*c);
		}
	}
	
	
	/** Destructor */
	~TTString()
	{}
	
	
	/** Return a pointer to the internal C-string */
	const char* c_str() const
	{
		return &this->at(0);
	}
	
	
	/** Cast to a C-string. */
	operator const char*() const
	{
		//return mData;
		return &this->at(0);
	}
	
	
	/** Assign from a C-string. */
	TTString& operator = (const char* aCString)
	{
		assign(aCString);
		return *this;
	}
	
	
	/** Assign from a std::string. */
	TTString& operator = (std::string& aStdString)
	{
		assign(aStdString);
		return *this;
	}
	
	
	/** Assign from a simple char. */
	TTString& operator = (const char aChar)
	{
		resize(1);
		at(0) = aChar;
		return *this;
	}
	
	
	/** Overload to assign from a C-string. */
	void assign(const char* aCString, size_t length=0)
	{
		if (length == 0) // no length defined, so check the c-string in the traditional way
			length = strlen(aCString);
		
		if ((length+1) >= capacity()) {
			reserve(length+16);
			resize(length);
		}
		memcpy(&this->at(0), aCString, length);
	}
	
	
	/** Assign from a std::string. */
	void assign(const std::string& aStdString)
	{
		assign(aStdString.c_str(), aStdString.length());
	}
	
	
	/** Find out the length of a string.  */
	size_t size() const
	{
		return std::vector<char>::size() - 1;
	}
	
	/** Find out the length of a string.  */
	size_t length() const
	{
		return size();
	}
	
	/** Allocate (reserve) memory for the string. */
	void resize(size_t newSize)
	{
		std::vector<char>::resize(newSize + 1);
		this->at(newSize) = 0; // NULL terminate for safety
	}
	
	
	/** Compare two strings for equality. */
//	inline friend bool operator == (const TTString& s1, const TTString& s2)
//	{
//		if (s1.size() != s2.size()) // check the length first -- this will be much faster than checking each char
//			return false;
//		else
//			return !strcmp(&s1[0], &s2[0]);
//			return !strcmp(&s1.at(0), &s2.at(0));
//	}
	
	
	/** Append / Concatenate */
	/*	TTString& operator += (const TTString& s2)
	 {
	 if (mLength+s2.mLength > mSize) {
	 TTString s1(*this);
	 
	 resize(s1.mSize+s2.mSize);
	 (*this) = s1.mData;
	 (*this) += s2;
	 }
	 else {
	 mLength = mLength+s2.mLength;
	 strncat(mData, s2.mData, mLength);
	 mData[mLength] = 0;
	 }
	 return *this;
	 }
	 */
	
	TTString& operator += (const TTString& anotherString)
	{
		if (size() + anotherString.size() > capacity())
			reserve(size() + anotherString.size() + 256);
//		for (TTString::const_iterator c = anotherString.begin(); c != anotherString.end(); ++c)
		for (auto c = anotherString.begin(); c != anotherString.end(); ++c)
			push_back(*c);
		return *this;
	}
	
	
	TTString& operator += (const char* aCString)
	{
		return (*this) += TTString(aCString);
	}
	
	
	TTString& operator += (const std::string& aStdString)
	{
//		TTString anotherString(aStdString);
//
//		(*this) += anotherString;
//		return (*this) += aStdString.c_str();
		return (*this) += TTString(aStdString);
	}
	
	
	TTString& operator += (const char c)
	{
		this->push_back(c);
		return *this;
	}
	
	
	/** Append / Concatenate */
	void append(const char *str)
	{
		(*this) += str;
	}
	
	
	const TTString operator+ (const TTString& string2) const
	{
		TTString result = *this;	// Make a copy of myself
		result += string2;			// Use += to add other to the copy.
		return result;
	}
	
	
	/** Return the index of the first instance of a specified char in the string.
		@param	aChar	The char for which to search
		@param	from	A position in the string from which to begin the search.  By default it starts at the beginning (0)
	 */
	size_t find_first_of(const char aChar, size_t from = 0)
	{
		TTBoolean	found = NO;
		size_t		i;
		
		for (i=from; i<size(); i++) {
			if (at(i) == aChar) {
				found = YES;
				break;
			}
		}
		if (found)
			return i;
		else
			return -1;
	}

	
	/** Returns a string object with its contents initialized to a substring of the current object.
	 @param pos	Position of a character in the current string object to be used as starting character for the substring.
	 @param n 	Length of the substring.
	 */
	TTString substr (size_t pos = 0, size_t n = 1) const
	{
		TTString	substring;
		size_t		i;
		
		substring.reserve(n+16);
		substring.resize(n);
		for (i=0; i<n; i++) {
//			substring.mData[i] = mData[pos + i];
			substring[i] = (*this)[pos + i];
			if (pos+i >= size())
				break;
		}
//		substring.mLength = i;
		return substring;
	}
	

	// This avoids a warning in GCC 4.7 about ambiguity between using an int vs. a size_t where
	// the int could also be considered an index into a char array
	char& operator[] (const int index)
	{
		return this->at(index);
	}
	
	/** Replace contents with a pseudo-random string. */
	void random();
	
	
	//void test()
	//{
	//	TTString f("foo");
	//
	//	char& c = f[0];
	//	f[0] = 'g';
	//}
	
};

		
/**	A reference to a string.  */
typedef TTString&			TTStringRef;
typedef TTString::iterator	TTStringIter;
//typedef std::vector<char>::iterator	TTStringIter;


#endif // __TT_STRING_H__
