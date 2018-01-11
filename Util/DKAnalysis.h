//
//  DKAnalysis.h
//  DemoKingIOSProject
//
//  Created by 王亚振 on 2018/1/11.
//  Copyright © 2018年 DemoKing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DKAnalysis : NSObject
/**
 将对象（如dictionary）转化为json
 
 @param dataObject 对象
 @return 字符串
 */
+ (NSString *)toJSONString:(id)dataObject;
/**
 将json字符串转化为dictionary
 
 @param JSONString JSON string
 @return 字典
 */
+ (NSDictionary *)toDictionary:(NSString *)JSONString;
/**
 将json字符串转化为array
 
 @param JSONString json
 @return array
 */
+ (NSArray *)toArray:(NSString *)JSONString;
@end
