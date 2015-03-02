//
//  BNREmployee.m
//  BMITime
//
//  Created by Jim Toepel on 2/26/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

@implementation BNREmployee


// Accessors for assets properties
- (void)setAssets:(NSArray *)a
{
    _assets = [a mutableCopy];
}


- (NSArray *) assets
{
    return [_assets copy];
}


-(void)addAsset:(BNRAsset *)a
{
    // Is assets nil?
    if (!_assets) {
        
        // create the array
        _assets = [[NSMutableArray alloc] init];
    }
    [_assets addObject:a];
}


-(unsigned int) valueOfAssets
{
    // Sum up the resale value of the assets
    unsigned int sum = 0;
    for (BNRAsset *a in _assets) {
        sum += [a resaleValue];
    }
    return sum;
}


-(double)yearsOfEmployment
{
    // Do I have a non-nil date?
    if (self.hireDate) {
        //NSTimeInterval is the same as a double
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31557600.0;
    } else {
        return 0;
    }
}


-(float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}


-(NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>" , self.employeeID, self.valueOfAssets];
}


-(void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
