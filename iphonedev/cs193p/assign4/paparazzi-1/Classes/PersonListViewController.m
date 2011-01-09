//
//  PersonListViewController.m
//  paparazzi-1
//
//  Created by kps on 7/8/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PersonListViewController.h"
#import "PhotoListViewController.h"

@implementation PersonListViewController

- (void) viewTomPhotos
{    
    NSLog(@"Show Tom's Photos");
    
    UIViewController *secondViewController =
    [[PhotoListViewController alloc] initWithNibNameId:@"PhotoListViewController" bundle:[NSBundle mainBundle] personId:10];
    
    [self.navigationController pushViewController:secondViewController animated:YES];
    
    [secondViewController release];
    
}

- (void) viewHarryPhotos
{    
    NSLog(@"Show Harry's Photos");
    
    UIViewController *secondViewController =
    [[PhotoListViewController alloc] initWithNibNameId:@"PhotoListViewController" bundle:[NSBundle mainBundle] personId:20];
    
    [self.navigationController pushViewController:secondViewController animated:YES];
    
    [secondViewController release];
    
}

- (void) viewDidLoad
{
    [super viewDidLoad];
    
    // if you forget the argument to %@ 
    // then the app doesn't load.
    NSLog(@"%@ viewDidLoad", self);
    
    self.title = @"Contacts";
    
    // title of this view controller
    // shown in navigation controller when this view
    // is loaded is setup here 
    // since not available in XIB
    
}

- (void)dealloc {

    [image1 release];
    [label1 release];
    [button1 release];
    
    [image2 release];
    [label2 release];
    [button2 release];
    
    [super dealloc];
}


@end
