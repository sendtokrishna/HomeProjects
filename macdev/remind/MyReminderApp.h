//
//  MyReminderApp.h
//
//  Created by kps on 12/26/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Growl/Growl.h>

@interface MyReminderApp : NSObject <GrowlApplicationBridgeDelegate>
{
    IBOutlet NSTextField *notifyMessage;
    IBOutlet NSTextField *notifySecs;
    IBOutlet NSTextField *scheduledNotifies;
    
    NSDateFormatter *alarmFormat;
}

- (IBAction)notifyAction:(id)sender;
- (NSDictionary *) registrationDictionaryForGrowl;
- (void) sendGrowlNotify:(NSTimer *)timer;
@end
