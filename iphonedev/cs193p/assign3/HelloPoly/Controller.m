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
    
    polyName.text = poly.name;
  
    // the slider's setValue does not invoke sliderChanged method
    slider.value = poly.numberOfSides;
    
    [polyView setNeedsDisplay];
    
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

- (IBAction)sliderChanged:(id)sender {
    
    poly.numberOfSides = slider.value;
    
    [self updateInterface];
}

- (void) awakeFromNib {

    // because of the binding to poly in IB
    // 'poly' member is already setup we
    // just need to initialize it
    
    // do we need to release it ? how are these
    // cleaned up?
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    int sides = [defaults integerForKey:@"numberOfSides"];
    
    // if the key doesn't exist (first launch?) this method returns 0
    if (0 == sides) sides = 5;
    
   if (poly != nil)
       NSLog(@"poly already setup! retainCount %d", [poly retainCount]);
    
   [poly initWithNumberOfSides:sides minimumNumberOfSides:3 maximumNumberOfSides:12];
    
    NSLog(@"My polygon %@ view %@", poly, polyView);
    
    [self updateInterface];
    
}

- (void) dealloc {
    
    NSLog(@"Freeing up the controller");
    
    [poly release];
    [super dealloc];
}
@end
