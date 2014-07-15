//
//  ModPants.h
//  modafy
//
//  Created by Trevor Dowds on 7/15/14.
//  Copyright (c) 2014 Modafy. All rights reserved.
//

#import "ModClothing.h"

@interface ModPants : ModClothing
@property NSUInteger length;
@property NSUInteger width;
- (instancetype)initWithColor:(NSString *)color
                         size:(NSString *)size
                       length:(NSUInteger)length
                        width:(NSUInteger)width
                         type:(NSString *)type
                        image:(UIImage *)image;

@end
