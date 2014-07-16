//
//  ModAccessoriesStore.h
//  modafy
//
//  Created by Trevor Dowds on 7/16/14.
//  Copyright (c) 2014 Modafy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ModAccessories.h"

@interface ModAccessoriesStore : NSObject
@property (weak, nonatomic) ModAccessories *accessory;
- (void)add:(ModAccessories *)accessory;
- (void)left;
- (void)right;
@end
