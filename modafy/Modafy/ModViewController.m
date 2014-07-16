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
#import "ModBagStore.h"
#import "ModAccessoriesStore.h"
#import "ModShirt.h"
#import "ModPants.h"
#import "ModShoe.h"
#import "ModBag.h"
#import "ModAccessories.h"


@interface ModViewController ()
@property (strong, nonatomic) ModTopStore *store;
@property (strong, nonatomic) ModPantsStore *pantsStore;
@property (strong, nonatomic) ModShoeStore *shoesStore;
@property (strong, nonatomic) ModBagStore *bagStore;
@property (strong, nonatomic) ModAccessoriesStore *accStore;

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

-(ModBagStore *)bagStore
{
    if (!_bagStore) _bagStore = [[ModBagStore alloc] init];
    return _bagStore;
}

-(ModAccessoriesStore *)accStore
{
    if (!_accStore) _accStore = [[ModAccessoriesStore alloc] init];
    return _accStore;
}


- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //SHIRTS
    ModShirt *firstShirt = [[ModShirt alloc] initWithColor:(@"coral") size:(@"medium") type:(@"shirt") image:([UIImage imageNamed:(@"t12")])];
    ModShirt *secondShirt = [[ModShirt alloc] initWithColor:(@"red") size:(@"small") type:(@"shirt") image:([UIImage imageNamed:(@"t5")])];
    ModShirt *thirdShirt = [[ModShirt alloc] initWithColor:(@"black") size:(@"x-small") type:(@"shirt") image:([UIImage imageNamed:(@"t2")])];
    
    //PANTS
    ModPants *firstPant = [[ModPants alloc] initWithColor:@"blue" size:@"4" length:30 width:30 type:@"pants" image:[UIImage imageNamed:@"b3"]];
    ModPants *secondPant = [[ModPants alloc] initWithColor:@"salmon" size:@"4" length:30 width:30 type:@"pants" image:[UIImage imageNamed:@"b4"]];
    ModPants *thirdPant = [[ModPants alloc] initWithColor:@"striped" size:@"5" length:30 width:30 type:@"pants" image:[UIImage imageNamed:(@"b10")]];
    
    //SHOES
    ModShoe *firstShoe = [[ModShoe alloc] initWithColor:@"" size:@"8" type:@"shoe" image:[UIImage imageNamed:@"s1"]];
    ModShoe *secondShoe = [[ModShoe alloc] initWithColor:@"" size:@"8" type:@"shoe" image:[UIImage imageNamed:@"s11"]];
    ModShoe *thirdShoe = [[ModShoe alloc] initWithColor:@"" size:@"8" type:@"shoe" image:[UIImage imageNamed:@"s15"]];

    //HANDBAGS
    ModBag *firstBag = [[ModBag alloc] initWithImage:[UIImage imageNamed:@"a3"]];
    ModBag *secondBag = [[ModBag alloc] initWithImage:[UIImage imageNamed:@"a4"]];
    
    //ACCESSORIES
    ModAccessories *firstAcc = [[ModAccessories alloc] initWithImage:[UIImage imageNamed:@"scarf"]];
    ModAccessories *secondAcc = [[ModAccessories alloc] initWithImage:[UIImage imageNamed:@"scarf2"]];
    
    
    
    //ADD SHIRT
    [self.store add:firstShirt];
    [self.store add:secondShirt];
    [self.store add:thirdShirt];
    [self.imageView setImage:(self.store.shirt.image)];
    
    //ADD PANTS
    [self.pantsStore add:firstPant];
    [self.pantsStore add:secondPant];
    [self.pantsStore add:thirdPant];
    [self.bottomsView setImage:self.pantsStore.pants.image];
    
    //ADD SHOES
    [self.shoesStore add:firstShoe];
    [self.shoesStore add:secondShoe];
    [self.shoesStore add:thirdShoe];
    [self.shoesView setImage:self.shoesStore.shoe.image];
    
    //ADD BAGS
    [self.bagStore add:firstBag];
    [self.bagStore add:secondBag];
    [self.bagView setImage:self.bagStore.bag.image];
    
    //ADD ACCESSORIES
    [self.accStore add:firstAcc];
    [self.accStore add:secondAcc];
    [self.accessoryView setImage:self.accStore.accessory.image];
    
    
    

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
        } else if (self.clothID == 3) {
            [self.bagStore left];
            [self.bagView setImage:self.bagStore.bag.image];
        } else if (self.clothID == 4){
            [self.accStore left];
            [self.accessoryView setImage:self.accStore.accessory.image];
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
        } else if (self.clothID == 3) {
            [self.bagStore right];
            [self.bagView setImage:self.bagStore.bag.image];
        } else if (self.clothID == 4){
            [self.accStore right];
            [self.accessoryView setImage:self.accStore.accessory.image];
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
- (IBAction)selectBag:(id)sender {
    self.clothID = 3;
}
- (IBAction)selectAcc:(id)sender {
    self.clothID = 4;
}



@end
