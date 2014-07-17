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
#import "ModDress.h"
#import "ModDressStore.h"


@interface ModViewController ()
@property (strong, nonatomic) ModTopStore *store;
@property (strong, nonatomic) ModPantsStore *pantsStore;
@property (strong, nonatomic) ModShoeStore *shoesStore;
@property (strong, nonatomic) ModBagStore *bagStore;
@property (strong, nonatomic) ModAccessoriesStore *accStore;
@property (strong, nonatomic) ModDressStore *dressStore;

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

-(ModDressStore *)dressStore
{
    if (!_dressStore) _dressStore = [[ModDressStore alloc] init];
    return _dressStore;
}


- (void)viewDidLoad
{
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //SHIRTS
    ModShirt *firstShirt = [[ModShirt alloc] initWithColor:(@"coral") size:(@"medium") type:(@"shirt") image:([UIImage imageNamed:(@"t8")])];
    ModShirt *secondShirt = [[ModShirt alloc] initWithColor:(@"red") size:(@"small") type:(@"shirt") image:([UIImage imageNamed:(@"t7")])];
    ModShirt *thirdShirt = [[ModShirt alloc] initWithColor:(@"black") size:(@"x-small") type:(@"shirt") image:([UIImage imageNamed:(@"t4")])];
    ModShirt *fourthShirt = [[ModShirt alloc] initWithColor:(@"black") size:(@"x-small") type:(@"shirt") image:([UIImage imageNamed:(@"t3")])];
    ModShirt *fifthShirt = [[ModShirt alloc] initWithColor:(@"black") size:(@"x-small") type:(@"shirt") image:([UIImage imageNamed:(@"t2")])];
    ModShirt *sixthShirt = [[ModShirt alloc] initWithColor:(@"black") size:(@"x-small") type:(@"shirt") image:([UIImage imageNamed:(@"t15")])];
   
    
    //PANTS
    
    ModPants *secondPant = [[ModPants alloc] initWithColor:@"salmon" size:@"4" length:30 width:30 type:@"pants" image:[UIImage imageNamed:@"b8"]];
    ModPants *thirdPant = [[ModPants alloc] initWithColor:@"striped" size:@"5" length:30 width:30 type:@"pants" image:[UIImage imageNamed:(@"b6")]];
    ModPants *fourthPant = [[ModPants alloc] initWithColor:@"striped" size:@"5" length:30 width:30 type:@"pants" image:[UIImage imageNamed:(@"b4")]];
    ModPants *fifthPant = [[ModPants alloc] initWithColor:@"striped" size:@"5" length:30 width:30 type:@"pants" image:[UIImage imageNamed:(@"b20")]];
    ModPants *sixthPant = [[ModPants alloc] initWithColor:@"striped" size:@"5" length:30 width:30 type:@"pants" image:[UIImage imageNamed:(@"b2")]];
    ModPants *seventhPant = [[ModPants alloc] initWithColor:@"striped" size:@"5" length:30 width:30 type:@"pants" image:[UIImage imageNamed:(@"b13")]];
    ModPants *eigthPant = [[ModPants alloc] initWithColor:@"striped" size:@"5" length:30 width:30 type:@"pants" image:[UIImage imageNamed:(@"b12")]];
    ModPants *ninthPant = [[ModPants alloc] initWithColor:@"striped" size:@"5" length:30 width:30 type:@"pants" image:[UIImage imageNamed:(@"b11")]];
    ModPants *tenthPant = [[ModPants alloc] initWithColor:@"striped" size:@"5" length:30 width:30 type:@"pants" image:[UIImage imageNamed:(@"b1")]];
   
    
    //SHOES
    ModShoe *firstShoe = [[ModShoe alloc] initWithColor:@"" size:@"8" type:@"shoe" image:[UIImage imageNamed:@"s9"]];
    ModShoe *secondShoe = [[ModShoe alloc] initWithColor:@"" size:@"8" type:@"shoe" image:[UIImage imageNamed:@"s6"]];
    ModShoe *thirdShoe = [[ModShoe alloc] initWithColor:@"" size:@"8" type:@"shoe" image:[UIImage imageNamed:@"s25"]];
    ModShoe *fourthShoe = [[ModShoe alloc] initWithColor:@"" size:@"8" type:@"shoe" image:[UIImage imageNamed:@"s2"]];
    ModShoe *fifthShoe = [[ModShoe alloc] initWithColor:@"" size:@"8" type:@"shoe" image:[UIImage imageNamed:@"s19"]];
    ModShoe *sixthShoe = [[ModShoe alloc] initWithColor:@"" size:@"8" type:@"shoe" image:[UIImage imageNamed:@"s11"]];

    //HANDBAGS
    ModBag *firstBag = [[ModBag alloc] initWithImage:[UIImage imageNamed:@"a5"]];
    ModBag *secondBag = [[ModBag alloc] initWithImage:[UIImage imageNamed:@"a1"]];
    ModBag *thirdBag = [[ModBag alloc] initWithImage:[UIImage imageNamed:@"a4"]];
    ModBag *fourthBag = [[ModBag alloc] initWithImage:[UIImage imageNamed:@"a3"]];

    
    //ACCESSORIES
    ModAccessories *firstAcc = [[ModAccessories alloc] initWithImage:[UIImage imageNamed:@"e1"]];
    ModAccessories *secondAcc = [[ModAccessories alloc] initWithImage:[UIImage imageNamed:@"e2"]];
    ModAccessories *thirdAcc = [[ModAccessories alloc] initWithImage:[UIImage imageNamed:@"e3"]];
    ModAccessories *fourthAcc = [[ModAccessories alloc] initWithImage:[UIImage imageNamed:@"e4"]];
    ModAccessories *fifthAcc = [[ModAccessories alloc] initWithImage:[UIImage imageNamed:@"e5"]];
    
    //DRESSES
    ModDress *firstDress = [[ModDress alloc] initWithColor:@"black" size:@"8" type: @"dress" image:[UIImage imageNamed:@"t19"]];
    ModDress *secondDress = [[ModDress alloc] initWithColor:@"black" size:@"8" type: @"dress" image:[UIImage imageNamed:@"t18"]];
    ModDress *thirdDress = [[ModDress alloc] initWithColor:@"black" size:@"8" type: @"dress" image:[UIImage imageNamed:@"t17"]];
    ModDress *fourthDress = [[ModDress alloc] initWithColor:@"black" size:@"8" type: @"dress" image:[UIImage imageNamed:@"t16"]];
    ModDress *fifthDress = [[ModDress alloc] initWithColor:@"black" size:@"8" type: @"dress" image:[UIImage imageNamed:@"t20"]];

    
    
    //ADD SHIRT
    [self.store add:firstShirt];
    [self.store add:secondShirt];
    [self.store add:thirdShirt];
    [self.store add:fourthShirt];
    [self.store add:fifthShirt];
    [self.store add:sixthShirt];
    [self.imageView setImage:(self.store.shirt.image)];
    
    //ADD PANTS
    [self.pantsStore add:secondPant];
    [self.pantsStore add:thirdPant];
    [self.pantsStore add:fourthPant];
    [self.pantsStore add:fifthPant];
    [self.pantsStore add:sixthPant];
    [self.pantsStore add:seventhPant];
    [self.pantsStore add:eigthPant];
    [self.pantsStore add:ninthPant];
    [self.pantsStore add:tenthPant];
    [self.bottomsView setImage:self.pantsStore.pants.image];
    
    //ADD SHOES
    [self.shoesStore add:firstShoe];
    [self.shoesStore add:secondShoe];
    [self.shoesStore add:thirdShoe];
    [self.shoesStore add:fourthShoe];
    [self.shoesStore add:fifthShoe];
    [self.shoesStore add:sixthShoe];
    [self.shoesView setImage:self.shoesStore.shoe.image];
    
    //ADD BAGS
    [self.bagStore add:firstBag];
    [self.bagStore add:secondBag];
    [self.bagStore add:thirdBag];
    [self.bagStore add:fourthBag];
    [self.bagView setImage:self.bagStore.bag.image];
    
    //ADD ACCESSORIES
    [self.accStore add:firstAcc];
    [self.accStore add:secondAcc];
    [self.accStore add:thirdAcc];
    [self.accStore add:fourthAcc];
    [self.accStore add:fifthAcc];
    [self.accessoryView setImage:self.accStore.accessory.image];
    
    //ADD DRESSES
    [self.dressStore add:firstDress];
    [self.dressStore add:secondDress];
    [self.dressStore add:thirdDress];
    [self.dressStore add:fourthDress];
    [self.dressStore add:fifthDress];
    self.dressView.hidden = YES;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)swipeLeft:(ModObject *)currentPiece view:(UIImageView *)view coordinate:(CGFloat)coord
{
    [UIView animateWithDuration:0.3 animations:^{
        CGRect frame = view.frame;
        frame.origin.x = self.view.frame.origin.x - 320;
        view.frame = frame;
    } completion:^(BOOL finished) {
        [view setImage:(currentPiece.image)];
        [self.view bringSubviewToFront:view];
        CGRect frame = view.frame;
        frame.origin.x = self.view.frame.origin.x + 320;
        view.frame = frame;
        [UIView animateWithDuration:0.3 animations:^{
            CGRect frame = view.frame;
            frame.origin.x = coord;
            view.frame = frame;
        }];
    }];
}

- (void)swipeRight:(ModObject *)currentPiece view:(UIImageView *)view coordinate:(CGFloat)coord
{
    [UIView animateWithDuration:0.3 animations:^{
        CGRect frame = view.frame;
        frame.origin.x = self.view.frame.origin.x + 320;
        view.frame = frame;
    } completion:^(BOOL finished) {
        [view setImage:(currentPiece.image)];
        [self.view bringSubviewToFront:view];
        CGRect frame = view.frame;
        frame.origin.x = self.view.frame.origin.x - 320;
        view.frame = frame;
        [UIView animateWithDuration:0.3 animations:^{
            CGRect frame = view.frame;
            frame.origin.x = coord;
            view.frame = frame;
        }];
    }];
}

- (IBAction)handleShirtSwipe:(UISwipeGestureRecognizer *)sender {
    UISwipeGestureRecognizerDirection direction = [(UISwipeGestureRecognizer *) sender direction];
    if (direction == UISwipeGestureRecognizerDirectionLeft) {
        [self.store left];
        CGFloat n = 32;
        [self swipeLeft:self.store.shirt view:self.imageView coordinate:n];
    } else if (direction == UISwipeGestureRecognizerDirectionRight) {
        [self.store right];
        CGFloat n = 32;
        [self swipeRight:self.store.shirt view:self.imageView coordinate:n];
    }
}

- (IBAction)handlePantsSwipe:(UISwipeGestureRecognizer *)sender {
    UISwipeGestureRecognizerDirection direction = [(UISwipeGestureRecognizer *) sender direction];
    if (direction == UISwipeGestureRecognizerDirectionLeft) {
        [self.pantsStore left];
        CGFloat n = 25;
        [self swipeLeft:self.pantsStore.pants view:self.bottomsView coordinate:n];
    } else if (UISwipeGestureRecognizerDirectionRight) {
        [self.pantsStore right];
        CGFloat n = 25;
        [self swipeRight:self.pantsStore.pants view:self.bottomsView coordinate:n];
    }
}

- (IBAction)handleShoesSwipe:(UISwipeGestureRecognizer *)sender {
    UISwipeGestureRecognizerDirection direction = [(UISwipeGestureRecognizer *) sender direction];
    if (direction == UISwipeGestureRecognizerDirectionLeft) {
        [self.shoesStore left];
        CGFloat n = 56;
        [self swipeLeft:self.shoesStore.shoe view:self.shoesView coordinate:n];
    } else if (direction == UISwipeGestureRecognizerDirectionRight) {
        [self.shoesStore right];
        CGFloat n = 56;
        [self swipeRight:self.shoesStore.shoe view:self.shoesView coordinate:n];
    }
}

- (IBAction)handleBagSwipe:(UISwipeGestureRecognizer *)sender {
    UISwipeGestureRecognizerDirection direction = [(UISwipeGestureRecognizer *) sender direction];
    if (direction == UISwipeGestureRecognizerDirectionLeft) {
        [self.bagStore left];
        CGFloat n = 201;
        [self swipeLeft:self.bagStore.bag view:self.bagView coordinate:n];
    } else if (direction == UISwipeGestureRecognizerDirectionRight) {
        [self.bagStore right];
        CGFloat n = 201;
        [self swipeRight:self.bagStore.bag view:self.bagView coordinate:n];
    }
}

- (IBAction)handleAccSwipe:(UISwipeGestureRecognizer *)sender {
    UISwipeGestureRecognizerDirection direction = [(UISwipeGestureRecognizer *) sender direction];
    if (direction == UISwipeGestureRecognizerDirectionLeft) {
        [self.accStore left];
        CGFloat n =201;
        [self swipeLeft:self.accStore.accessory view:self.accessoryView coordinate:n];
    } else if (direction == UISwipeGestureRecognizerDirectionRight) {
        [self.accStore right];
        CGFloat n =201;
        [self swipeRight:self.accStore.accessory view:self.accessoryView coordinate:n];
    }
}

- (IBAction)handleDressSwipe:(UISwipeGestureRecognizer *)sender {
    UISwipeGestureRecognizerDirection direction = [(UISwipeGestureRecognizer *) sender direction];
    if (direction == UISwipeGestureRecognizerDirectionLeft) {
        [self.dressStore left];
        CGFloat n = 14;
        [self swipeLeft:self.dressStore.dress view:self.dressView coordinate:n];
    } else if (direction == UISwipeGestureRecognizerDirectionRight) {
        [self.dressStore right];
        CGFloat n = 14;
        [self swipeRight:self.dressStore.dress view:self.dressView coordinate:n];
    }
}




- (IBAction)selectShirt:(id)sender {
    self.clothID = 0;
    self.imageView.hidden = NO;
    self.bottomsView.hidden = NO;
    self.dressView.hidden = YES;
}

- (IBAction)selectPants:(id)sender {
    self.clothID = 1;
    self.imageView.hidden = NO;
    self.bottomsView.hidden = NO;
    self.dressView.hidden = YES;
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
- (IBAction)selectDress:(id)sender {
    self.clothID = 5;
    self.imageView.hidden = YES;
    self.bottomsView.hidden = YES;
    self.dressView.hidden = NO;
    [self.dressView setImage:self.dressStore.dress.image];
}



@end
