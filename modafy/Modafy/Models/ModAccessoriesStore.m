//
//  ModAccessoriesStore.m
//  modafy
//
//  Created by Trevor Dowds on 7/16/14.
//  Copyright (c) 2014 Modafy. All rights reserved.
//

#import "ModAccessoriesStore.h"

@interface ModAccessoriesStore ()
@property (strong, nonatomic) NSMutableArray *accessories;
@property int index;
@end

@implementation ModAccessoriesStore

- (NSMutableArray *)accessories
{
    if (!_accessories) _accessories = [[NSMutableArray alloc] init];
    return _accessories;
}

- (void)add:(ModAccessories *)accessory
{
    [self.accessories addObject:accessory];
    self.index = [self.accessories indexOfObject:accessory];
    self.accessory = accessory;
}

- (void)left
{
    self.index++;
    self.index = (self.index < 0) ? ([self.accessories count] -1):
    self.index % [self.accessories count];
    self.accessory = [self.accessories objectAtIndex:self.index];
}

- (void)right
{
    self.index--;
    self.index = (self.index < 0) ? ([self.accessories count] -1):
    self.index % [self.accessories count];
    self.accessory = [self.accessories objectAtIndex:self.index];
}

@end
