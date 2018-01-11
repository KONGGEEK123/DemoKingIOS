//
//  DKDate.m
//  DemoKingIOSProject
//
//  Created by 王亚振 on 2018/1/11.
//  Copyright © 2018年 DemoKing. All rights reserved.
//

#import "DKDate.h"

@implementation DKDate
/**
 date 转 固定格式时间
 
 @param date date
 @param formatter 格式
 @return 字符串
 */
+ (NSString *)stringWithDate:(NSDate *)date
                   formatter:(NSString *)formatter {
    if (!formatter) {
        return nil;
    }
    if (!date) {
        return nil;
    }
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:formatter];
    NSString *dateString = [dateFormatter stringFromDate:date];
    return dateString;
}

/**
 时间戳 转 固定格式时间
 
 @param timeString 时间戳字符串
 @param formatter 格式
 @return 字符串
 */
+ (NSString *)stringWith1970TimeString:(NSString *)timeString
                             formatter:(NSString *)formatter {
    NSTimeInterval timeInterval;
    if (timeString.length == 13) {
        // JAVA
        timeInterval = [timeString doubleValue] / 1000;
    } else if (timeString.length == 10) {
        // PHP
        timeInterval = [timeString doubleValue];
    } else {
        return nil;
    }
    if (!formatter) {
        return nil;
    }
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:formatter];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeInterval];
    NSString *dateString = [dateFormatter stringFromDate:date];
    return dateString;
}

/**
 时间字符串格式转换
 
 @param timeString 需要转换的时间字符串
 @param fromFormatter 当前格式
 @param toFormatter 转换后的格式
 @return 新的时间字符串
 */
+ (NSString *)stringWithTimeString:(NSString *)timeString
                     fromFormatter:(NSString *)fromFormatter
                       toFormatter:(NSString *)toFormatter {
    if (!fromFormatter) {
        return nil;
    }
    if (!toFormatter) {
        return nil;
    }
    if (!timeString) {
        return nil;
    }
    NSDate *date = [DKDate dateWithTimeString:timeString formatter:fromFormatter];
    NSString *newSting = [DKDate stringWithDate:date formatter:toFormatter];
    return newSting;
}

/**
 固定格式时间 转 时间戳
 
 @param timeString 时间
 @param formatter 格式
 @return 时间戳
 */
+ (NSString *)timestampWithTimeString:(NSString *)timeString
                            formatter:(NSString *)formatter {
    if (!formatter) {
        return nil;
    }
    if (!timeString) {
        return nil;
    }
    NSDate *date = [DKDate dateWithTimeString:timeString formatter:formatter];
    NSString *timestamp = [NSString stringWithFormat:@"%lf",[date timeIntervalSince1970]];
    return timestamp;
}

/**
 date 转 时间戳字符串
 
 @param date 时间
 @return 时间戳字符串
 */
+ (NSString *)timestampWithDate:(NSDate *)date {
    if (!date) {
        return nil;
    }
    NSString *timestamp = [NSString stringWithFormat:@"%lf",[date timeIntervalSince1970]];
    return timestamp;
}

/**
 固定格式时间 转 date
 
 @param timeString 时间字符串
 @param formatter 格式
 @return date
 */
+ (NSDate *)dateWithTimeString:(NSString *)timeString
                     formatter:(NSString *)formatter {
    if (!formatter) {
        return nil;
    }
    if (!timeString) {
        return nil;
    }
    NSDateFormatter *formatter2 = [[NSDateFormatter alloc] init];
    [formatter2 setDateFormat:formatter];
    NSDate *date = [formatter2 dateFromString:timeString];
    return date;
}

/**
 时间戳 转 date
 
 @param timeString 时间戳
 @return date
 */
+ (NSDate *)dateWith1970TimeString:(NSString *)timeString {
    if (!timeString) {
        return nil;
    }
    return [NSDate dateWithTimeIntervalSince1970:[timeString integerValue]];
}
@end
