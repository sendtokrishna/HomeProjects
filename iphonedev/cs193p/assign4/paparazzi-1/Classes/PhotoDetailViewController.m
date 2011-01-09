//
//  PhotoDetailViewController.m
//  paparazzi-1
//
//  Created by kps on 7/9/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PhotoDetailViewController.h"


@implementation PhotoDetailViewController

@synthesize imageName;
@synthesize imageFileName;

// TBD: is this the right way to invoke a designated initializer ?

// TBD: Why can't UIImage be pased between viewControllers ?

- (id)initWithNibNameImage:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil imageName:(NSString *)name imageFname:(NSString *)fname {
    
    if ((self = [self initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {

        self.imageName = name;
        self.imageFileName = fname;
    }
    return self;
}

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    
    imageView.image = [UIImage imageNamed:self.imageFileName];
    self.title = self.imageName;

}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    
    [imageName release];
    [imageFileName release];
    [imageView release];
    [super dealloc];
}


@end
