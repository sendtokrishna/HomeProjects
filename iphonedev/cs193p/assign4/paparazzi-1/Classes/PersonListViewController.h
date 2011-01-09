//
//  PersonListViewController.h
//  paparazzi-1
//
//  Created by kps on 7/8/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PersonListViewController : UIViewController {
    
    IBOutlet UIImageView *image1;
    IBOutlet UILabel     *label1;
    IBOutlet UIButton    *button1;
    
    IBOutlet UIImageView *image2;
    IBOutlet UILabel     *label2;
    IBOutlet UIButton    *button2;
    
}

// TBD: use single IBAction with feedback from UIButton ?
- (IBAction)viewTomPhotos;
- (IBAction)viewHarryPhotos;

@end
