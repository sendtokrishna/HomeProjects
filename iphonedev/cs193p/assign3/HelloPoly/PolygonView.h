//
//  PolygonView.h
//
//  Created by kps on 6/29/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "PolygonShape.h"

@interface PolygonView : UIView {

    IBOutlet PolygonShape *poly;
    
}

- (void)drawRect:(CGRect)rect;
+ (NSArray *)pointsForPolygonInRect:(CGRect)rect numberOfSides:(int)numberOfSides;

@end
