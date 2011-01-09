#import <Foundation/Foundation.h>

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

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    PrintPathInfo();            // Assign2.Section1
    PrintProcessInfo();         // Assign2.Section2
    PrintBookmarkInfo();        // Assign2.Section3
    PrintIntrospectionInfo();   // Assign2.Section4
    
    [pool drain];
    return 0;
}
