//
//  HMAC-SHA1.h
//  加密工具
//
//  Created by biznest on 15/3/27.
//  Copyright (c) 2015年 biznest. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HMAC_SHA1 : NSObject

// 将text通过key进行HMACSHA1加密
+ (NSString *) hmacSha1:(NSString*)key text:(NSString*)text;

// 将text进行SHA1加密
+ (NSString *) sha1:(NSString*)text;

// 加密编码
void encodeX2(const void * ps, void * pd, int is);

// 加密解码
void decodeX2(const void * ps, void * pd, int is);

@end
