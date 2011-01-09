//
//  addrbk.m
//  addrbook
//
//  Created by kps on 12/20/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "addrbk.h"
#import "addrcard+gps.h"

@implementation addrbk

- (void) sort
{
	[cards sortUsingSelector: @selector(compareAddrCards:)];
}

- (NSUInteger) count
{	
	return [cards count];
}

- (void) show
{

	NSInteger c = 0;

	if ( [self count] == 0 ) return;
	
	for (addrcard *card in cards)
	{
		NSLog(@"[%d] %@",c, card);
		c++;
	}
	
}


- (void) addCardFname:(NSString *) name1 Lname:(NSString *) name2 Email:(NSString *) mail Zip:(NSInteger) z;
{
	addrcard *card = nil;
	
	card = [[addrcard alloc] initWithFName:name1 LName:name2 Email:mail Zip:z];
	
	if (!cards)
	{
		cards = [[NSMutableArray alloc] initWithCapacity:0];
	}
	
	[cards addObject:card];
}

- (void) removeCardAtIndex:(NSUInteger) i
{
	[cards removeObjectAtIndex: i];
}

// inherited from NSObject no decl required in @interface
//    of this class
- (void) dealloc
{

	for (addrcard *card in cards)
	{
		// TBD; memory leak ? should instead just do deleteObject() ?
		[card release];
	}
	
	[super dealloc];
	
}

- (id) findFName:(NSString *)name
{	
	for (addrcard *card in cards)
	{
		if ([card hasFName: name])
		{
			return card;
		}
	}
	return nil;
}
@end
