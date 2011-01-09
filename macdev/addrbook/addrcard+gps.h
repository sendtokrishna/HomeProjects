//
//  addrcard.h
//  addrbook
//
//  Created by kps on 12/20/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface addrcard : NSObject 
{
	NSNumber *ZipCode;
	NSString *FName, *LName, *Email, *Desc;
}

@property (copy, nonatomic) NSString *LName, *FName, *Email, *Desc;
 
- (addrcard *) initWithFName: (NSString *) name1 LName: (NSString *) name2 Email: (NSString *) mail Zip: (NSInteger) i;
- (NSInteger) zip;
- (void) setZipCode:(NSInteger) z;
- (NSString *)description;
- (NSComparisonResult) compareAddrCards:(addrcard *) card;
- (BOOL) hasFName:(NSString *)name;
@end // @interface addrcard

// category used to add a new method
@interface addrcard (gps)

- (BOOL) areNeighbours: (addrcard *) card;

@end // @category (gps)
