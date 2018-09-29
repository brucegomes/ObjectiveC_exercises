//
//  main.m
//  FractionTest
//
//  Created by XcodeBench on 9/19/18.
//  Copyright © 2018 XcodeBench. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Fraction * aFraction = [[Fraction alloc] init];
        Fraction * bFraction = [[Fraction alloc] init];
        
        Fraction * resultFraction;
        
        // set frac to 1/3
        [aFraction setTO: 1 over: 3];
        [bFraction setTO: 1 over: 2];
        
        [aFraction print: TRUE];
        NSLog(@"+");
        [bFraction print: FALSE];
        NSLog(@"=");
        
        resultFraction = [aFraction add: bFraction];
        
        //[aFraction reduce];
        [resultFraction print: TRUE];
        
        NSLog(@"- %i/%i", aFraction.numerator, aFraction.denominator); // result - aFrac
        resultFraction = [resultFraction subtract: aFraction];
        [resultFraction print: TRUE];
        
        NSLog(@"* %i/%i", aFraction.numerator, aFraction.denominator); // result * aFrac
        resultFraction = [resultFraction multiply: aFraction];
        [resultFraction print: TRUE];
        
        NSLog(@"/ %i/%i", aFraction.numerator, aFraction.denominator); // result / aFrac
        resultFraction = [resultFraction divide: aFraction];
        [resultFraction print: TRUE];
    }
    return 0;
}
