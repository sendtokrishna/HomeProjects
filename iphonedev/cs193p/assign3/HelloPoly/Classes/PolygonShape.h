//
//  PolygonShape.h
//  WhatATool
//
//  Created by kps on 6/22/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PolygonShape : NSObject

    {
        int numberOfSides;
        int minimumNumberOfSides;
        int maximumNumberOfSides;
        
    }
    
    @property int numberOfSides;
    @property int minimumNumberOfSides;
    @property int maximumNumberOfSides;

    // derived properties (not saved in ivars, not synthesized, only methods)
    @property (readonly) float angleInDegrees;
    @property (readonly) float angleInRadians;
    @property (readonly) NSString* name;

    // designated initializer
- (id) initWithNumberOfSides:(int)sides minimumNumberOfSides:(int)min maximumNumberOfSides:(int)max;
+ (NSString *)getPolygonName:(int)sides;
@end
