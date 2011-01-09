//
//  F2CApp.m
//  F2CApp
//
//  Created by kps on 12/24/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "F2CApp.h"


@implementation F2CApp

- (void) awakeFromNib
{
	NSNumberFormatter *numFormat = [[NSNumberFormatter alloc] init];
	[numFormat autorelease];
	
	// by this time the NSTextField object would have
	// been created and connected to the instance variables
	
	[ faren setStringValue:@"Enter temp in F" ];
	[ cels setStringValue:@"Temp in C" ];
	
}

- (IBAction) ConvertFarenheitToCelsius: (id) sender
{

	int FarenInt = [[ faren stringValue ] intValue];
	
	[ cels setStringValue: [ NSString stringWithFormat:@"%.2f", (FarenInt-32)*(5.0/9.0) ]];

	
}

@end
