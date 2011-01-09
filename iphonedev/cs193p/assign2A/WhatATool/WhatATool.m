#import <Foundation/Foundation.h>

#import "PolygonShape.h"

// Section1: Strings as file system paths
//           method invocations, NSLog usage, 
//           fast enumeration access, inline var decl
void PrintPathInfo() {

    // the following hides the NSLog header !
    // NSLog(@"\n --- Section1: Strings as file paths --- \n");

    NSLog(@"=======================================");
    NSLog(@"--- Section1: Strings as file paths ---");
    NSLog(@"=======================================");

    NSString *homeDir = @"~";
    
    homeDir = [homeDir stringByExpandingTildeInPath];
    
    NSLog(@"My home folder is at %@", homeDir);
        
    for (NSString *pathComp in [homeDir pathComponents]) {
        
        NSLog(@"%@", pathComp);
    }
    
}


// Section2 : Finding out a bit about our own process
//            static class methods
void PrintProcessInfo() {

    NSLog(@"==========================================================");
    NSLog(@"--- Section2 : Finding out a bit about our own process ---");
    NSLog(@"==========================================================");

    NSProcessInfo *procInfo = [NSProcessInfo processInfo];
    
    NSLog(@"Process Name: '%@' Process ID: '%d'", 
          [procInfo processName],
          [procInfo processIdentifier]);
    
}         

// Section3 : A little bookmark dictionary
//            mutable dictionary and fast enumeration
void PrintBookmarkInfo() {
    
    NSLog(@"===============================================");
    NSLog(@"--- Section3 : A little bookmark dictionary ---");
    NSLog(@"===============================================");


    NSMutableDictionary *urlDict = 
        [NSMutableDictionary dictionaryWithObjectsAndKeys:
         [NSURL URLWithString:@"http://www.stanford.edu"],
         @"Stanford University", 
         [NSURL URLWithString:@"http://www.apple.com"],         
         @"Apple",
         [NSURL URLWithString:@"http://cs193p.stanford.edu"],
         @"CS193P",
         [NSURL URLWithString:@"http://itunes.stanford.edu"],
         @"Stanford on iTunes",
         [NSURL URLWithString:@"http://stanfordshop.com"],
         @"Stanford Mall",
         nil];
    
    // key based enumeration
    for (NSString *name in urlDict) {
        
        if ( [name hasPrefix:@"Stanford"] ) {
            NSLog(@"Key: '%@' URL: '%@'",
                  name, [[urlDict objectForKey:name] absoluteString]);
        }
    }
}

// Section4 : Selectors, Classes and Introspection
void PrintIntrospectionInfo() {
    
    BOOL respLowerCaseSel = NO;

    NSLog(@"=======================================================");
    NSLog(@"--- Section4 : Selectors, Classes and Introspection ---");
    NSLog(@"=======================================================");
    
    NSMutableArray *myMutableArray = [NSMutableArray array];
    
    // derived init (stringWithFormat) from NSString
    NSMutableString *myMutableStr = [NSMutableString stringWithFormat:@"Hello '%@'", @"krishna"];
    
    [myMutableArray addObject:@"String object"];
    
    [myMutableArray addObject:[NSURL URLWithString:@"http://www.stanford.edu"]];
    
    [myMutableArray addObject:[NSProcessInfo processInfo]];
    
    // dictionaries can contain only objects not C integers
    [myMutableArray addObject:[NSDictionary dictionaryWithObjectsAndKeys:@"3",@"a",@"4",@"b",nil]];
    
    [myMutableArray addObject:myMutableStr];
    
    for (id obj in myMutableArray) {
        
        NSLog(@"Class name: %@", [obj className]);
        // no specific print qualifier for BOOL type
        NSLog(@"Is Member of NSString: %@",[obj isMemberOfClass:[NSString class]] ? @"YES" : @"NO" );
        NSLog(@"Is Kind of NSString: %@",[obj isKindOfClass:[NSString class]] ? @"YES" : @"NO" );

        respLowerCaseSel = [obj respondsToSelector:@selector(lowercaseString)];
        NSLog(@"Responds to lowercaseString: %@", respLowerCaseSel ? @"YES" : @"NO");
              
        if ( respLowerCaseSel ) {
            NSLog(@"lowercaseString is: %@",[obj performSelector:@selector(lowercaseString)]);
        }
        
        NSLog(@"==============================");
    }
}

void PrintPolygonInfo(void) {

    NSLog(@"===============================================");
    NSLog(@"--- Section6 : Using the PolygonShape class ---");
    NSLog(@"===============================================");
    
    NSMutableArray *polyArray = [[NSMutableArray alloc] init];
    PolygonShape *tempPoly = nil;
    
    tempPoly = [[PolygonShape alloc] init];

    [tempPoly setMinimumNumberOfSides:3];
    [tempPoly setMaximumNumberOfSides:7];
    [tempPoly setNumberOfSides:4];

    // addObject doesn't increment the retain count of the polyArray
    [polyArray addObject:tempPoly];
    
    // invokes the -description method on PolygonShape
    NSLog(@"Added polygon: %@", tempPoly);
    
    tempPoly = [[PolygonShape alloc] init];
    
    [tempPoly setMinimumNumberOfSides:5];
    [tempPoly setMaximumNumberOfSides:9];
    [tempPoly setNumberOfSides:6];
    
    [polyArray addObject:tempPoly];
    
    // invokes the -description method on PolygonShape
    NSLog(@"Added polygon: %@", tempPoly);
    
    tempPoly = [[PolygonShape alloc] initWithNumberOfSides:12 minimumNumberOfSides:9 maximumNumberOfSides:12];
    
    [polyArray addObject:tempPoly];
    
    // invokes the -description method on PolygonShape
    NSLog(@"Added polygon: %@", tempPoly);
    
    for (id poly in polyArray) {
        [poly setNumberOfSides:10];
        NSLog(@"Poly :%@", poly); // to show that invalid set failed
    }
    
    for (id poly in polyArray) {
        [poly release];
    }
    
    [polyArray release];
    
    tempPoly = nil;
    polyArray = nil;
    
    // to init PolygonShape with unsupported values (should return nil)
    
    tempPoly = [[PolygonShape alloc] initWithNumberOfSides:20 minimumNumberOfSides:30 maximumNumberOfSides:4];
    
    NSLog(@"Polygon: %@", tempPoly);
    
}

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    PrintPathInfo();            // Assign1B.Section1
    PrintProcessInfo();         // Assign1B.Section2
    PrintBookmarkInfo();        // Assign1B.Section3
    PrintIntrospectionInfo();   // Assign1B.Section4
    PrintPolygonInfo();         // Assign2A.Section6 (nothing for section5)
    
    [pool drain];
    return 0;
}
