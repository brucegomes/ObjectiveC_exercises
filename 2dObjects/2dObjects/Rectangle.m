//
//  Rectangle.m
//  2dObjects
//
//  Created by XcodeBench on 9/29/18.
//  Copyright © 2018 XcodeBench. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle
{
    XYPoint * origin;
}

@synthesize width, height;

-(void) setOrigin: (XYPoint *) pt {
    
    if(!origin) // test if origin is null or == 0
        origin = [[XYPoint alloc] init];
    
    origin.x = pt.x;
    origin.y = pt.y;
}

-(XYPoint *) origin {
    
    return origin;
}

-(void) setWidth: (int) w andHeight: (int) h {
    
    width = w;
    height = h;
}

-(int) area {
    
    return width * height;
}

-(int) perimeter {
    
    return (width * height) * 2;
}

@end
