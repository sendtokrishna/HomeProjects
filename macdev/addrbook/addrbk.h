//
//  addrbk.h
//  addrbook
//
//  Created by kps on 12/20/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

// fwd declaration
@class addrcard;

@protocol lookup

- (id) findFName:(NSString	*)name;

@end

@interface addrbk : NSObject <lookup>
{
	@private
	NSMutableArray *cards;
}

- (void) sort;
- (NSUInteger) count;
- (void) show;
- (void) addCardFname:(NSString *) name1 Lname:(NSString *) name2 Email:(NSString *) mail Zip:(NSInteger) z;
- (void) removeCardAtIndex:(NSUInteger) i;
@end

