//
//  ModBagStore.h
//  modafy
//
//  Created by Trevor Dowds on 7/16/14.
//  Copyright (c) 2014 Modafy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ModBag.h"

@interface ModBagStore : NSObject
@property (weak, nonatomic) ModBag *bag;
- (void)add:(ModBag *)bag;
- (void)left;
- (void)right;
@end
