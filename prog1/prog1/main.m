//
//  main.m
//  prog1
//
//  Created by XcodeBench on 9/18/18.
//  Copyright © 2018 XcodeBench. All rights reserved.
//

#import <Foundation/Foundation.h>

// @interface secrion

@interface Fraction : NSObject

- (void) setNumerator: (int) n;
- (void) setDenominator: (int) d;
- (int) numerator;
- (int) denominator;
- (void) print;


@end


// @implementation

@implementation Fraction
{
    int numerator;
    int denominator;
}

- (void) setNumerator:(int) n
{
    numerator = n;
}

- (void) setDenominator:(int) d
{
    denominator = d;
}

- (int) numerator{  // they can have same name as vars
    return numerator;
}

- (int) denominator{
    return denominator;
}

- (void) print
{
    NSLog(@"%i/%i", numerator, denominator);
}

@end

// --- Program ---

int main( int argc, char * argv[] )
{
    @autoreleasepool {
        Fraction *frac1 = [[Fraction alloc] init]; // also can be done with ... = [Fraction new], new replaces the 2-steps
        Fraction *frac2 = [[Fraction alloc] init];
        
        // set frac1 2/3
        
        [frac1 setNumerator: 2];
        [frac1 setDenominator: 3];
        
        // set frac2 3/7
        
        [frac2 setNumerator: 3];
        [frac2 setDenominator: 7];
        
        // Print
        
        NSLog(@"1st fraction is: ");
        [frac1 print];
        
        NSLog(@"2nd fraction is: %i/%i", [frac2 numerator], [frac2 denominator]);
       // [frac2 print];
        
    }
}
         




