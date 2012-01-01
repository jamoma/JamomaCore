/* 
 * Class for handling linked lists. 
 * By Dave Watson Copyright � 2007
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __JCOM_LIST_H_
#define __JCOM_LIST_H__

#include <list>
using namespace std;

/** A template class for managing linked lists. */
template<class T> 
class jcomList {

public:
	
	/** Class constructor. */
	jcomList() { };

	jcomList(const T& rhs) // copy constructor
	{ ll.insert(ll.begin(), rhs.begin(), rhs.end()); }
	
	/** Class destructor. */
	~jcomList() { };
		
	typedef typename list<T>::iterator jcomListIterator;

	/** Put an item at the front of the list.
	 * @param x		The item to add to the list
	*/
	void push_front(const T& x) 
	{ ll.push_front(x); }

	/** Put an item at the back of the list.
	 * @param x		The item to add to the list
	*/
	void push_back(const T& x)
	{ ll.push_back(x); }
	
	/** Remove an item from the list if it exists.
	 * @param x		The item in the list.
	*/
	void remove(const T& x)
	{
		jcomListIterator i = find(ll.begin(), ll.end(), x);
		if (i != ll.end())
			ll.erase(i);
	}
	
	/** Test to see if an item is member of the list.
	 @param x		The item to search for.
	 @return		true if the item is found, else false.
	 */
	bool find(const T& x) 
	{
		return find(ll.begin(), ll.end(), x) != ll.end();
	}
	template<typename Predicate>
	T& find_if (jcomListIterator first, jcomListIterator last, Predicate pred)
	{
		jcomListIterator result;
		while (first != last) {
			result = pred(first, last);
			++first;
		}
		return result != ll.end() ? result : NULL;
	}
	
	T& element(const T& x) 
	{
		jcomListIterator i = find(ll.begin(), ll.end(), x);
		return *i;
	}
	
	/** Merges a new item into the list sorting it according to the function object comp
	 * @param x the new item to merge
	 * @param comp A function object to determine where in the list the new item should
	 * be placed
	*/
	template<typename Compare>
	void merge(const T& x, Compare comp)
	{
		list<T> m;
		m.push_front(x);
		ll.merge(m, comp);
	}
	
	/**  Get the number of elements in the list.
	 @return		The number of elements in the list */	
	long size() { return (long)ll.size(); }
	
	/** Check if the list is empty.
	 @return		True if the list is empty, false otherwise */
	bool empty() const { return ll.empty(); }
	
	/** Remove the list item at given position.  
	 * @param		Position the position of the list item to remove.
	 * @return		An updated iterator pointing to the position that followed the removed item.
	 */
	jcomListIterator erase(jcomListIterator position) { return ll.erase(position); }

	/**	Remove the list item at a given position.
	 * @param position The position of the list item to remove.
	 */
	void remove(jcomListIterator position) { ll.erase(position); }
	
	/** Iterate to the front of the list.
	 @return		An iterator to the front of the list. */
	jcomListIterator begin() { return ll.begin(); }
	
	/** Iterate to one past the end of the list.
	 @return		An iterator to one past the end of the list. */
	jcomListIterator end() { return ll.end(); }
	
	/** Removes all list items. */
	void clear() { ll.clear(); }
	
private:
	list<T> ll;

};


#endif // __JCOM_LIST_H__
