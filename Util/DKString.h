//
//  DKString.h
//  DemoKingIOSProject
//
//  Created by 王亚振 on 2018/1/11.
//  Copyright © 2018年 DemoKing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DKString : NSObject

/**
 int -- > string

 @param value int
 @return string
 */
+ (NSString *)stringWithInt:(int)value;
/**
 NSInteger -- > string
 
 @param value NSInteger
 @return string
 */
+ (NSString *)stringWithInteger:(NSInteger)value;
/**
 float -- > string
 
 @param value float
 @return string
 */
+ (NSString *)stringWithFloat:(float)value;
/**
 float -- > string 保留小数
 
 @param value float
 @param position 小数
 @return string
 */
+ (NSString *)stringWithFloat:(float)value position:(int)position;
/**
 float -- > string 保留小数 小数为0自动忽略
 
 @param value float
 @param shortPosition 小数
 @return string
 */
+ (NSString *)stringWithFloat:(float)value shortPosition:(int)shortPosition;
/**
 double -- > string
 
 @param value double
 @return string
 */
+ (NSString *)stringWithDouble:(double)value;
/**
 id -- > string
 
 @param value id
 @return string
 */
+ (NSString *)stringWithObject:(id)value;

@end
