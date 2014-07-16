//
//  ModShoeStore.h
//  modafy
//
//  Created by Trevor Dowds on 7/16/14.
//  Copyright (c) 2014 Modafy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ModShoe.h"

@interface ModShoeStore : NSObject
@property (weak, nonatomic) ModShoe *shoe;
- (void)add:(ModShoe *)shoe;
- (void)left;
- (void)right;
@end
