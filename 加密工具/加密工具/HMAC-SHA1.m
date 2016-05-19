//
//  HMAC-SHA1.m
//  加密工具
//
//  Created by biznest on 15/3/27.
//  Copyright (c) 2015年 biznest. All rights reserved.
//

#import "HMAC-SHA1.h"
#import <CommonCrypto/CommonHMAC.h>
#import <CommonCrypto/CommonCryptor.h>

@implementation HMAC_SHA1

// 将text通过key进行HMACSHA1加密
+ (NSString *) hmacSha1:(NSString*)key text:(NSString*)text
{
    const char *cKey  = [key cStringUsingEncoding:NSUTF8StringEncoding];
    const char *cData = [text cStringUsingEncoding:NSUTF8StringEncoding];
    uint8_t cHMAC[CC_SHA1_DIGEST_LENGTH];
    CCHmac(kCCHmacAlgSHA1, cKey, strlen(cKey), cData, strlen(cData), cHMAC);
    NSString *hash;
    NSMutableString* output = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++)
        [output appendFormat:@"%02x", cHMAC[i]];
    hash = output;
    return hash;
}

// 将text进行SHA1加密
+ (NSString *) sha1:(NSString*)text
{
    const char *cData = [text cStringUsingEncoding:NSUTF8StringEncoding];
    
    uint8_t cHMAC[CC_SHA1_DIGEST_LENGTH];
    CC_SHA1(cData, (CC_LONG)strlen(cData), cHMAC);
    NSString *hash;
    NSMutableString* output = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++)
        [output appendFormat:@"%02x", cHMAC[i]];
    hash = output;
    return hash;
}

// 加密编码
void encodeX2(const void * ps, void * pd, int is)
{
    
    unsigned char * pcs = (unsigned char * )ps;
    unsigned char * pcd = (unsigned char * )pd;
    
    if(ps == 0) return;
    if(pd == 0) return;
    if(is <= 0) return;
    
    for(; is>0; is--, pcs++)
    {
        *pcd = (*pcs >> 4) + 'A';
        pcd++;
        *pcd = ((unsigned char)(*pcs << 4) >> 4) + 'a';
        pcd++;
    }
    
    return;
}

// 加密解码
void decodeX2(const void * ps, void * pd, int is)
{
    
    unsigned char * pcs = (unsigned char * )ps;
    unsigned char * pcd = (unsigned char * )pd;
    
    if(ps == 0) return;
    if(pd == 0) return;
    if(is <= 0) return;
    
    for(is=is/2; is>0; is--, pcd++)
    {
        *pcd = (*pcs - 'A') << 4;
        pcs++;
        *pcd = (*pcs - 'a') | *pcd;
        pcs++;
    }
    
    return;
}

@end
