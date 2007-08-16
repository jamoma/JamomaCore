#import "myDataSource.h"

@implementation myDataSource


// WHERE ARE WE SUPPOSED TO CALL THIS?
	- (void) init
	{
		NSMutableArray *targets = [[NSMutableArray alloc] initWithCapacity:10];
		NSMutableArray *values = [[NSMutableArray alloc] initWithCapacity:10];
		
		aBuffer = [[NSMutableDictionary alloc] initWithCapacity:5];

		// assign initial values to arrays here
		[targets addObject:@"/foo"];
		[values addObject:@"bar"];
		
		// assign arrays into dictionary columns
		[aBuffer setObject:targets forKey:@"col_target"];
		[aBuffer setObject:values forKey:@"col_value"];
	
		[super init];
//		[[aTable tableColumnWithIdentifier:@"target"] setEditable:YES];
	}


	// the data-source protocol methods
	- (int) numberOfRowsInTableView:(NSTableView *)aTable
	{
		int				count = 0;
		NSMutableArray	*targets = [aBuffer objectForKey:@"col_target"];
		
		count = [targets count];
		return count;
	}
	
	
	- (id)	tableView:(NSTableView *)aTable
			objectValueForTableColumn:(NSTableColumn *)aCol
			row:(int)aRow
	{
		id			loc_id = nil;
		id			loc_dat = nil;
		NSArray		*loc_col;
//		id			loc_id = [aCol identifier];
//		id			loc_dat;
	
		loc_id = [aCol identifier];
		if(loc_id != nil){
			loc_col = [aBuffer objectForKey:loc_id];
			if(loc_col != nil)
				loc_dat = [loc_col objectAtIndex:aRow];
		}
		return loc_dat;
		//return [aBuffer objectAtIndex:aRow];
	}
	
	
	// Not sure about this...
	- (void)	tableView:(NSTableView *)aTable 
				setObjectValue:(id)aData 
				forTableColumn:(NSTableColumn *)aCol 
				row:(int)aRow
	{
		id			loc_id, loc_data;
		//NSString     *loc_log;
      
		// identify the table column
		loc_id = [aCol identifier];
		if([loc_id isKindOfClass:[NSString class]]){
		   // determine the old cell value
//		   loc_data = [[self aBuffer] objectForKey:loc_id];
		   loc_data = [aBuffer objectForKey:loc_id];
		   loc_data = [loc_data objectAtIndex:aRow];
		   
		   // compare the old cell value against the "new" value
		   if(![loc_data isEqual:aData]){
				// update the data buffer
//				[[[self aBuffer] objectForKey:loc_id]
				[[aBuffer objectForKey:loc_id] replaceObjectAtIndex:aRow withObject:aData];
		   }
		}
	}
	
	
	
	// -- additional code to initialize, access, and 
	// -- modify the data buffer
	// -- ...
	
@end
