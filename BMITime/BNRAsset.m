//
//  BNRAsset.m
//  BMITime
//
//  Created by Jim Toepel on 3/2/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//

#import "BNRAsset.h"
#import "BNREmployee.h"

@implementation BNRAsset

- (NSString *)description
{
    // is holder tru?
    if (self.holder) {
        return [NSString stringWithFormat:@"<%@:$%d, assigned to %@>", self.label, self.resaleValue, self.holder];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d unassigned>", self.label, self.resaleValue];
    }
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
