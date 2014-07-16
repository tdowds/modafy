//
//  ModItems.m
//  modafy
//
//  Created by Trevor Dowds on 7/16/14.
//  Copyright (c) 2014 Modafy. All rights reserved.
//

#import "ModItems.h"

@implementation ModItems
- (instancetype)initWithImage:(UIImage *)image
{
    self = [super init];
    
    if (self) {
        self.image = image;
    }
    return self;
}
@end
