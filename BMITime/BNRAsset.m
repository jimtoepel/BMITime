//
//  BNRAsset.m
//  BMITime
//
//  Created by Jim Toepel on 3/2/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
