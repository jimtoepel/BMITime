//
//  main.m
//  BMITime
//
//  Created by Jim Toepel on 2/22/15.
//  Copyright (c) 2015 FunderDevelopment. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // Create and instance of BNRPerson
        BNRPerson *mikey = [[BNRPerson alloc] init];
        
        // Give that instance interesting values using "Setters"
        mikey.weightInKilos = 96;
        mikey.heightInMeters = 1.8;
        
        // Log the instance varriables using the "getters"
        float height = mikey.heightInMeters;
        int weight = mikey.weightInKilos;
        NSLog(@"mikey is %.2f meters tall and weighs %d kilograms", height, weight);
        
        // Log some values using custom methods
        float bmi = [mikey bodyMassIndex];
        NSLog(@"mikey has a BMI of %f", bmi);
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
