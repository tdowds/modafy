//
//  ModPantsStore.h
//  modafy
//
//  Created by Trevor Dowds on 7/15/14.
//  Copyright (c) 2014 Modafy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ModPants.h"

@interface ModPantsStore : NSObject
@property (weak, nonatomic) ModPants *pants;
- (void)add:(ModPants *)bottom;
- (void)left;
- (void)right;
@end
