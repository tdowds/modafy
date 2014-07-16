//
//  ModShoeStore.m
//  modafy
//
//  Created by Trevor Dowds on 7/16/14.
//  Copyright (c) 2014 Modafy. All rights reserved.
//

#import "ModShoeStore.h"

@interface ModShoeStore ()
@property (strong, nonatomic) NSMutableArray *shoes;
@property int index;
@end

@implementation ModShoeStore

- (NSMutableArray *)shoes
{
    if (!_shoes) _shoes = [[NSMutableArray alloc] init];
    return _shoes;
}

- (void)add:(ModShoe *)shoe
{
    [self.shoes addObject:shoe];
    self.index = [self.shoes indexOfObject:shoe];
    self.shoe = shoe;
}

- (void)left
{
    self.index++;
    self.index = (self.index < 0) ? ([self.shoes count] -1):
    self.index % [self.shoes count];
    self.shoe = [self.shoes objectAtIndex:self.index];
}

- (void)right
{
    self.index--;
    self.index = (self.index < 0) ? ([self.shoes count] -1):
    self.index % [self.shoes count];
    self.shoe = [self.shoes objectAtIndex:self.index];
}

@end
