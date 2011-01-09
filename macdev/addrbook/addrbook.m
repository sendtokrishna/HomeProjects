#import <Foundation/Foundation.h>
#import "addrbk.h"
#import "addrcard+gps.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	addrbk *book;
	addrcard *c1, *c2;
	
	book = [[addrbk alloc] init];
	
	[book addCardFname:@"krishna" Lname:@"thommandra" Email:@"t@tpscorp.com" Zip:94086];
	[book addCardFname:@"padmaja" Lname:@"thommandra" Email:@"t@tpscorp.com" Zip:94086];
	[book addCardFname:@"sreya" Lname:@"thommandra" Email:@"t@tpscorp.com" Zip:94086];
	[book addCardFname:@"gopalakrishna" Lname:@"thommandra" Email:@"t@tpscorp.com" Zip:501301];
	[book addCardFname:@"chayakrishna" Lname:@"thommandra" Email:@"t@tpscorp.com" Zip:501301];
	[book addCardFname:@"saradamma" Lname:@"hebbatam" Email:@"t@tpscorp.com" Zip:501301];

	//NSLog("SEL %@", @selector(compareAddrCards:));
	[book sort];
	[book show];

	// protocol
	c1 = [book findFName:@"sreya"];
	c2 = [book findFName:@"krishna"];

	// category
	NSLog(@"Are Sreya and Krishna neighbours? %s",
		  ([c1 areNeighbours:c2] == YES) ? "YES" : "NO");
	
	[book	release];
	
    [pool drain];
    return 0;
}
