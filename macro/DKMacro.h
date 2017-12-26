//
//  DKMacro.h
//  DKIOS
//
//  Created by 王亚振 on 2017/12/26.
//  Copyright © 2017年 DemoKing. All rights reserved.
//

#ifndef DKMacro_h
#define DKMacro_h

// ************************************************************************ 关于尺寸 ******************

/**
 获取屏幕宽度
 */
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
/**
 获取屏幕高度
 */
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

// ************************************************************************ 关于图片 ******************

/**
 *  快速配置 imageName
 */
#define IMAGE(_IMAGE_)  [UIImage imageNamed:_IMAGE_]

// ************************************************************************ 关于坐标 ******************

/**
 *  快速设置 point
 */
#define POINT(_X_,_Y_) CGPointMake(_X_, _Y_)
/**
 *  快速设置 rect
 */
#define RECT(_X_,_Y_,_W_,_H_) CGRectMake(_X_, _Y_, _W_, _H_)
/**
 *  快速设置 size
 */
#define SIZE(_W_,_H_) CGSizeMake(_W_, _H_)
/**
 *  快速设置 bounds
 */
#define BOUNDS(_X_,_Y_,_W_,_H_) CGRectMake(0, 0, _W_, _H_)
/**
 *  快速设置 range
 */
#define RANGE(_location_,_length_) NSMakeRange(_location_,_length_)

// ************************************************************************ 关于字体 ******************

/**
 *  快速设置 font
 */
#define FONT(_SIZE_) [UIFont systemFontOfSize:_SIZE_]
/**
 *  快速设置 font
 */
#define FONT_BOLD(_SIZE_) [UIFont boldSystemFontOfSize:_SIZE_]
/**
 *  快速设置 font
 */
#define FONT_MEDIUM_PINGFANG(_SIZE_) [UIFont fontWithName:@"PingFangSC-Medium" size:_SIZE_]

// ************************************************************************ 弧度转换 ******************

/**
 *  快速设置 弧度转角度
 */
#define RADIANS_TO_DEGREES(radians) ((radians) * (180.0 / M_PI))
/**
 *  快速设置 角度转弧度
 */
#define DEGREES_TO_RADIANS(angle) ((angle) / 180.0 * M_PI)

// ************************************************************************ 弱引用 ******************

/*
 * 快速设置weakself
 */
#define WS(weakself)  __block __typeof(&*self)weakself = self;

// ************************************************************************ 关于设备 ******************

/**
 获取主视图
 */
#define MAIN_WINDOW [UIApplication sharedApplication].delegate.window
/**
 判断是否是iPhone X
 */
#define IPHONE_X ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO)

// ************************************************************************ 输出语句 ******************
/**
 输出语句
 */
#ifndef DEBUG
#define NSLog(...)
#else
#define NSLog(...) NSLog(__VA_ARGS__)
#endif

#endif /* DKMacro_h */
