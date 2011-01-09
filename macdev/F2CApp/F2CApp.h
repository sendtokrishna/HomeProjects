//
//  F2CApp.h
//  F2CApp
//
//  Created by kps on 12/24/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//


#import <Cocoa/Cocoa.h>



@interface F2CApp : NSObject {

    
    IBOutlet NSTextField *faren;
	IBOutlet NSTextField *cels;
}

// NOTE: the prototype is fixed
- (IBAction) ConvertFarenheitToCelsius:(id) sender;

@end
