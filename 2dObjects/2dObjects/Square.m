//
//  Square.m
//  2dObjects
//
//  Created by XcodeBench on 9/29/18.
//  Copyright © 2018 XcodeBench. All rights reserved.
//

#import "Square.h"

@implementation Square

-(void) setSide: (int) s {
    
    [self setWidth: (int) s andHeight: (int) s];
}

-(int) side{
    
    return self.width;             // self is like the java equivalent "this", except here we are not accesssing the
}                                  // parent var directly, but through the getter [self width]

@end
