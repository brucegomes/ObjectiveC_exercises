//
//  Fraction.h
//  FractionTest
//
//  Created by XcodeBench on 9/19/18.
//  Copyright © 2018 XcodeBench. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN  // delimits this section as not having simple pointers to be null(except typedef)

@interface Fraction : NSObject

@property int numerator, denominator; // properties are vars that are set to have getters and setters created
                                      // automatically with the @systesize in implementation
/* -(int) numerator;
-(int) denominator;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;  */

-(void) setTO: (int) n over: (int) d;
-(void) print;
-(double) convertToNum;
-(void) add: (Fraction *) f;
-(void) reduce;

@end

NS_ASSUME_NONNULL_END
