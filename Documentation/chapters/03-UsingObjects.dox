/** 
	@page chapter_usingobjects 03. How to use objects from the Jamoma API
	
	@author Jamoma, Timothy Place

	@section chapter_usingobjects_lifecycle Object Life Cycle

	@subsection chapter_usingobjects_lifecycle_createdestroy Creating and Destroying

	To create an instance of a Jamoma object, use TTObjectInstantiate().  
	This will look up the class in Jamoma’s registry of objects and return a pointer to the new instance. 
 
	An example below creates a stereo instance of an allpass filter, and two stereo audio signals.
	They are stereo because the argument given when instantiating these types of objects define the initial number of audio channels as two.
	You can safely ignore the fact that one of the variables is a TTAudioObjectPtr instead of a TTObjectPtr.  
	TTAudioObject is simply a specialized version of TTObject.

	@code{.cpp}
		TTAudioObjectPtr  myObject      = NULL;
		TTObjectPtr       myAudioInput  = NULL;
		TTObjectPtr       myAudioOutput = NULL;

		TTObjectInstantiate("allpass", &myObject, 2);
		TTObjectInstantiate("audiosignal", &myAudioInput, 2);
		TTObjectInstantiate("audiosignal", &myAudioOutput, 2);
	@endcode

	When you are all done using the objects, you need to release them.  
	You can do this with the TTObjectRelease() function.  
	For example:

	@code{.cpp}
		TTObjectRelease(&myObject);
		TTObjectRelease(&myAudioInput);
		TTObjectRelease(&myAudioOutput);
	@endcode

	@subsection chapter_usingobjects_lifecycle_referencecounts Retaining and Reference Counts

	TTObject’s are reference counted.  This means that you can create references to existing objects, and the object will not be freed until all references have been released.  This is demonstrated in the following example:

	@code{.cpp}
		TTObjectPtr myObject = NULL;
		TTObjectPtr aReferenceToMyObject = NULL;

		TTObjectInstantiate(“noise”, &myObject, 2);
		// reference count is now 1
		aReferenceToMyObject = TTObjectReference(myObject);
		// reference count is now 2

		TTObjectRelease(&myObject);
		// The object is not actually deleted, but the reference count is now 1
		TTObjectRelease(&aReferenceToMyObject);
		// Now, because the reference count fell to zero, the object is deleted.
	@endcode

	@section chapter_usingobjects_queryenvironment Querying the Environment

	As alluded to in section 3.1, Jamoma Foundation maintains a registry of available classes that may be instantiated.  Some of these classes are implemented internally in the Jamoma libraries, and some are implemented externally as Jamoma Extensions.  The registry does not differentiate between these, but simply provides a list of everything that is loaded in the system.

	@subsection chapter_usingobjects_queryenvironment_getallclassnames Getting All Class Names

	To obtain a list of all class in the Foundation's registry, you call the TTGetRegisteredClassNames() function as in the following example:

	@code{.cpp}
		TTErr err;
		TTValue classNames;

		err = TTGetRegisteredClassNames(classNames);
		if(!err){
			// The classNames value now contains an array of TTSymbols, 
			// one for each class in the TTBlue registry.
			// For example, we can print them all to console:

			TTUInt16 numClassNames = classNames.getSize();

			for(TTUInt16 i=0; i<numClassNames; i++){
				TTSymbol aClassName;

				classNames.get(i, aClassName);
				TTLogMessage("class name: %s", aClassName.c_str());
			}
		}
	@endcode

	@subsection chapter_usingobjects_queryenvironment_searchbasedontags Searching For Classes Based on Tags

	In addition to retrieving all class names, it is also useful to be able to retrieve a limited number of class names based on criteria that you specify.  For example, you may wish to only list classes that generate their own audio.  Or perhaps only those class which implement some sort of lowpass filter.

	In this case we call TTGetRegisteredClassNamesForTags(), and process the results in the same manner as we did for TTGetRegisteredClassNames().  This is demonstrated in the example below:

	@code{.cpp}
		TTErr err;
		TTValue classNames;
		TTValue searchTags;

		searchTags.clear();
		searchTags.append(TTSymbol("audio"));
		searchTags.append(TTSymbol("filter"));
		searchTags.append(TTSymbol("lowpass"));

		err = TTGetRegisteredClassNamesForTags(classNames, searchTags);
		if(!err){
			// The classNames value now contains an array of TTSymbols, 
			// one for each class in the TTBlue registry.
			// For example, we can print them all to console:

			TTUInt16 numClassNames = classNames.getSize();

			for(TTUInt16 i=0; i<numClassNames; i++){
				TTSymbol aClassName;

				classNames.get(i, aClassName);
				TTLogMessage("class name: %s", aClassName.c_str());
			}
		}
	@endcode

	For a list of common tags and what they mean in Jamoma see Appendix B.  To get a list of all tags in use at any time, call TTGetRegisteredTags().

	@subsubsection chapter_usingobjects_queryenvironment_searchbasedontags_example Tag Searching and Instantiation in Action

	Here is an example that searches based on tags for a lowpass filter using a Butterworth algorithm, and then creates an instance of that class.

	@code{.cpp}
		// In this case there are multiple matches returned. 
		// Since more specific information was not provided, 
		// we just instantiate the first one.
	
		TTErr             err;
		TTValue           classNames;
		TTValue           searchTags;
		TTAudioObjectPtr  butterworthFilter = NULL;
	
		searchTags.clear();
		searchTags.append(TTSymbol("audio"));
		searchTags.append(TTSymbol("filter"));
		searchTags.append(TTSymbol("lowpass"));
		searchTags.append(TTSymbol("butterworth"));
	
		err = TTGetRegisteredClassNamesForTags(classNames, searchTags);
		if(!err){
			// by passing classNames, the TTObjectInstantiate() function will take the first name in the list.
			err = TTObjectInstantiate(classNames, &butterworthFilter, 1);
		}
		// now do something with the filter.
	@endcode

	@section chapter_usingobjects_sendingmessages Sending Messages

	Having created an instance of an object, we must now do something with that object.
	We do things with objects by sending them messages. 
	A message defines an action to be performed. 

	Given the Butterworth filter example in @ref chapter_usingobjects_queryenvironment_searchbasedontags_example, we can now send the filter the 'clear' message to zero its sample history
	@note The Butterworth filter is an IIR filter, meaning that it stores the results of previous calculations to perform future calculations.  This feedback can sometimes get out of control, and thus the necessity for a 'clear' message.

	@code{.cpp}
		butterworthFilter->sendMessage("clear");
	@endcode

	Some messages, like the 'clear' message for the Butterworth filter, require no additional information to perform the requested action.
	Other messages, however, do require additional information.  
	This information can be provided using an optional argument to the sendMessage method.  Here are some samples:

	@code{.cpp}
		someObject->sendMessage("foo", 3.14);
		someObject->sendMessage("draw", "circle");

		// create a TTValue that holds a list and pass the TTValue
		TTValue v(1.0, 2.0));
		someObject->sendMessage("w", v);
	
		// when you send a message, it can return a value as well.
		TTValue whatIsInThere;
		TTErr   err;
	
		err = someObject->sendMessage("getContents", whatIsInThere);
		if(!err){
			// Assuming that someObject understands the message, 
			// this results in whatIsInThere being set to contain something meaningful.	
		}
		else if(err == kTTErrMethodNotFound){
			// The object didn't understand this message'
		}
		else{
			// There was some other problem.
			// Probably the object you sent the message to knows this message and is returning 
			// an error specific to the action you requested.
		}
	@endcode

	

	@section chapter_usingobjects_setgetattributes Setting and Getting Attributes

	Sending messages is great for performing actions, however these actions do not represent the state of the object.
	The state of the object is represented as the object's 'attributes'.

	@section chapter_usingobjects_queryavailable Querying Objects for Available Messages and Attributes

	@section chapter_usingobjects_processingaudios Processing Audio

	Not all objects can process audio, however, objects that have the tag ‘audio’ associated with them are able process audio.  These objects derive from #TTAudioObject, a subclass of #TTObject which implements the “process” method.

*/

