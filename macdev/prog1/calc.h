//
//  calc.h
//  prog1
//
//  Created by kps on 12/12/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface myCalc : NSObject
{
	double savedValue;
}

// @ property also creates new
//    instance members, savedValue is
//	  an instance member which lacks a
//    property to keep it encapsulated
@property double curValue;
@property int dummy;

// first two methods are redundant in the presence
//	of accessor methods
- (double)	current;
- (void)	setCurrent:(double)value;

- (void)	save;
- (void)	restore;
- (void)	add:(int)value;
- (void)	sub:(int)value;
- (void)	mul:(int)value;
- (void)	div:(int)value;
- (void)	addX:(int) x powY:(unsigned int)y;
- (void)	print;
@end

@interface myCalcSubclass : myCalc

- (void) print;
- (void) hello;
@end

