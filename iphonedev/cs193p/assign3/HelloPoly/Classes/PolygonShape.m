//
//  PolygonShape.m
//  WhatATool
//
//  Created by kps on 6/22/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PolygonShape.h"

#define MY_POLY_MIN_SIDES   (3)
#define MY_POLY_MAX_SIDES   (12)

@implementation PolygonShape

@synthesize numberOfSides;
@synthesize minimumNumberOfSides;
@synthesize maximumNumberOfSides;


// did not synthesize the readonly/derived attributes/properties

- (void) setNumberOfSides:(int) value {
    
    if (value > self.maximumNumberOfSides) {
        
        NSLog(@"Invalid number of sides: %d is greater than the maximum of %d allowed",
              value, self.maximumNumberOfSides);

    } else if (value < self.minimumNumberOfSides) {
        
        NSLog(@"Invalid number of sides: %d is smaller than the minimum of %d allowed",
              value, self.minimumNumberOfSides);
    
    } else {
        // must not use self.numberOfSides = value => causes infinite recursion
        // assign to the ivar directly
        numberOfSides = value;
    }
}

- (void) setMinimumNumberOfSides:(int) value {
    
    if (value < MY_POLY_MIN_SIDES) {
        NSLog(@"Invalid number of minimum sides: %d is smaller than the minimum of %d allowed",
              value, MY_POLY_MIN_SIDES);
    } else {
        minimumNumberOfSides = value;
    }
    
}

- (void) setMaximumNumberOfSides:(int) value {

    if (value > MY_POLY_MAX_SIDES) {
        NSLog(@"Invalid number of minimum sides: %d is greater than the maximum of %d allowed",
              value, MY_POLY_MAX_SIDES);
    } else {
        maximumNumberOfSides= value;
    }
    
}

- (float) angleInDegrees {
    return (180 * (self.numberOfSides - 2)/ self.numberOfSides);
}

- (float) angleInRadians {
    
    return (((float)(self.numberOfSides - 2)/self.numberOfSides) * M_PI);
}

+ (NSString *) getPolygonName:(int)sides
{
    NSString *polygonNames[] = {
        @"", @"", @"", /* 0,1,2 */
        @"Triangle", @"Square", @"Pentagon",
        @"Hexagon",@"Heptagon", @"Octagon",
        @"Nonagon", @"Decagon", @"Hendecagon",
        @"Dodecagon"};
        
    return polygonNames[sides];
}

- (NSString *) name {
    
    return [ PolygonShape getPolygonName:self.numberOfSides ];
}

- (NSString *)description {
    
    return [NSString stringWithFormat:@"Hello I am a %d sided polygon (aka a %@) with angle of %f degrees (%f radians)", self.numberOfSides,self.name,self.angleInDegrees, self.angleInRadians];    
}

- (id) initWithNumberOfSides:(int)sides minimumNumberOfSides:(int)min maximumNumberOfSides:(int)max {
    
    if (self = [super init]) {

        self.minimumNumberOfSides = min;
        self.maximumNumberOfSides = max;
        self.numberOfSides = sides;
        
        // check to fail init with unsupported values
        if ((self.minimumNumberOfSides != min) ||
            (self.maximumNumberOfSides != max) ||
            (self.numberOfSides != sides)) {
            
            // can do release also
            [self autorelease];
            return nil;
        }
        
    }
    
    return self;
}

- (id) init {
    
    return [self initWithNumberOfSides:5 minimumNumberOfSides:3 maximumNumberOfSides:10];
}

- (void) dealloc {

    NSLog(@"dealloc on PolygonShape instance being invoked");
    
    [super dealloc];
    
}

@end
