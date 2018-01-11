//
//  DKDevice.m
//  DemoKingIOSProject
//
//  Created by 王亚振 on 2018/1/11.
//  Copyright © 2018年 DemoKing. All rights reserved.
//

#import "DKDevice.h"

@implementation DKDevice
/**
 判断是否开启推送
 
 @return YES||NO
 */
+ (BOOL)notificationAuthority {
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0) {
        UIUserNotificationSettings *setting = [[UIApplication sharedApplication] currentUserNotificationSettings];
        if (UIUserNotificationTypeNone != setting.types) {
            return YES;
        }
    }
    return NO;
}
/**
 获取当前语言
 
 @return 语言
 */
+ (NSString *)currentLanguage {
    NSArray *languages = [NSLocale preferredLanguages];
    return [languages objectAtIndex:0];
}
/**
 版本号
 
 @return 版本号
 */
+ (NSString *)version {
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
}
/**
 获取UUID
 
 @return UUID
 */
+ (NSString *)generateUUID {
    CFUUIDRef theUUID =CFUUIDCreate(NULL);
    CFStringRef guid = CFUUIDCreateString(NULL, theUUID);
    CFRelease(theUUID);
    NSString *uuidString = [((__bridge NSString *)guid)stringByReplacingOccurrencesOfString:@"-"withString:@""];
    CFRelease(guid);
    return uuidString;
}
/**
 拨打电话
 
 @param phone phone
 */
+ (void)call:(NSString *)phone {
    if (phone.length == 0) {
        return;
    }
    NSMutableString *str = [[NSMutableString alloc] initWithFormat:@"telprompt://%@",phone];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:str]];
}
@end
