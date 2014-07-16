//
//  ModBagStore.m
//  modafy
//
//  Created by Trevor Dowds on 7/16/14.
//  Copyright (c) 2014 Modafy. All rights reserved.
//

#import "ModBagStore.h"

@interface ModBagStore ()
@property (strong, nonatomic) NSMutableArray *bags;
@property int index;
@end

@implementation ModBagStore

- (NSMutableArray *)bags
{
    if (!_bags) _bags = [[NSMutableArray alloc] init];
    return _bags;
}

- (void)add:(ModBag *)bag
{
    [self.bags addObject:bag];
    self.index = [self.bags indexOfObject:bag];
    self.bag = bag;
}

- (void)left
{
    self.index++;
    self.index = (self.index < 0) ? ([self.bags count] -1):
    self.index % [self.bags count];
    self.bag = [self.bags objectAtIndex:self.index];
}

- (void)right
{
    self.index--;
    self.index = (self.index < 0) ? ([self.bags count] -1):
    self.index % [self.bags count];
    self.bag = [self.bags objectAtIndex:self.index];
}

@end
