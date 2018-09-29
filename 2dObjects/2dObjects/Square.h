//
//  Square.h
//  2dObjects
//
//  Created by XcodeBench on 9/29/18.
//  Copyright © 2018 XcodeBench. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

NS_ASSUME_NONNULL_BEGIN

@interface Square : Rectangle

-(void) setSide: (int) s;
-(int) side;


@end

NS_ASSUME_NONNULL_END
