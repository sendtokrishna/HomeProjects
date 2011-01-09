//
//  MyEmployee.h
//  PayCalcMVC
//
//  Created by kps on 1/1/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <CoreData/CoreData.h>


@interface MyEmployee :  NSManagedObject  
{
}

@property (nonatomic, retain) NSNumber * hourlyRate;
@property (nonatomic, retain) NSNumber * payment;
@property (nonatomic, retain) NSNumber * canOvertime;
@property (nonatomic, retain) NSNumber * hoursWorked;
@property (nonatomic, retain) NSNumber * standardHours;
@property (nonatomic, retain) NSString * name;

@end



