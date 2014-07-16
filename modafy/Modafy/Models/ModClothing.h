//
//  ModClothing.h
//  modafy
//
//  Created by Trevor Dowds on 7/15/14.
//  Copyright (c) 2014 Modafy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ModClothing : NSObject
@property  (weak, nonatomic) NSString *color;
@property (weak, nonatomic) NSString *size;
@property (weak, nonatomic) NSString *type;
@property (weak, nonatomic) UIImage *image;
- (instancetype) initWithColor:(NSString *)color
                          size:(NSString *)size
                          type:(NSString *)type
                         image:(UIImage *)image;
@end
