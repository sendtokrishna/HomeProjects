//
//  HelloPolyAppDelegate.h
//  HelloPoly
//
//  Created by kps on 6/23/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PolygonShape.h"

@interface HelloPolyAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    IBOutlet PolygonShape *poly;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

