#import "qamoDataSource.h"

/*
	This is the Outline Source Controller (and should probably have been named as such).
	It acts as a DataSource for the NSOutline object as well as a delegate, and a controller
	for other actions such as the buttons that create new cues and events.
*/


@implementation qamoDataSource



// init is like a constructor
- init
{
    [super init];
	cues = [[NSMutableArray alloc] initWithCapacity:10];
	[self addCue:nil];
    return self;
}


- (void)dealloc
{
    [cues release];
    [super dealloc];
}


// an action method
- (IBAction)addEvent:(id)sender
{
/*
	First, we require that a row be selected.
	Then, we need to know if that row is a cue or an event.
	If it is a cue, then we call addEvent() to insert the event.
	
	Otherwise we need to figure out where in the event list for the cue, we are.
	Then we insert the new event in the correct place.
*/
	int 	selectedRow = [outlineView selectedRow];
	id		selectedItem = [outlineView itemAtRow:selectedRow];
	cue		*selectedCue = nil;
	//int 	index = 0;
	event	*newevent;
	
    // Is nothing selected?
    if(selectedRow < 0){
        NSBeep();
        return;
    }
	
	newevent = [[event alloc] init];
	[newevent setTarget:@"/host/module/parameter"];
	[newevent setValue:@"100"];

	if([selectedItem isKindOfClass:[cue class]]){
		selectedCue = selectedItem;
	}
	else
		selectedCue = selectedItem;

	[selectedCue addEvent:newevent];
	
 	[outlineView reloadData];
}


// TODO: This method should insert the new cue after the currently selected cue, if appropriate
- (IBAction)addCue:(id)sender
{
	int 	selectedRow = [outlineView selectedRow];
	id		selectedItem = [outlineView itemAtRow:selectedRow];
	id		selectedCue = nil;
	int 	index = 0;
	cue		*newcue = [[cue alloc] init];
	
	[newcue setCueName:@"SomeCue"];
	[newcue setCueDescription:@"Describe this Cue"];

	if(!selectedItem)
		[cues addObject:newcue];		// no row selected, so add it to the end of the existing cues
	else{
		if([selectedItem isKindOfClass:[event class]]){
			// 1. find out what cue the event belongs to
			// 2. get that cue!
			selectedCue = selectedItem;					// FIXME: This is a temporary stop-gap
		}
		else
			selectedCue = selectedItem;
		
		index = [cues indexOfObject:selectedCue];
		[cues insertObject:newcue atIndex:index+1];
	}

 	[outlineView reloadData];
}



#pragma mark -
#pragma mark datasource methods


// Data source methods get called automatically

// This method is called repeatedly when the table view is displaying it self. 
- (id)outlineView:(NSOutlineView *)ov child:(int)index ofItem:(id)item
{
	id theOb = nil;
	
    if(item)
        theOb = [item eventAtIndex:index];        // Return the child
    else
        theOb = [cues objectAtIndex:index];        // Else return the root
		
	return theOb;
}


// Called repeatedly to find out if there should be an
// "expand triangle" next to the label
- (BOOL)outlineView:(NSOutlineView *)ov isItemExpandable:(id)item
{
    return [item expandable];    // Returns YES if the node has children
}


// Called repeatedly when the table view is displaying itself
- (int)outlineView:(NSOutlineView *)ov numberOfChildrenOfItem:(id)item
{
	int count = 0;
	cue	*theCue = item;
	
	// root level: cues
	if(theCue == nil){
		count = [cues count];
		return count;
    }
	// child nodes: events belonging to a cue
    return [theCue eventCount];
}


// This method gets called repeatedly when the outline view is trying to display it self.
- (id)outlineView:(NSOutlineView *)ov 
    objectValueForTableColumn:(NSTableColumn *)tableColumn 
    byItem:(id)item
{
    NSString *identifier = [tableColumn identifier];    // identifier of the columns is set in IB's inspector
    
	if([item isKindOfClass:[cue class]]){
		if([identifier isEqual:@"col_cue"])
			return [item getCueName];
		else if([identifier isEqual:@"col_target"])
			return [item getCueDescription];
		else
			return nil;	
	}
	else{	// assuming it is an event
		if([identifier isEqual:@"col_cue"]){	// delay time
			return [item getDelay];
		}
		else if([identifier isEqual:@"col_target"])
			return [item getTarget];
		else if([identifier isEqual:@"col_value"])
			return [item getValue];
		else if([identifier isEqual:@"col_ramp"]){	// delay time
			return [item getRamp];
		}
		else
			return nil;	
	}
}


// This method gets called when the user edits the field.
- (void)outlineView:(NSOutlineView *)ov 	
    setObjectValue:(id)object 
    forTableColumn:(NSTableColumn *)tableColumn 
    byItem:(id)item
{
    NSString *identifier = [tableColumn identifier];    // identifier of the columns is set in IB's inspector
    
	if([item isKindOfClass:[cue class]]){
		if([identifier isEqual:@"col_cue"])
			[item setCueName:object];
		else if([identifier isEqual:@"col_target"])
			[item setCueDescription:object];
    }
	else{	// assuming it is an event
		if([identifier isEqual:@"col_cue"])
			[item setDelay:object];
		else if([identifier isEqual:@"col_target"])
			[item setTarget:object];
		else if([identifier isEqual:@"col_value"])
			[item setValue:object];
		else if([identifier isEqual:@"col_ramp"])
			[item setRamp:object];
	}
	
    // Brute force reload to update sums
    [outlineView reloadItem:item reloadChildren:YES];
}


#pragma mark -
#pragma mark delegate methods

- (void)outlineView:(NSOutlineView *)outlineView
	willDisplayCell:(id)cell 
	forTableColumn:(NSTableColumn *)tableColumn
	item:(id)item
{
    NSString *identifier = [tableColumn identifier];    // identifier of the columns is set in IB's inspector

	if([identifier isEqual:@"col_cue"] || [identifier isEqual:@"col_target"]){
		if([item isKindOfClass:[cue class]])
			[cell setFont:[NSFont boldSystemFontOfSize:11]];
		else
			[cell setFont:[NSFont systemFontOfSize:11]];	
	}
}


@end
