//
//  MyReminderApp.m
//
//  Created by kps on 12/26/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "MyReminderApp.h"

@implementation MyReminderApp


- (void) awakeFromNib
{
    [ GrowlApplicationBridge setGrowlDelegate: self ];
    
    // TBD: create the date formatter object here since its
    //      constant, but need to retain it else alarmFormat
    //      is released before 'notifyAction' method
    //      don't know where to release it (LEAK!!)
    alarmFormat = [[[NSDateFormatter alloc] init] autorelease ];
        
    [alarmFormat setDateFormat:@"hh:mm a 'on' yyyy-MM-dd"];
    
    [alarmFormat retain];
    
    [notifyMessage setStringValue:@"Enter your message"];
    [notifySecs setStringValue:@"hh:mm PM/AM on yyyy-MM-dd"];
    
    [scheduledNotifies setStringValue:@"0"];
}

- (NSDictionary *) registrationDictionaryForGrowl
{
    NSArray *messages = [ NSArray arrayWithObjects:@"Notify1", nil];
    
    NSDictionary *registeredMessages = 
        [NSDictionary dictionaryWithObjectsAndKeys:
            messages, GROWL_NOTIFICATIONS_ALL,
            messages, GROWL_NOTIFICATIONS_DEFAULT, nil ];
    
    return registeredMessages;
}

// TBD: the schedule button should be enabled
//      only after all the required inputs have
//      provided (after input validation)

- (IBAction)notifyAction:(id)sender {
        
    NSDate *alarmDate;
    NSTimeInterval secs;
    
    alarmDate = [alarmFormat dateFromString:[notifySecs stringValue]];
    
    secs = [alarmDate timeIntervalSinceDate:[NSDate date]];

    [NSTimer scheduledTimerWithTimeInterval:secs
                                     target:self
                                   selector:@selector(sendGrowlNotify:)
                                   userInfo:[notifyMessage stringValue]
                                    repeats:NO];
    
    [scheduledNotifies setStringValue:[NSString stringWithFormat:@"%u",
                                       [ scheduledNotifies intValue ]+1]];
    
    [notifyMessage setStringValue:@"Enter your message"];
    [notifySecs setStringValue:@"hh:mm PM/AM on yyyy-MM-dd"];

}

- (void) sendGrowlNotify:(NSTimer *)timer
{
    
    [GrowlApplicationBridge 
        notifyWithTitle:[NSString stringWithFormat:@"%@", [alarmFormat stringFromDate:[NSDate date]]]
        description:[timer userInfo] notificationName:@"Notify1" 
        iconData:nil priority:10 isSticky:YES clickContext:nil];
    
    
    [scheduledNotifies setStringValue:[NSString stringWithFormat:@"%u",
                                       [ scheduledNotifies intValue ]-1]];

}


@end
