/** 
	@page chapter_datatypes 02. An introduction to the data types in Jamoma
	
	@author Jamoma, Timothy Place

	We will begin our introduction of the Jamoma environment by looking at the basic data types. 
	All other aspects of the environment, creating objects, writing extensions, etc., all require some knowledge about how data is represented.


	@section chapter_datatypes_primitive Primitive Data Types

	@subsection chapter_datatypes_primitive_numbers Numbers

	To begin, Jamoma Foundation defines a variety of basic types for representing integers and a floating-point numbers with various degrees of resolution, and in signed or unsigned variants. The following table lists the basic numeric types according to their properties.

	@code
	| 			| Unsigned Integer	| Signed Integer	| Floating-Point	|
	| 8-bit		| #TTUInt8			| TTInt8			|       			|
	| 16-bit	| #TTUInt16			| TTInt16			|        			|
	| 32-bit	| #TTUInt32			| TTInt32			| TTFloat32	 		|
	| 64-bit	| #TTUInt64			| TTInt64			| TTFloat64	 		|
	@endcode

	@subsection chapter_datatypes_primitive_bools Booleans

	In addition to these types for representing numbers, there are basic types for representing booleans (true/false values), TTBoolean.

	@subsection chapter_datatypes_primitive_strings Strings and Symbols

	Strings can be represented in several different ways in Jamoma. Of course, arrays of the standard char type is a well understood way to work with text in C. The #TTString type, at the time of this writing, is a typedef of the C++ std::string, and thus follows the conventions of the string provided by the C++ standard library.

	In addition to #TTString, there is also a #TTSymbol type. A symbol is simply a wrapper around a string that is cached in a fast lookup table. While comparing #TTString values is relatively slow, comparing #TTSymbol values is extremely fast.

	@code
		TTSymbol bearSymbol("bear");
	@endcode


	@section chapter_datatypes_composite Composite Data Types

	@subsection chapter_datatypes_composite_value TTValue

	While is important to have defined the basic data types for numbers, strings, and booleans, this is not the way that values are typically passed in TTBlue. Instead, values are passed as TTValues. 
	#TTValue is a generic type that can hold any of the number, string, boolean, or a few other types that we use in TTBlue. In fact, it can even hold an array of values made up of these various types. The following example shows several assignments using TTValues.

	@code{.cpp}
		// Assigning numbers and symbols to TTValues
		TTValue v = 3.1415;
		TTValue s = TTSymbol("hog");

		// Assigning TTValues to numbers
		TTUInt16 i = v;
	@endcode


	@subsection chapter_datatypes_composite_object TTObject

	Another type that can be represented with a #TTValue is the #TTObject type. We’ll discuss more about that in coming sections.

*/
