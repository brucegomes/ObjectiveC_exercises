//
//  Calculator.h
//  Fraction_Calculator
//
//  Created by Gomes, Bruce on 10/2/18.
//  Copyright © 2018 Gomes, Bruce. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Fraction.h"

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject

@property (strong, nonatomic) Fraction * operand1;
@property (strong, nonatomic) Fraction * operand2;
@property (strong, nonatomic) Fraction * accumulator;

-(Fraction *) performOperation: (char) op;
-(void) clear;

@end

NS_ASSUME_NONNULL_END
