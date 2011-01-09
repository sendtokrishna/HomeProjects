#import "calc.h"



// --- program section ---

void drawLine(int spaces, int count, char c)
{
	int i=0;
	
	for (i=0; i < spaces; i++) printf(" ");
	for (i=0; i < count; i++) printf("%c", c);

	printf("\n");
}

int main (int argc, const char * argv[]) {
	
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

#if 0
	int tNum = 0;
#endif
	
    NSLog(@"Objective-C programming rocks!!");

	// alloc, init, release methods are inherited
	// from NSobject (from Foundation Library)
	
	myCalc *calc = [[ myCalc alloc ] init ];
	
	// pointer to superclass can refer to subclass object
	myCalc *subclass = [[ myCalcSubclass alloc ] init ];
	id someObjRef;
	Class clsObj = nil;
	SEL   method;
	
	[ calc setCurrent:10.00 ];
	[ calc add:2 ];
	[ calc save ];
	[ calc setCurrent:0  ];
	[ calc restore ];
	[ calc mul:3 ];
	
	
	// NSLog by default uses newline
	NSLog(@"Calculator object:%p (size %i) has value %f",
		  calc, sizeof(*calc), [ calc current ], calc.curValue);

	calc.curValue = 5.1;

	[ calc addX:2 powY:3 ];
	
	NSLog(@"Calculator object:%p (size %i) has value %f",
		  calc, sizeof(*calc), [ calc current ], calc.curValue);

	// sending an unknown message to the myCalc class
	// using 'id' variable otherwise compile error
	someObjRef = calc;
	
	// added a hello method in a different class
	// to silence the compiler warning! else
	// compiler warns that it has not seen ANY prototype
	// for hello method in ANY classes so far!
	
	// following call prints the 'doesNotRecognize'
	// message but goes into gdb ??
	@try {
		[ someObjRef hello ];
	}
	@catch (NSException * e) {
		NSLog(@"Exception: %@%@", [e name], [e reason ]);
	}
	@finally {
		NSLog(@"invoked unknown method on the object");
	}
	
	// examples of reflection support in Objective-C
	clsObj = [ calc class ];
	method = @selector(addX:powY:);
	
	if ([calc respondsToSelector:method ] == YES)
		NSLog(@"calc object supports addX:powY: method");
	else
		NSLog(@"calc object DOES NOT support addX:powY: method");
	
	NSLog(@"Class object for calc variable = %@", clsObj);
	
	[ calc release ];

	// polymorphic call since 'subclass' variable can point
	// to either myCalc or myCalcSubclass objects (known only
	// at runtime)
	[ subclass print ];
	
	
	[ subclass release ];
	
#if 0	
	// loop example - draw triangular numbers
	printf("Enter the triangulor number: ");
	// notice %i instead of %d in scanf
	scanf("%i", &tNum);
	
	for(int i=0; i < tNum; i++)
	{
		drawLine(tNum+5-i,(2*i)+1,'*');
	}
#endif
    
	[pool drain];
	
    return 0;
}
