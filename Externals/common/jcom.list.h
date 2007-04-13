/* 
 * Class for handling linked lists. 
 * By Dave Watson Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __JCOM_LIST_H_
#define __JCOM_LIST_H__

#include <list>
using namespace std;

/** A template class for managing linked lists */
template<class T> 
class jcomList {
public:
	
	jcomList() { };
	~jcomList() { };
	
	typedef typename list<T>::iterator jcomListIterator;

	/** Put an item at the front of the list
	 * @param x the item to add to the list
	*/
	void push_front(const T& x) 
	{ ll.push_front(x); }
	/** Put an item at the back of the list
	 * @param x the item to add to the list
	*/
	void push_back(const T& x)
	{ ll.push_back(x); }
	
	/** Remove an item from the list if it exists.
	 * @param x the item in the list 
	*/
	void remove(const T& x)
	{
		jcomListIterator i = find(ll.begin(), ll.end(), x);
		if(i != ll.end())
			ll.erase(i);
	}
	
	bool find(const T& x) 
	{
		return find(ll.begin(), ll.end(), x) != ll.end();
	}
	template<typename Predicate>
	jcomListIterator find_if(jcomListIterator first, jcomListIterator last, Predicate pred)
	{
		return find_if(first, last, pred);
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
	/** @return the number of elements in the list */	
	int size() { return ll.size(); }
	/** @return true if the list is empty, false otherwise */
	bool empty() const { return ll.empty(); }
	/** Removes the list item at position.  
	 * @param position the position of the list item to remove
	 * @return an updated iterator pointing to the position that followed the removed item
	 */
	jcomListIterator erase(jcomListIterator position) { return ll.erase(position); }
	/** @return an iterator to the front of the list */
	jcomListIterator begin() { return ll.begin(); }
	/** @return an iterator to one past the end of the list */
	jcomListIterator end() { return ll.end(); }
	
private:
	list<T> ll;

};



#endif // __JCOM_LIST_H__
