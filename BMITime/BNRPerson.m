//
//  BNRPerson.m
//  BMITime
//
//  Created by Jim Toepel on 2/22/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson


- (float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h*h);
}



@end
