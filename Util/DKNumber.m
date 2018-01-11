//
//  DKNumber.m
//  DemoKingIOSProject
//
//  Created by 王亚振 on 2018/1/11.
//  Copyright © 2018年 DemoKing. All rights reserved.
//

#import "DKNumber.h"

@implementation DKNumber
/**
 取绝对值
 
 @param ab ab
 @return ab
 */
+ (int)abs:(int)ab {
    return abs(ab);
}
/**
 浮点型 取绝对值
 
 @param fab fab
 @return return
 */
+ (CGFloat)fabs:(CGFloat)fab {
    return fabs(fab);
}
/**
 向上取整
 
 @param c c
 @return NSInteger
 */
+ (NSInteger)ceilf:(CGFloat)c {
    return ceilf(c);
}
/**
 向下取整
 
 @param f f
 @return NSInteger
 */
+ (NSInteger)floor:(CGFloat)f {
    return floor(f);
}
/**
 获取随机数
 
 @param from 从
 @param to 到
 @return 随机数
 */
+ (NSInteger)randomNumberFromValue:(int)from
                           toValue:(int)to {
    return (NSInteger)(from + (arc4random() % (to - from + 1)));
}
@end
