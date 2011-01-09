//
//  PhotoListViewController.h
//  paparazzi-1
//
//  Created by kps on 7/9/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PhotoListViewController : UIViewController {

    NSInteger   personid;
    NSString    *image1Fname;
    NSString    *image2Fname;
    
    IBOutlet  UIImageView *image1;
    IBOutlet  UILabel *image1name;
    IBOutlet  UILabel *person1Name;
    IBOutlet  UIButton *image1View;
    
    IBOutlet  UIImageView *image2;
    IBOutlet  UILabel *image2name;
    IBOutlet  UILabel *person2Name;
    IBOutlet  UIButton *image2View;
    
}


@property NSInteger personid;

- (id)initWithNibNameId:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil personId:(NSInteger)nameid;

- (IBAction) viewPhoto:(id) sender;
@end
