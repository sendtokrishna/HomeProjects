//
//  Controller.h
//
//  Created by kps on 6/23/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "PolygonShape.h"

@interface Controller : NSObject {
    
    // view elements
    IBOutlet UIButton *decreaseButton;
    IBOutlet UIButton *increaseButton;
    IBOutlet UILabel *numberOfSidesLabel;
    
    // model elements
    IBOutlet PolygonShape *poly;
}
- (IBAction)decrease:(id)sender;
- (IBAction)increase:(id)sender;
@end
