/** 
 	@page appendix_styleguide C. C++ Coding Style Guide

	@author Jamoma, Timothy Place

	@section appendix_styleguide_variables Variables

	- Declare all variables on separate lines.
	- If a variable is assigned immediately, then give it a default value in the declaration.
	- Prefer explicit types, e.g. TTObjectPtr rather than TTObject*.
	- User tabular formatting, as mentioned in the section "Whitespace"

	@section appendix_styleguide_functions Functions

	Functions always appear:

	-# With the return type on the same line as the function name
	-# With the arguments on the same line as the function name, unless they dont fit. In this case they follow in tabular format below the first argument name.
	-# The open curly brace is on the line below the function name -- not the same line.
	-# The closing curly brace is always on its own line

	@code{.cpp}
	TTHashPtr	TTNodeDirectory::getDirectory()
	{
		return this->directory;
	}
	@endcode

	- Whitespace between two functions should generally be two blank lines.
	- There should never be two consecutive blank lines within a function.

 	@section appendix_styleguide_arguments Arguments

	Prefer passing arguments as TTValueRef or const TTValueRef.

 	@section appendix_styleguide_whitespace Whitespace

	Multiple lines of similar function calls, similar definitions, should prefer tabular style formatting (which is to say, things are lined up in columns). This makes it faster to see the variant information between the lines, and also to edit multiple lines simultaneously using an editor such as TextMate.


 	@section appendix_styleguide_namingconventions Naming Conventions

	Macros should be all upper case, words divided by underscores

	Variables
	-# CamelCase.
	-# Variable names begin with lower-case letters
	-# Class Member variables begin with 'm'
	-# Constants begin with a 'k'
	-# Globals begin with 'g'
	-# Statics begin with 's'
	-# member method names begin with lower-case letters
	-# Classes or Global scope functions beggin with upper-case letters.
	-# Library functions begin with 'TT', non-library functions do not.

 	@section appendix_styleguide_casting Casting

	-# Be wary of casting if the problem/warning can be avoided in another way.
	-# Readability is the most important thing.  So we dont always use the crazy C++ casting stuff...
	-# Prefer C++ Style <tt>int(someValue)</tt> casts to <tt>(int)someValue</tt> casts.


 	@section appendix_styleguide_constructors Constructors

	-# for TTObject subclasses, use the appropriate macro (such as TT_OBJECT_CONSTRUCTOR) to implement the function signature correctly
	-# prefer initializers to assigning values
	-# initializers should be indented one tab


*/