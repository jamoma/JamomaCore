/* myDataSource */

#import <Cocoa/Cocoa.h>

@interface myDataSource : NSObject
{
	/* internal buffers a private property. This prevents the buffer from being directly 
		accessed and modified by external objects. As part of a good object-oriented design, 
		buffer access must be done only through the requisite accessor and modifier methods.
		
		Notice as well that the collection classes used to implement the internal buffer 
		is immutable. Mutable collection classes such as NSMutableArray and 
		NSMutableDictionary should be used only when data editing is to be supported. 
		Otherwise, use immutable classes to minimize the resource overhead and memory 
		requirements of the application.
	*/
	@private
//	NSDictionary		*aBuffer;
	NSMutableDictionary	*aBuffer;
	
}
@end
