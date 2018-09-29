//
//  Fraction.m
//  FractionTest
//
//  Created by XcodeBench on 9/19/18.
//  Copyright © 2018 XcodeBench. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
{
    int denominator;
    int numerator;
}

@synthesize numerator, denominator;  // without this, properties are created with an _ as a prefix

-(void) setTO: (int) n over: (int) d{
    
    numerator = n;
    denominator = d;
}

/*
 -(void) setNumerator: (int) n{
    
    numerator = n;
}

-(void) setDenominator: (int) d {
    
    denominator = d;
}

-(int) numerator{return numerator;}
-(int) denominator{ return denominator;}    */

-(void) print: (BOOL) isReduced{
    
    if(isReduced == true)
        [self reduce];
    
    NSLog(@"%i/%i", numerator, denominator);
}

-(double) convertToNum{ // check int division
    
    if(denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}

-(Fraction *) add: (Fraction*) f {
    
    // a/b + c/d = ((a*d) + (b*c)) / (b * d)
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = ((numerator * f.denominator) + (denominator * f.numerator));
    result.denominator = denominator * f.denominator;
    
    [result reduce];  // ps: [self reduce] would call the reduce inside this instance of Fraction class
    
    return result;
}

-(Fraction *) subtract: (Fraction*) f {
    
    Fraction * result = [[Fraction alloc] init];
    
    result.numerator = numerator - f.numerator;
    result.denominator = denominator - f.denominator;
    
    [result reduce];
    
    return result;
}

-(Fraction *) multiply: (Fraction*) f {
    
    Fraction * result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    
    return result;
}
    
-(Fraction *) divide: (Fraction*) f {
    
    Fraction * result = [[Fraction alloc] init];
    
    result.numerator = numerator * f.denominator;
    result.denominator = denominator * f.numerator;
    
    [result reduce];
    
    return result;
}

-(void) reduce{
    
    int u = numerator;
    int v = denominator;
    int temp;
    
    while(v != 0){
        
        temp = u % v;
        u = v;
        v = temp;
    }
    numerator /= u;
    denominator /= u;
}

@end
