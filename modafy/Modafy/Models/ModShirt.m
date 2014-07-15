//
//  ModShirt.m
//  modafy
//
//  Created by Trevor Dowds on 7/15/14.
//  Copyright (c) 2014 Modafy. All rights reserved.
//

#import "ModShirt.h"

@implementation ModShirt
-(instancetype)initWithColor:(NSString *)color
                        size:(NSString *)size
                        type:(NSString *)type
                       image:(UIImage *)image;
{
    self = [super init];
    
    if (self) {
        self.color = color;
        self.size = size;
        self.type = type;
        self.image = image;
    }
    
    return self;
}
@end
