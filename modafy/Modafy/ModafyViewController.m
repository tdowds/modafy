//
//  ModafyViewController.m
//  Modafy
//
//  Created by Trevor Dowds on 7/15/14.
//  Copyright (c) 2014 Modafy. All rights reserved.
//

#import "ModafyViewController.h"

@interface ModafyViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *image;

@end

@implementation ModafyViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.image setImage:[UIImage imageNamed:@"blackt"]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
