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
		assign(aStdString.c_str());
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
		(*this) = aStdString.c_str();
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
	void assign(const char* aCString)
	{
		size_t len = strlen(aCString);
		
		if (len > size()-1) {
			reserve(len+16);
			resize(len);
		}
//		strncpy(mData, aCString, len);
		strncpy(&this->at(0), aCString, len);
		(*this)[len] = 0;
	}
	
	
	/** Assign from a std::string. */
//	void assign(std::string& aStdString)
//	{
//		assign(aStdString.c_str());
//	}
	
	
	/** Find out how much memory is allocated for the string. */
//	size_t size()
//	{
//		return mSize;
//	}
	
	
	/** Allocate (reserve) memory for the string. */
//	void resize(size_t newSize)
//	{
//		// TODO: do we want to preserve memory?
//		// TODO: do we want to make this thread-safe, or is the problem of the caller?
//		if (newSize != mSize) {
//			delete mData;
//			mData = new char[newSize];
//			mSize = newSize;
//		}
//	}
	
	
//	bool empty()
//	{
//		return mLength == 0;
//	}
	
	
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
	
	
	size_t find_first_of(const char aChar)
	{
		TTBoolean	found = NO;
		size_t		i;
		
		for (i=0; i<size(); i++) {
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
	
	
//	char& operator[] (const int index)
//	{
//	    return mData[index]; // TODO: should we bounds check?
//	}
	
	
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

#if 0


int String::hashCode() const throw()
{
    const juce_wchar* t = text;
    int result = 0;
	
    while (*t != (juce_wchar) 0)
        result = 31 * result + *t++;
	
    return result;
}

int64 String::hashCode64() const throw()
{
    const juce_wchar* t = text;
    int64 result = 0;
	
    while (*t != (juce_wchar) 0)
        result = 101 * result + *t++;
	
    return result;
}


//==============================================================================
/** This streaming override allows you to pass a juce String directly into std output streams.
 This is very handy for writing strings to std::cout, std::cerr, etc.
 */
template <class charT, class traits>
JUCE_API std::basic_ostream <charT, traits>& JUCE_CALLTYPE operator<< (std::basic_ostream <charT, traits>& stream, const String& stringToWrite)
{
    return stream << stringToWrite.toUTF8();
}
	
/** Writes a string to an OutputStream as UTF8. */
JUCE_API OutputStream& JUCE_CALLTYPE operator<< (OutputStream& stream, const String& text);
	
JUCE_API OutputStream& JUCE_CALLTYPE operator<< (OutputStream& stream, const String& text)
{
	// (This avoids using toUTF8() to prevent the memory bloat that it would leave behind
	// if lots of large, persistent strings were to be written to streams).
	const int numBytes = text.getNumBytesAsUTF8();
	HeapBlock<char> temp (numBytes + 1);
	text.copyToUTF8 (temp, numBytes + 1);
	stream.write (temp, numBytes);
	return stream;
}

#endif // 0

#endif // __TT_STRING_H__
