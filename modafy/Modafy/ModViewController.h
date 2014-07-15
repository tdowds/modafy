//
//  ModViewController.h
//  modafy
//
//  Created by Trevor Dowds on 7/15/14.
//  Copyright (c) 2014 Modafy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ModViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
 - (IBAction)handleSwipe:(UIGestureRecognizer *)sender;

@end
