//
//  paparazzi_1AppDelegate.m
//  paparazzi-1
//
//  Created by kps on 7/8/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "paparazzi_1AppDelegate.h"
#import "PersonListViewController.h"

@implementation paparazzi_1AppDelegate

@synthesize window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    // Override point for customization after application launch
	NSLog(@"app launch finished");
    
    // addSubview is adding the tab and nav views to the window
    // it may not have any constituent viewControllers at this
    // stage
    
    // the navigation controller views are already
    // added to the tabbarcontroller in XIB
    [window addSubview:tabBarController.view];
    
    // TBD: Shouldn't we release the navController.view and
    // tabBarController.view since these are retained by the
    // addSubview ??
    
    // the contact and recent icons of the tab bar are setup
    // by changing the identifier in XIB 

    // PersonListViewController.xib is not in the MainWindow.xib
    // so instance of PerListViewController needs to be 
    // programmatically created
    PersonListViewController *personList = [[PersonListViewController alloc] initWithNibName:@"PersonListViewController" bundle:[NSBundle mainBundle]];
    
    [navControllerList pushViewController:personList animated:NO];
    [personList release];
   
    
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)dealloc {
    [navControllerList release];
    [navControllerRecent release];
    [tabBarController release];
    [window release];
    [super dealloc];
}


@end
