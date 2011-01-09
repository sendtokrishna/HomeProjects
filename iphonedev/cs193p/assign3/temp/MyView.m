//
//  MyView.m
//
//  Created by kps on 7/1/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MyView.h"

@implementation MyView


- (void) drawRect:(CGRect)rect
{
    
    CGRect bounds = [self bounds];
    
    [[UIColor grayColor] setFill];
    UIRectFill(bounds);
    
    CGContextRef myContext = UIGraphicsGetCurrentContext();
    
    CGContextBeginPath(myContext);
    
    CGContextMoveToPoint(myContext, 300.0, 400.0);
    
    CGContextAddLineToPoint(myContext, 110.0, 210.0);
    
    CGContextAddLineToPoint(myContext, 120.0, 130.0);
    
    CGContextClosePath(myContext);
    
    [[UIColor whiteColor] setFill];
    
    [[UIColor redColor] setStroke];
    
    CGContextDrawPath(myContext, kCGPathFillStroke);
    
}
@end
