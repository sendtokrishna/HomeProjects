//
//  assign1AppDelegate.m
//  assign1
//
//  Created by kps on 6/21/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "assign1AppDelegate.h"

@implementation assign1AppDelegate

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
