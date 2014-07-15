//
//  ModTopStore.h
//  modafy
//
//  Created by Trevor Dowds on 7/15/14.
//  Copyright (c) 2014 Modafy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ModShirt.h"

@interface ModTopStore : NSObject
@property (weak, nonatomic) ModShirt *shirt;
- (void)add:(ModShirt *)shirt;
- (void)left;
- (void)right;
@end
