//
//  calc.m
//  prog1
//
//  Created by kps on 12/12/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "calc.h"


@implementation myCalc

@synthesize curValue, dummy;

- (double) current
{
	return curValue;
}

- (void) save
{
	savedValue = curValue;
}

- (void) restore
{
	curValue = savedValue;
}

- (void) setCurrent:(double)value
{
	curValue = value;
}

- (void) add:(int)value
{
	curValue += value;
}

- (void) sub:(int)value
{
	curValue -= value;
}

- (void) mul:(int)value
{
	curValue *= value;
}

- (void) div:(int)value
{
	if (0 != value)
		curValue /= value;
	/* TBD: use an exception here */
}

// do x^y and add to the current value
- (void) addX:(int) x powY:(unsigned int)y
{
	int pow = 1;
	
	if (y==0) return;
	
	for (;y>0; y--) pow *= x;
	
	curValue += pow;
}

- (void) print
{
	NSLog(@"myCalc print method");
}

#if 0
// After this print app falls into debugger ??
// override this method from NSObject
- (void)doesNotRecognizeSelector:(SEL)aSelector
{
	NSLog(@"myCalc received an unknown selector/message = %@",
		NSStringFromSelector(aSelector));
}


#endif

@end

@implementation myCalcSubclass

- (void) print
{
	NSLog(@"myCalcSubclass print method");
}

- (void) hello
{
	NSLog(@"myCalcSubclass Hello");
}
@end

