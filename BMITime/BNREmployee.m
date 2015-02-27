//
//  BNREmployee.m
//  BMITime
//
//  Created by Jim Toepel on 2/26/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRPerson.h"

@implementation BNREmployee


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

@end
