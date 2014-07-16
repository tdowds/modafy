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
@property (weak, nonatomic) IBOutlet UIImageView *bottomsView;
@property (weak, nonatomic) IBOutlet UIImageView *shoesView;
@property (weak, nonatomic) IBOutlet UIImageView *bagView;
@property (weak, nonatomic) IBOutlet UIImageView *accessoryView;
 - (IBAction)handleSwipe:(UIGestureRecognizer *)sender;

@end
