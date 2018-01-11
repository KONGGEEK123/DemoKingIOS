//
//  DKDevice.h
//  DemoKingIOSProject
//
//  Created by 王亚振 on 2018/1/11.
//  Copyright © 2018年 DemoKing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DKDevice : NSObject
/**
 判断是否开启推送
 
 @return YES||NO
 */
+ (BOOL)notificationAuthority;
/**
 获取当前语言
 
 @return 语言
 */
+ (NSString *)currentLanguage;
/**
 版本号
 
 @return 版本号
 */
+ (NSString *)version;
/**
 获取UUID
 
 @return UUID
 */
+ (NSString *)generateUUID;
/**
 拨打电话

 @param phone phone
 */
+ (void)call:(NSString *)phone;
@end
