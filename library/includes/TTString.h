/*
 Jamoma Class for representing strings
 Copyright © 2012, Timothy Place & Théo Delahogue
 
 License: This code is licensed under the terms of the "New BSD License"
 http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_STRING_H__
#define __TT_STRING_H__

#include "TTBase.h"


/****************************************************************************************************/
// Class Specification

/**	The TTString class is used to represent a string.
	We cannot safely pass std::string across lib boundaries, particularly on Windows.
	We also don't want to simply pass naked C-Strings for a whole host of reasons.
	 
	In many cases we try to mimic the interface of std::string for ease of compatibility.
	 
	 
	FROM http://cboard.cprogramming.com/cplusplus-programming/86598-std-vector-char-vs-std-string.html
	1. std::string has a huge number of string-related functions which make it easy to manipulate strings.
	2. std::vector, on the other hand, is guaranteed to be contiguous in memory -- that is, &data[x + 1] = &data[x] + sizeof(data[x]).
		std::string has NO guarantee that it is contiguous in memory.
		So, for example, say you're using an API call that fills a character buffer. 
		You'd need to use the vector, not the string.

	@seealso TTSymbol
*/
class TTFOUNDATION_EXPORT TTString : public std::vector<char> {	
	
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
		
		if ((length+1) >= capacity())
			reserve(length+16);
				
		resize(length);		
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
	
	
	/** Allocate  memory for the string. */
	void resize(size_t newSize)
	{
		std::vector<char>::resize(newSize + 1);
		this->at(newSize) = 0; // NULL terminate for safety
	}
	
	
	TTString& operator += (const TTString& anotherString)
	{
		append(anotherString.c_str(), anotherString.length());
		return (*this);
	}
	
	
	TTString& operator += (const char* aCString)
	{
		append(aCString);
		return (*this);
	}
	
	
	TTString& operator += (const std::string& aStdString)
	{
		append(aStdString.c_str(), aStdString.length());
		return (*this);
	}
	
	
	TTString& operator += (const char c)
	{
		append(&c, 1);
		return (*this);
	}
	
	
	/** Append / Concatenate */
	void append(const char *str, size_t length=0)
	{
		if (length == 0)
			length = strlen(str);
		
		size_t oldSize = size();
		size_t newSize = oldSize + length;
		
		if (newSize >= capacity())
			reserve(newSize + 256);
		
		resize(newSize);
		memcpy(&this->at(oldSize), str, length);
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
			substring[i] = (*this)[pos + i];
			if (pos+i >= size())
				break;
		}
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



/** Expose TTString for use in std output streams. */
template <class charT, class traits>
std::basic_ostream <charT, traits>& operator<< (std::basic_ostream <charT, traits>& stream, const TTString& aString)
{
	return stream << aString.c_str();
}


#endif // __TT_STRING_H__
