//
//  DKString.m
//  DemoKingIOSProject
//
//  Created by 王亚振 on 2018/1/11.
//  Copyright © 2018年 DemoKing. All rights reserved.
//

#import "DKString.h"

@implementation DKString
/**
 int -- > string
 
 @param value int
 @return string
 */
+ (NSString *)stringWithInt:(int)value {
    return [NSString stringWithFormat:@"%d",value];
}
/**
 NSInteger -- > string
 
 @param value NSInteger
 @return string
 */
+ (NSString *)stringWithInteger:(NSInteger)value {
    return [NSString stringWithFormat:@"%ld",(long)value];
}
/**
 float -- > string
 
 @param value float
 @return string
 */
+ (NSString *)stringWithFloat:(float)value {
    return [NSString stringWithFormat:@"%f",value];
}
/**
 float -- > string 保留小数
 
 @param value float
 @param position 小数
 @return string
 */
+ (NSString *)stringWithFloat:(float)value position:(int)position {
    NSDecimalNumberHandler* roundingBehavior = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundDown scale:position raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:NO];
    NSDecimalNumber *ouncesDecimal;
    NSDecimalNumber *roundedOunces;
    ouncesDecimal = [[NSDecimalNumber alloc] initWithFloat:value];
    roundedOunces = [ouncesDecimal decimalNumberByRoundingAccordingToBehavior:roundingBehavior];
    return [NSString stringWithFormat:@"%@",roundedOunces];
}
/**
 float -- > string 保留小数 小数为0自动忽略
 
 @param value float
 @param shortPosition 小数
 @return string
 */
+ (NSString *)stringWithFloat:(float)value shortPosition:(int)shortPosition {
    NSString *string = [DKString stringWithFloat:value position:shortPosition];
    NSString *lastString = [[string componentsSeparatedByString:@"."] lastObject];
    if ([lastString integerValue] == 0) {
        return [[string componentsSeparatedByString:@"."] firstObject];
    }else {
        return string;
    }
}
/**
 double -- > string
 
 @param value double
 @return string
 */
+ (NSString *)stringWithDouble:(double)value {
    return [NSString stringWithFormat:@"%f",value];
}
/**
 id -- > string
 
 @param value id
 @return string
 */
+ (NSString *)stringWithObject:(id)value {
    if (value) {
        return [NSString stringWithFormat:@"%@",value];
    }else {
        return nil;
    }
}
@end
