//
//  ModDressStore.h
//  modafy
//
//  Created by Trevor Dowds on 7/16/14.
//  Copyright (c) 2014 Modafy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ModDress.h"

@interface ModDressStore : NSObject
@property (weak, nonatomic) ModDress *dress;
- (void)add:(ModDress *)dress;
- (void)left;
- (void)right;
@end
