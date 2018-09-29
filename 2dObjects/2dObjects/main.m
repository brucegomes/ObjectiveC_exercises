//
//  main.m
//  2dObjects
//
//  Created by XcodeBench on 9/29/18.
//  Copyright © 2018 XcodeBench. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Square.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
    // Square class test
       /* Square * mySqueare = [[Square alloc] init];
        
        //[myRect setWidth: 5 andHeight: 8];
        [mySqueare setSide: 5];
        
        NSLog(@"Square: w = %i, h = %i", mySqueare.width, mySqueare.height);
        NSLog(@"Area: %i, Perimeter = %i", [mySqueare area], [mySqueare perimeter]); */
        
    // XYPoint test
        
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        
        [myPoint setX:(int) 100 andY:(int) 200];
        
        [myRect setWidth:(int) 5 andHeight:(int) 8];
        myRect.origin = myPoint;
        
        NSLog(@"Rectangle w = %i, h = %i", myRect.width, myRect.height);
        
        NSLog(@"Origin at: (%i, %i)", myRect.origin.x, myRect.origin.y); // ps: myRect.origin.x is equivalent to [[myRect origin] x]
        
        NSLog(@"Area = %i, Perimeter = %i", [myRect area], [myRect perimeter]);
              
    }
    return 0;
}
