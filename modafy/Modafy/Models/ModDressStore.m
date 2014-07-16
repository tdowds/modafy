//
//  ModDressStore.m
//  modafy
//
//  Created by Trevor Dowds on 7/16/14.
//  Copyright (c) 2014 Modafy. All rights reserved.
//

#import "ModDressStore.h"

@interface ModDressStore ()
@property (strong, nonatomic) NSMutableArray *dresses;
@property int index;
@end

@implementation ModDressStore

- (NSMutableArray *)dresses
{
    if (!_dresses) _dresses = [[NSMutableArray alloc] init];
    return _dresses;
}

- (void)add:(ModDress *)dress
{
    [self.dresses addObject:dress];
    self.index = [self.dresses indexOfObject:dress];
    self.dress = dress;
}

- (void)left
{
    self.index++;
    self.index = (self.index < 0) ? ([self.dresses count] -1):
    self.index % [self.dresses count];
    self.dress = [self.dresses objectAtIndex:self.index];
}

- (void)right
{
    self.index--;
    self.index = (self.index < 0) ? ([self.dresses count] -1):
    self.index % [self.dresses count];
    self.dress = [self.dresses objectAtIndex:self.index];
}


@end
