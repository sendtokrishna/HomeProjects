//
//  PhotoDetailViewController.h
//  paparazzi-1
//
//  Created by kps on 7/9/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PhotoDetailViewController : UIViewController {

    NSString *imageName;
    NSString *imageFileName;

    IBOutlet UIImageView *imageView;
}

@property (nonatomic, retain) NSString *imageName;
@property (nonatomic, retain) NSString *imageFileName;

- (id)initWithNibNameImage:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil imageName:(NSString *)name imageFname:(NSString *)fname;

@end
