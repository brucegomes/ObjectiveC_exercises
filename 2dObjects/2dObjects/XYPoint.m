//
//  XYPoint.m
//  2dObjects
//
//  Created by XcodeBench on 9/29/18.
//  Copyright © 2018 XcodeBench. All rights reserved.
//

#import "XYPoint.h"

@implementation XYPoint

@synthesize x, y; // makes accessors methods

-(void) setX:(int)xVal andY:(int)yVal {
    
    x = xVal;
    y = yVal;
}

@end
