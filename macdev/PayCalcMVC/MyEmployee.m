// 
//  MyEmployee.m
//  PayCalcMVC
//
//  Created by kps on 1/1/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MyEmployee.h"


@implementation MyEmployee 

@dynamic hourlyRate;
@dynamic payment;
@dynamic canOvertime;
@dynamic hoursWorked;
@dynamic standardHours;
@dynamic name;

// override method of NSManagedObject
+ (NSSet *) keyPathsForValuesAffectingpayment
{
    return [NSSet setWithObjects: @"hourlyRate", @"hoursWorked",
            @"canOvertime", @"standardHours", nil ];
    
}

- (NSNumber *)payment
{
    float HourlyRate = [[self valueForKey:@"hourlyRate"] floatValue];
    float CalculatedPay = 0.0;
    float HoursWorked = [[self valueForKey:@"hoursWorked"] floatValue];
    float StdHours = [[self valueForKey:@"standardHours"] floatValue];
    BOOL  CanOvertime = [[self valueForKey:@"canOvertime"] floatValue];
    
    if (HoursWorked <= StdHours)
    {
        CalculatedPay = HourlyRate * HoursWorked;
        
    }
    else {
    
        CalculatedPay = HourlyRate * StdHours;
        
        if (CanOvertime)
        {
            CalculatedPay += 1.5 * HourlyRate * (HoursWorked - StdHours);
        }
        else {
            CalculatedPay += HourlyRate * (HoursWorked - StdHours);
        }
        
    }

   return [NSNumber numberWithFloat:CalculatedPay];

}
@end
