//
//  PhotoListViewController.m
//  paparazzi-1
//
//  Created by kps on 7/9/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PhotoListViewController.h"
#import "PhotoDetailViewController.h"

@implementation PhotoListViewController

@synthesize personid;



- (id)initWithNibNameId:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil personId:(NSInteger)nameid {
    
    // invoke the designated initializer
    if ((self = [self initWithNibName:nibNameOrNil bundle:nibBundleOrNil])){
        
        personid = nameid;
    } 
    
    return self;
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.personid == 10) {
        self.title = @"Tom's Photos";
        person1Name.text = @"Tom";
        person2Name.text = @"Tom";
        
        image1name.text = @"Bonsai";
        image2name.text = @"CrystalBall";
        image1Fname = @"Bonsai_Stock.jpg";
        image2Fname = @"Crystal_Ball.jpg";
        
        
    } else {
        self.title = @"Harry's Photos";
        person1Name.text = @"Harry";
        person2Name.text = @"Harry";

        image1name.text = @"Forest";
        image2name.text = @"River";
        image1Fname = @"Forest.jpg";
        image2Fname = @"river.jpg";
        
    }
  
    
    image1.image = [UIImage imageNamed:image1Fname];
    image2.image = [UIImage imageNamed:image2Fname];
    
    // not required since UIImage imageNamed should be giving
    // an auto-released object
    //[image1.image release];
    //[image2.image release];

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
    
    [image1 release];
    [image1Fname release];
    [image1name release];
    [person1Name release];
    [image1View release];
    
    [image2 release];
    [image2Fname release];
    [image2name release];
    [person2Name release];
    [image2View release];
    
    [super dealloc];
}

- (IBAction) viewPhoto:(id) sender
{
    UIButton *btn = (UIButton *)sender;
    
    if (btn == image1View) {
        NSLog(@"View1 clicked");
        
        UIViewController *thirdViewController =
        [[PhotoDetailViewController alloc] initWithNibNameImage:@"PhotoDetailViewController" bundle:[NSBundle mainBundle] imageName:image1name.text imageFname:image1Fname];
        
        [self.navigationController pushViewController:thirdViewController animated:YES];
        
        [thirdViewController release]; 
        
    } else if (btn == image2View) {
        NSLog(@"View2 clicked");

        UIViewController *thirdViewController =
        [[PhotoDetailViewController alloc] initWithNibNameImage:@"PhotoDetailViewController" bundle:[NSBundle mainBundle] imageName:image2name.text imageFname:image2Fname];
        
        [self.navigationController pushViewController:thirdViewController animated:YES];
        
        [thirdViewController release]; 
        
    } 
}

@end
