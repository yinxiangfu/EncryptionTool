//
//  AdapterHeard.h
//  加密工具
//
//  Created by biznest on 15/3/27.
//  Copyright (c) 2015年 biznest. All rights reserved.
//

#ifndef _____AdapterHeard_h
#define _____AdapterHeard_h

#define UI_SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)
#define UI_SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define is_Iphone6 ([[UIScreen mainScreen] bounds].size.width > 320.0f )
#define is_Iphone5 ([[UIScreen mainScreen] bounds].size.height == 568.0f )
#define is_Iphone4 ([[UIScreen mainScreen] bounds].size.height == 480.0f )
#define is_IOS8 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0f)
#define is_IOS7 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0f && [[[UIDevice currentDevice] systemVersion] floatValue] <= 7.2f)
#define is_IOS6 ([[[UIDevice currentDevice] systemVersion] floatValue] <7.0f)

#endif
