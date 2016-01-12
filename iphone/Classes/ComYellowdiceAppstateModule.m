/**
 * appstate
 *
 * Created by Steven van Loef
 * Copyright (c) 2016 . All rights reserved.
 */

#import "ComYellowdiceAppstateModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"

@implementation ComYellowdiceAppstateModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"6edd3922-b833-4a7d-9207-bd4fa9877f9c";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"com.yellowdice.appstate";
}

#pragma mark Lifecycle

-(void)startup
{
	// this method is called when the module is first loaded
	// you *must* call the superclass
	[super startup];

	NSLog(@"[INFO] %@ loaded",self);
}

-(void)shutdown:(id)sender
{
	// this method is called when the module is being unloaded
	// typically this is during shutdown. make sure you don't do too
	// much processing here or the app will be quit forceably

	// you *must* call the superclass
	[super shutdown:sender];
}

#pragma mark Cleanup

-(void)dealloc
{
	// release any resources that have been retained by the module
	[super dealloc];
}

#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	// optionally release any resources that can be dynamically
	// reloaded once memory is available - such as caches
	[super didReceiveMemoryWarning:notification];
}


#pragma Public APIs

-(id)example:(id)args
{
	// example method
	return @"hello world";
}

// possible states: UIApplicationStateActive, UIApplicationStateInactive, UIApplicationStateBackground
-(id)inBackground:(id)args
{
	return NUMBOOL([[UIApplication sharedApplication] applicationState] == UIApplicationStateBackground);
}

-(id)inForeground:(id)args
{
	return NUMBOOL([[UIApplication sharedApplication] applicationState] == UIApplicationStateActive);
}

-(id)inactive:(id)args
{
	return NUMBOOL([[UIApplication sharedApplication] applicationState] == UIApplicationStateInactive);
}

@end
