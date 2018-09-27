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
        
        // set frac to 1/3
        [aFraction setTO: 1 over: 4];
        [bFraction setTO: 1 over: 2];
        
        [aFraction print];
        NSLog(@"+");
        [bFraction print];
        NSLog(@"=");
        
        [aFraction add: bFraction];
        
        [aFraction reduce];
        [aFraction print];
    }
    return 0;
}
