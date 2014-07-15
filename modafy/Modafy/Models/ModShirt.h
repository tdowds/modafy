//
//  ModShirt.h
//  modafy
//
//  Created by Trevor Dowds on 7/15/14.
//  Copyright (c) 2014 Modafy. All rights reserved.
//

#import "ModClothing.h"

@interface ModShirt : ModClothing
-(instancetype)initWithColor:(NSString *)color
                        size:(NSString *)size
                        type:(NSString *)type
                       image:(UIImage *)image;
@end
