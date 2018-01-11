//
//  DKAnalysis.m
//  DemoKingIOSProject
//
//  Created by 王亚振 on 2018/1/11.
//  Copyright © 2018年 DemoKing. All rights reserved.
//

#import "DKAnalysis.h"

@implementation DKAnalysis
/**
 将对象（如dictionary）转化为json
 
 @param dataObject 对象
 @return 字符串
 */
+ (NSString *)toJSONString:(id)dataObject {
    if (!dataObject) {
        return nil;
    }
    if ([NSJSONSerialization isValidJSONObject:dataObject]) {
        NSError *error;
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dataObject options:NSJSONWritingPrettyPrinted error:&error];
        if(error) {
            return nil;
        }
        NSString *json =[[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        return json;
    }
    return nil;
}
/**
 将json字符串转化为dictionary
 
 @param JSONString JSON string
 @return 字典
 */
+ (NSDictionary *)toDictionary:(NSString *)JSONString {
    if (JSONString == nil) {
        return nil;
    }
    NSData *jsonData = [JSONString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSDictionary *dic =  [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:&err];
    if (err) {
        return nil;
    }
    return dic;
}
/**
 将json字符串转化为array
 
 @param JSONString json
 @return array
 */
+ (NSArray *)toArray:(NSString *)JSONString {
    if (JSONString == nil) {
        return nil;
    }
    NSData *jsonData = [JSONString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSArray *array =  [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:&err];
    if (err) {
        return nil;
    }
    return array;
}
@end
