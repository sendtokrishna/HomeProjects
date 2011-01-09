//
//  addrcard.m
//  addrbook
//
//  Created by kps on 12/20/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import "addrcard+gps.h"


@implementation addrcard

// see below for a hint on the synthesis
@synthesize LName, FName, Email, Desc;

- (addrcard *) initWithFName:(NSString *) name1 LName: (NSString *) name2 Email: (NSString *) mail Zip: (NSInteger) i
{
	
	self = [super init];
	
	if (self)
	{
		// these rely on the setters synthesized from above stmt
		// (hence they take care of proper object cleanups)
	
		self.FName = name1;
		self.LName = name2;
		self.Email = mail;
	
		[self setZipCode:i];
		
		// Desc is setup in description itself (overhead but
		// covers the case of other setters changing the values
		// thus changing the desc)
	}
	
	return self;	
	
}

- (NSInteger) zip
{
	return [ZipCode integerValue];
}

- (void) setZipCode:(NSInteger)z
{
	// release the old object since
	// without this stmt it causes memory leak
	[ZipCode release];
	ZipCode = [[NSNumber alloc] initWithInteger: z];
}

- (NSString *)description
{
	// NOTE: why are commas used to pass arguments here  and not spaces ?
	self.Desc = [NSString stringWithFormat:@"Name: %@ %@, Email: %@, Zip: %d", FName, LName, Email, [self zip]] ;

	return self.Desc;
}

- (NSComparisonResult) compareAddrCards:(addrcard *) card
{
	return [self.FName compare: card.FName];

}

- (BOOL) hasFName:(NSString *)name
{
	return [self.FName isEqualToString:name];
}

// override the dealloc to release all internal objects
- (void) dealloc 
{
	// skipping if checks since OK to call methods
	// on nil objects
	
	[Desc	release];
	[ZipCode	release];
	[FName	release];
	[LName	release];
	[Email	release];
	 
	[super	dealloc];
}

@end

// category implementation
@implementation addrcard (gps)

- (BOOL) areNeighbours: (addrcard *) card
{
	if ( [self zip] == [card zip]) {
		return YES;
	}
	else {
		return NO;
	}

}

@end
