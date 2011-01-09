//
//  Controller.m
//
//  Created by kps on 6/23/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Controller.h"

@implementation Controller

- (void) updateInterface {

    numberOfSidesLabel.text = [NSString stringWithFormat:@"%d",poly.numberOfSides];
    
    if (poly.numberOfSides == poly.minimumNumberOfSides) {
        decreaseButton.enabled = NO;
    } else {
        decreaseButton.enabled = YES;
    }
        
    if (poly.numberOfSides == poly.maximumNumberOfSides) {
        increaseButton.enabled = NO;
    } else {
        increaseButton.enabled = YES;
    }
    
    // only the outlet values are changed
    // actual re-rawing is handled by the UIViews (button/labels) etc
}

- (IBAction)decrease:(id)sender {
    
    NSLog(@"decrease method");
    
    poly.numberOfSides = poly.numberOfSides - 1;
    
    [self updateInterface];    
    
}

- (IBAction)increase:(id)sender {
        
    NSLog(@"increase method");
    
    poly.numberOfSides = poly.numberOfSides + 1;
    
    [self updateInterface];    
    
}

- (void) awakeFromNib {

    // because of the binding to poly in IB
    // 'poly' member is already setup we
    // just need to initialize it
    
    // do we need to release it ? how are these
    // cleaned up?
    
   if (poly != nil)
       NSLog(@"poly already setup! retainCount %d", [poly retainCount]);
    
   [poly initWithNumberOfSides:numberOfSidesLabel.text.integerValue minimumNumberOfSides:3 maximumNumberOfSides:12];
    
    NSLog(@"My polygon %@", poly);
}

- (void) dealloc {
    
    NSLog(@"Freeing up the controller");
    
    [poly release];
    [super dealloc];
}
@end
