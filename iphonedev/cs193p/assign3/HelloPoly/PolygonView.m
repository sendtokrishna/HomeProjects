//
//  PolygonView.m
//
//  Created by kps on 6/29/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PolygonView.h"

@implementation PolygonView

// routine to get an array of points representing
// the polygon inside the polygonView rect with poly.numberOfSides

// a class method! so no instance variable access
+ (NSArray *)pointsForPolygonInRect:(CGRect)rect numberOfSides:(int)numberOfSides { 
    
    CGPoint center = CGPointMake(rect.size.width / 2.0, rect.size.height / 2.0); 
    float radius = 0.9 * center.x; 
    NSMutableArray *result = [NSMutableArray array];
    float angle = (2.0 * M_PI) / numberOfSides; 
    float exteriorAngle = M_PI - angle; 
    float rotationDelta = angle - (0.5 * exteriorAngle);
    
    for (int currentAngle = 0; currentAngle < numberOfSides; currentAngle++) {
        float newAngle = (angle * currentAngle) - rotationDelta; 
        float curX = cos(newAngle) * radius; 
        float curY = sin(newAngle) * radius;
        [result addObject:[NSValue valueWithCGPoint:CGPointMake(center.x + curX, center.y + curY)]];
    } 
    
    return result;
}

- (void)drawRect:(CGRect)rect {

    CGRect bounds = [self bounds];
    NSArray *polyPoints = NULL;
    CGMutablePathRef CGPolyPath = NULL;
    BOOL start = YES;
    
    CGContextRef myContext;
    
    [[UIColor lightGrayColor] setFill];
    UIRectFill(bounds);
               
    [[UIColor blackColor] setStroke];
    UIRectFrame(bounds);

    myContext = UIGraphicsGetCurrentContext();

    //NSLog(@"poly is %@\n", poly);
    
    if (NULL != poly)
    {
        polyPoints = [PolygonView pointsForPolygonInRect:bounds numberOfSides:poly.numberOfSides];
        
        CGPolyPath = CGPathCreateMutable();
        
        for (NSValue *polyPoint in polyPoints)
        {
            
            CGPoint CGPolyPoint = [polyPoint CGPointValue];
                                    
            if (start) {
                CGPathMoveToPoint(CGPolyPath, NULL, CGPolyPoint.x, CGPolyPoint.y);
                start = NO;
            } else {                
                CGPathAddLineToPoint(CGPolyPath, NULL, CGPolyPoint.x, CGPolyPoint.y);                
            }
        }
        
        CGPathCloseSubpath(CGPolyPath);
        
        CGContextAddPath(myContext, CGPolyPath);

        CGContextDrawPath(myContext, kCGPathFillStroke);
        
        CGPathRelease(CGPolyPath);
        
    }
    
#if 0
    {
        
    
    CGGradientRef myGradient;
    CGContextRef myContext;
    CFArrayRef colors = {
        [[UIColor grayColor] CGColor],
        [[UIColor whiteColor] CGColor]
    };
    
    myContext = UIGraphicsGetCurrentContext();
    myGradient = CGGradientCreateWithColorComponents(
            CGColorSpaceCreate(kCGColorSpaceGenericRGB),
            components,
            NULL,
            2);
                        
    CGContextDrawLinearGradient(myContext, myGradient, 
        bounds.origin, 
        CGPointMake(bounds.origin.x+bounds.size.width,
                    bounds.origin.y+bounds.size.height),
        0);
    }
#endif
    
}

@end
