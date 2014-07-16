//
//  ModViewController.m
//  modafy
//
//  Created by Trevor Dowds on 7/15/14.
//  Copyright (c) 2014 Modafy. All rights reserved.
//

#import "ModViewController.h"
#import "ModTopStore.h"
#import "ModPantsStore.h"
#import "ModShoeStore.h"
#import "ModShirt.h"
#import "ModPants.h"
#import "ModShoe.h"

@interface ModViewController ()
@property (strong, nonatomic) ModTopStore *store;
@property (strong, nonatomic) ModPantsStore *pantsStore;
@property (strong, nonatomic) ModShoeStore *shoesStore;
@property int clothID;
@end

@implementation ModViewController


-(ModTopStore*)store
{
    if (!_store) _store = [[ModTopStore alloc] init];
   return _store;
}

-(ModPantsStore *)pantsStore
{
    if (!_pantsStore) _pantsStore = [[ModPantsStore alloc] init];
    return _pantsStore;
}

-(ModShoeStore *)shoesStore
{
    if (!_shoesStore) _shoesStore = [[ModShoeStore alloc] init];
    return _shoesStore;
}


- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    ModShirt *firstShirt = [[ModShirt alloc] initWithColor:(@"blue") size:(@"medium") type:(@"shirt") image:([UIImage imageNamed:(@"lions-shirt")])];
    ModShirt *secondShirt = [[ModShirt alloc] initWithColor:(@"red") size:(@"small") type:(@"shirt") image:([UIImage imageNamed:(@"RD-T-Shirt")])];
    ModPants *firstPant = [[ModPants alloc] initWithColor:@"blue" size:@"4" length:30 width:30 type:@"pants" image:[UIImage imageNamed:@"b3"]];
    ModPants *secondPant = [[ModPants alloc] initWithColor:@"salmon" size:@"4" length:30 width:30 type:@"pants" image:[UIImage imageNamed:@"b4"]];
    ModShoe *firstShoe = [[ModShoe alloc] initWithColor:@"" size:@"8" type:@"shoe" image:[UIImage imageNamed:@"s1"]];
    ModShoe *secondShoe = [[ModShoe alloc] initWithColor:@"" size:@"8" type:@"shoe" image:[UIImage imageNamed:@"s11"]];

    
    
    [self.store add:firstShirt];
    [self.store add:secondShirt];
    [self.imageView setImage:(self.store.shirt.image)];
    
    [self.pantsStore add:firstPant];
    [self.pantsStore add:secondPant];
    [self.bottomsView setImage:self.pantsStore.pants.image];
    
    [self.shoesStore add:firstShoe];
    [self.shoesStore add:secondShoe];
    [self.shoesView setImage:self.shoesStore.shoe.image];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)handleSwipe:(UISwipeGestureRecognizer *)sender {

    UISwipeGestureRecognizerDirection direction = [(UISwipeGestureRecognizer *) sender direction];

    if (direction == UISwipeGestureRecognizerDirectionLeft){
        if (self.clothID == 0) {
            [self.store left];
            [self.imageView setImage:(self.store.shirt.image)];
        } else if (self.clothID == 1) {
            [self.pantsStore left];
            [self.bottomsView setImage:self.pantsStore.pants.image];
        } else if (self.clothID == 2){
            [self.shoesStore left];
            [self.shoesView setImage:self.shoesStore.shoe.image];
        }
        
    } else if (direction == UISwipeGestureRecognizerDirectionRight){
        if (self.clothID == 0) {
            [self.store right];
            [self.imageView setImage:(self.store.shirt.image)];
        } else if (self.clothID == 1) {
            [self.pantsStore right];
            [self.bottomsView setImage:self.pantsStore.pants.image];
        } else if (self.clothID == 2){
            [self.shoesStore right];
            [self.shoesView setImage:self.shoesStore.shoe.image];
        }
    }
}

- (IBAction)selectShirt:(id)sender {
    self.clothID = 0;
}

- (IBAction)selectPants:(id)sender {
    self.clothID = 1;
}
- (IBAction)selectShoe:(id)sender {
    self.clothID = 2;
}

@end
