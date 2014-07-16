//
//  ModItems.h
//  modafy
//
//  Created by Trevor Dowds on 7/16/14.
//  Copyright (c) 2014 Modafy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ModItems : NSObject
@property (weak, nonatomic) UIImage *image;
- (instancetype)initWithImage:(UIImage *)image;
@end
