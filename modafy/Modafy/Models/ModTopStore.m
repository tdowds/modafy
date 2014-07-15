//
//  ModTopStore.m
//  modafy
//
//  Created by Trevor Dowds on 7/15/14.
//  Copyright (c) 2014 Modafy. All rights reserved.
//

#import "ModTopStore.h"

@interface ModTopStore()
@property (strong, nonatomic) NSMutableArray *tops;
@property int index;
@end

@implementation ModTopStore

- (NSMutableArray *)tops
{
    if (!_tops) _tops = [[NSMutableArray alloc] init];
    return _tops;
}

- (void)add:(ModShirt *)shirt
{
    [self.tops addObject:shirt];
    self.index = [self.tops indexOfObject:shirt];
    self.shirt = shirt;
}

- (void)left
{
    if (self.index > 0 && self.index + 1 < [self.tops count]) {
        self.index += 1;
        self.shirt = [self.tops objectAtIndex:self.index];
    }
}

- (void)right
{
    if (self.index - 1 >= 0 && self.index < [self.tops count]) {
        self.index -= 1;
        self.shirt = [self.tops objectAtIndex:self.index];
    }
}

@end
