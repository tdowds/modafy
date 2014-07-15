//
//  ModPantsStore.m
//  modafy
//
//  Created by Trevor Dowds on 7/15/14.
//  Copyright (c) 2014 Modafy. All rights reserved.
//

#import "ModPantsStore.h"

@interface ModPantsStore ()
@property (strong, nonatomic) NSMutableArray *bottoms;
@property int index;
@end

@implementation ModPantsStore

-(NSMutableArray *)bottoms
{
    if (!_bottoms) _bottoms = [[NSMutableArray alloc] init];
    return _bottoms;
}

- (void)add:(ModPants *)bottom
{
    [self.bottoms addObject:bottom];
    self.index = [self.bottoms indexOfObject:bottom];
    self.pants = bottom;
}

- (void)left
{
    self.index++;
    self.index = (self.index < 0) ? ([self.bottoms count] -1):
    self.index % [self.bottoms count];
    self.pants = [self.bottoms objectAtIndex:self.index];
}

- (void)right
{
    self.index--;
    self.index = (self.index < 0) ? ([self.bottoms count] -1):
    self.index % [self.bottoms count];
    self.pants = [self.bottoms objectAtIndex:self.index];
}


@end
