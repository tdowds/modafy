//
//  ModViewController.m
//  modafy
//
//  Created by Trevor Dowds on 7/15/14.
//  Copyright (c) 2014 Modafy. All rights reserved.
//

#import "ModViewController.h"
#import "ModTopStore.h"
#import "ModShirt.h"

@interface ModViewController ()
@property (strong, nonatomic) ModTopStore *store;
@end

@implementation ModViewController


-(ModTopStore*)store
{
    if (!_store) _store = [[ModTopStore alloc] init];
   return _store;
}


- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    ModShirt *firstShirt = [[ModShirt alloc] initWithColor:(@"blue") size:(@"medium") type:(@"shirt") image:([UIImage imageNamed:(@"lions-shirt")])];
    ModShirt *secondShirt = [[ModShirt alloc] initWithColor:(@"red") size:(@"small") type:(@"shirt") image:([UIImage imageNamed:(@"RD-T-Shirt")])];
    
    [self.store add:firstShirt];
    [self.store add:secondShirt];
    [self.imageView setImage:(self.store.shirt.image)];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)handleSwipe:(UISwipeGestureRecognizer *)sender {

    UISwipeGestureRecognizerDirection direction = [(UISwipeGestureRecognizer *) sender direction];

    if (direction == UISwipeGestureRecognizerDirectionLeft){
       [self.store left];
        [self.imageView setImage:(self.store.shirt.image)];
    } else if (direction == UISwipeGestureRecognizerDirectionRight){
       [self.store right];
        [self.imageView setImage:(self.store.shirt.image)];
    }
}

@end
