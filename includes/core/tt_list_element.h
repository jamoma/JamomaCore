/* tt_list_element
 *
 * An element which is used by tt_linklist
 * Copyright © 2007 by Timothy Place
 */

#ifndef TT_ELEMENT_HEADER
#define TT_ELEMENT_HEADER

#include "tt_base.h"
#include "tt_value.h"
#include "tt_value_named.h"

/****************************************************************************************************/
// Class Specification

class tt_list_element : tt_base {
	
	public:
		// Standard members for doubly-linked list
		tt_value_named	**values;			// values are stored as an array of elements
		tt_uint16		 value_count;		// number of elements
		tt_list_element		*next;
		tt_list_element		*prev;


		// LIFE CYCLE
		tt_list_element()
		{
			next = NULL;
			prev = NULL;
			values = NULL;
			value_count = 0;
		}		

		~tt_list_element()
		{
			;
		}


		// DATA ACCESSORS
		tt_err add_value(char *key, tt_value &value)
		{
			tt_int16 	index = key_getindex(key);

			// If this key doesn't already exist, then grow our list and add it
			if(index < 0){
				values = (tt_value_named **)mem_resize(values, sizeof(tt_value *) * (value_count + 1));
				index = value_count;
				value_count++;
				values[index] = new tt_value_named(key);
			}
			values[index]->set(value);
		}


		/*
			@param remove_all - by default we remove only the first existing element with this name
								it is possible that there could be other keys with the same name
		*/
		tt_err remove_value(char *key, t_atom &value, bool remove_all = false)
		{
			// 1. Look for key with this name, if it exists then we delete it and shrink the list 
			// 		- ick maybe this list really needs to be a linked list itself?
			//	 	- ideally this list would actually be a hashtab...
			;
		}


		/**
			@param key - the key to look for 
			@return - the index of this key if it exists, otherwise -1
		*/
		tt_int16 key_getindex(char *key)
		{
			short 		i;
			tt_int16	index = -1;

			for(i=0; i<value_count; i++){
				if(!strcmp(values[i]->key, key)){
					index = i;
					break;
				}
			}
			return index;
		}


		/**
			@param key : the key to lookup our value
			@param value : atom is returned here
		*/
		tt_err get_value(char *key, tt_value &value)
		{
			tt_int16 	index = key_getindex(key);

			value = values[index]->value;
		}

};


#endif // TT_ELEMENT_HEADER
