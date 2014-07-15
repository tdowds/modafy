//
//  ModPants.m
//  modafy
//
//  Created by Trevor Dowds on 7/15/14.
//  Copyright (c) 2014 Modafy. All rights reserved.
//

#import "ModPants.h"

@implementation ModPants
-(instancetype)initWithColor:(NSString *)color size:(NSString *)size length:(NSUInteger)length width:(NSUInteger)width type:(NSString *)type image:(UIImage *)image
{
    self = [super init];
    
    if (self) {
        self.color = color;
        self.size = size;
        self.length = length;
        self.width = width;
        self.type = type;
        self.image = image;
    }
    return self;
}
@end
