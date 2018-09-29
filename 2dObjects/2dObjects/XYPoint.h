//
//  XYPoint.h
//  2dObjects
//
//  Created by XcodeBench on 9/29/18.
//  Copyright © 2018 XcodeBench. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XYPoint : NSObject

@property int x, y;

-(void) setX: (int) xVal andY: (int) yVal;

@end

NS_ASSUME_NONNULL_END
