//
//  HelloPolyAppDelegate.m
//  HelloPoly
//
//  Created by kps on 6/23/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "HelloPolyAppDelegate.h"

@implementation HelloPolyAppDelegate

@synthesize window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    // Override point for customization after application launch
	
    [window makeKeyAndVisible];
	
	return YES;
}

- (void) applicationDidFinishLaunching:(UIApplication *)application
{
    NSLog(@"Application did finish launching");
    
}

// applicationWillResignActive needn't be handled in pre-iPhone4 OSes ?
- (void) applicationWillTerminate:(UIApplication *)application
{
    NSLog(@"Application will terminate, poly %@", poly);
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setInteger:poly.numberOfSides forKey:@"numberOfSides"];
    
}

- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
