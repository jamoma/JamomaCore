//
//  PlugtasticProgressWindow.m
//
//  Created by Timothy Place on 9/19/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PlugtasticProgressWindow.h"


extern "C" void open_progress_window(PlugOutPtr self)
{
	PlugtasticProgressWindow*	progressWindow = (PlugtasticProgressWindow*)self->progressWindow;
	NSRect						bounds;
	
	progressWindow = [[PlugtasticProgressWindow alloc] init];
	[progressWindow setStyleMask:NSTexturedBackgroundWindowMask | NSTitledWindowMask];
	bounds.size.width = 400;
	bounds.size.height = 80;
	bounds.origin.x = 200;
	bounds.origin.y = 200;
	[progressWindow setFrame:bounds display:NO];
	[progressWindow setTitle:@"Building Plugtastic Plug-in"];
	
	bounds.origin.x = 30;
	bounds.origin.y = 20;
	bounds.size.width = 340;
	bounds.size.height = 20;
	progressWindow->progressIndicator = [[NSProgressIndicator alloc] initWithFrame:bounds];
	[progressWindow->progressIndicator setUsesThreadedAnimation:YES];
	[progressWindow->progressIndicator startAnimation:progressWindow];
	
	[[progressWindow contentView] addSubview:progressWindow->progressIndicator];
	[progressWindow orderFrontRegardless];
	[progressWindow makeKeyWindow];
	
	self->progressWindow = progressWindow;
}


extern "C" void close_progress_window(PlugOutPtr self)
{
	PlugtasticProgressWindow*	progressWindow = (PlugtasticProgressWindow*)self->progressWindow;
	
	[progressWindow release];
	self->progressWindow = nil;
}


extern "C" void set_progress_window(PlugOutPtr self, double percentage)
{
	PlugtasticProgressWindow*	progressWindow = (PlugtasticProgressWindow*)self->progressWindow;

	if (percentage > 0.0) {
		[progressWindow->progressIndicator setIndeterminate:NO];
		[progressWindow->progressIndicator setDoubleValue:percentage];		
	}
	else {
		[progressWindow->progressIndicator setIndeterminate:YES];
	}
}


@implementation PlugtasticProgressWindow

@end
