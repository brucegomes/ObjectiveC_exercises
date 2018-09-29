//
//  Rectangle.h
//  2dObjects
//
//  Created by XcodeBench on 9/29/18.
//  Copyright © 2018 XcodeBench. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYPoint.h"

NS_ASSUME_NONNULL_BEGIN

// @class XYPoint;  // this lets the compiler know its a class, its more efficient than #import because
                    // we are not pre proccessing the whole class, it wouldn't work if we had to reference its methods
                    // on implementation though, in that case the import is necessary

@interface Rectangle : NSObject

@property int width, height;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *) pt;
-(int) area;
-(int) perimeter;
-(void) setWidth: (int) w andHeight: (int) h;

@end

NS_ASSUME_NONNULL_END
