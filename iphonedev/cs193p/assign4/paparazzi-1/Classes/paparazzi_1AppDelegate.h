//
//  paparazzi_1AppDelegate.h
//  paparazzi-1
//
//  Created by kps on 7/8/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface paparazzi_1AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    
    IBOutlet UINavigationController *navControllerList;
    IBOutlet UINavigationController *navControllerRecent;
    IBOutlet UITabBarController     *tabBarController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

