//
//  MD5.h
//  加密工具
//
//  Created by biznest on 15/3/27.
//  Copyright (c) 2015年 biznest. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MD5 : NSObject

//加密字符串
+ (NSString *) md5:(NSString*)str;
//加密data
+ (NSString *) md5ForData:(NSData *)data;
//加密文件（根据文件路径）
+ (NSString *) md5ForFileContent:(NSString *)file;

@end
