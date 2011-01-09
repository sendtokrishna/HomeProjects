//
//  tempAppDelegate.m
//  temp
//
//  Created by kps on 7/1/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "tempAppDelegate.h"

@implementation tempAppDelegate

@synthesize window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    // Override point for customization after application launch
	
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
