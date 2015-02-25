//
//  BNRPerson.h
//  BMITime
//
//  Created by Jim Toepel on 2/22/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject

@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;


// BNRPerson has a method that calculates the BMI.

- (float)bodyMassIndex;

@end
