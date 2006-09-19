
#import "PhidgetManagerController.h"
#import "TableData.h"

@implementation PhidgetManagerController

int gotAttach(CPhidgetHandle phid, void *context) {
	[(id)context addDevice:phid];
	return 0;
}

int gotDetach(CPhidgetHandle phid, void *context) {
	[(id)context removeDevice:phid];
	return 0;
}
	
/*
* This gets run when the GUI gets displayed
*/
- (void)awakeFromNib
{
	[mainWindow setDelegate:self];

    // Create the storage our table will use.
    tags = [[NSMutableArray alloc] init];
    // Be the data source... 
    [tagsTable setDataSource:self];
	
	/*
	* set up the phidget Manager - detects when phidgets are attached and removed
	*/
	CPhidgetManager_set_AttachHandler(gotAttach, self);
	CPhidgetManager_set_DetachHandler(gotDetach, self);
	CPhidgetManager_initialize();
}

- (void)windowWillClose:(NSNotification *)aNotification {
	CPhidgetManager_free();
	[NSApp terminate:self];
}

- (void)addDevice:(CPhidgetHandle)phid {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    // Append a newly created data object, then reload the table contents.
	const char *phidgetName, *phidgetType;
	char *phidgetTag;
	long phidgetSerial;
	long phidgetVersion;
	
	CPhidget_getDeviceName(phid,&phidgetName);
	CPhidget_getDeviceType(phid,&phidgetType);
	CPhidget_getSerialNumber(phid, &phidgetSerial);
	CPhidget_getDeviceVersion(phid, &phidgetVersion);
	CPhidget_getTag(phid, &phidgetTag);
	
    TableData *tableData = [[TableData alloc] init];
	
	[tableData setPhidgetName:[NSString stringWithCString:phidgetName]];
	[tableData setPhidgetType:[NSString stringWithCString:phidgetType]];
	[tableData setPhidgetTag:[NSString stringWithCString:phidgetTag]];
	[tableData setPhidgetSerial:[NSString stringWithFormat:@"%ld", phidgetSerial]];
	[tableData setPhidgetVersion:[NSString stringWithFormat:@"%ld", phidgetVersion]];
	
    [tags addObject: tableData];
    [tableData release];
    [tagsTable reloadData];
	[pool release];
}

- (void)removeDevice:(CPhidgetHandle)phid {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    // Append a newly created data object, then reload the table contents.
	const char *phidgetName, *phidgetType;
	char *phidgetTag;
	long phidgetSerial;
	long phidgetVersion;
	
	CPhidget_getDeviceName(phid,&phidgetName);
	CPhidget_getDeviceType(phid,&phidgetType);
	CPhidget_getSerialNumber(phid, &phidgetSerial);
	CPhidget_getDeviceVersion(phid, &phidgetVersion);
	CPhidget_getTag(phid, &phidgetTag);
	
    TableData *tableData = [[TableData alloc] init];
	
	[tableData setPhidgetName:[NSString stringWithCString:phidgetName]];
	[tableData setPhidgetType:[NSString stringWithCString:phidgetType]];
	[tableData setPhidgetTag:[NSString stringWithCString:phidgetTag]];
	[tableData setPhidgetSerial:[NSString stringWithFormat:@"%ld", phidgetSerial]];
	[tableData setPhidgetVersion:[NSString stringWithFormat:@"%ld", phidgetVersion]];
	
    [tags removeObject: tableData];
    [tableData release];
    [tagsTable reloadData];
	[pool release];
}

// ---------------------------------------------------------
//  Data source methods
// ---------------------------------------------------------

- (int)numberOfRowsInTableView:(NSTableView *)tv {
    return [tags count];
}

- (id)tableView:(NSTableView *)tv objectValueForTableColumn:(NSTableColumn *)tc row:(int)row {
    if ([[tc identifier] isEqualToString:@"Phidget Name"]) {
        return [[tags objectAtIndex:row] phidgetName];
    } else if ([[tc identifier] isEqualToString:@"Phidget Serial"]) {
        return [[tags objectAtIndex:row] phidgetSerial];
    } else if ([[tc identifier] isEqualToString:@"Phidget Version"]) {
        return [[tags objectAtIndex:row] phidgetVersion];
    } else {
        return NULL;
    }
}

- (void)tableView:(NSTableView *)tv setObjectValue:(id)objectValue forTableColumn:(NSTableColumn *)tc row:(int)row {
    if ([[tc identifier] isEqualToString:@"Phidget Name"]) {
        [[tags objectAtIndex:row] setPhidgetName: objectValue];
    } else if ([[tc identifier] isEqualToString:@"Phidget Serial"]) {
        [[tags objectAtIndex:row] setPhidgetSerial: objectValue];
    } else if ([[tc identifier] isEqualToString:@"Phidget Version"]) {
        [[tags objectAtIndex:row] setPhidgetVersion: objectValue];
    } else {;}
}

@end