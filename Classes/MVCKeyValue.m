//
//  MVCKeyValue.m
//  mvc-middleware
//
//  Created by 张超 on 2019/1/4.
//  Copyright © 2019 orzer. All rights reserved.
//

#import "MVCKeyValue.h"
@import MMKV;

@implementation MVCKeyValue


+ (MMKV*)d
{
    return [MMKV defaultMMKV];
}

+ (void)setBool:(BOOL)b forKey:(id)key;
{
    [[self d] setBool:b forKey:[key description]];
}

+ (BOOL)getBoolforKey:(id)key;
{
    return [[self d] getBoolForKey:[key description] defaultValue:NO];
}

+ (void)setInt:(NSInteger)i forKey:(id)key;
{
    [[self d] setInt64:i forKey:[key description]];
}

+ (NSInteger)getIntforKey:(id)key;
{
    return [[self d] getInt64ForKey:[key description] defaultValue:0];
}

+ (void)setFloat:(double)f forKey:(id)key;
{
    [[self d] setFloat:f forKey:[key description]];
}

+ (double)getFloatforKey:(id)key;
{
    return [[self d] getFloatForKey:[key description] defaultValue:0];
}

+ (void)setString:(NSString*)s forKey:(id)key;
{
    [[self d] setString:s forKey:[key description]];
}

+ (NSString*)getStringforKey:(id)key;
{
    return [[self d] getStringForKey:[key description] defaultValue:nil];
}

+ (void)removeValueForKey:(id)key;
{
    [[self d] removeValueForKey:[key description]];
}

+ (void)removeValuesForKeys:(NSArray*)keys;
{
    NSMutableArray* a = [NSMutableArray array];
    [keys enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [a addObject:[obj description]];
    }];
    [[self d] removeValuesForKeys:a];
}

+ (BOOL)containsKey:(id)key;
{
    return [[self d] containsKey:[key description]];
}

+ (void)clearAll;
{
    [[self d] clearAll];
}

- (NSString *)storeName
{
    if (!_storeName) {
        _storeName = [[NSUUID UUID] UUIDString];
    }
    return _storeName;
}

- (MMKV*)dd
{
    if (self.cryptKey) {
        return [MMKV mmkvWithID:self.storeName cryptKey:[self.cryptKey dataUsingEncoding:NSUTF8StringEncoding]];
    }
    return [MMKV mmkvWithID:self.storeName];
}

- (void)setBool:(BOOL)b forKey:(id)key;
{
    [[self dd] setBool:b forKey:[key description]];
}

- (BOOL)getBoolforKey:(id)key;
{
    return [[self dd] getBoolForKey:[key description] defaultValue:NO];
}

- (void)setInt:(NSInteger)i forKey:(id)key;
{
    [[self dd] setInt64:i forKey:[key description]];
}

- (NSInteger)getIntforKey:(id)key;
{
    return [[self dd] getInt64ForKey:[key description] defaultValue:0];
}

- (void)setFloat:(double)f forKey:(id)key;
{
    [[self dd] setFloat:f forKey:[key description]];
}

- (double)getFloatforKey:(id)key;
{
    return [[self dd] getFloatForKey:[key description] defaultValue:0];
}

- (void)setString:(NSString*)s forKey:(id)key;
{
    [[self dd] setString:s forKey:[key description]];
}

- (NSString*)getStringforKey:(id)key;
{
    return [[self dd] getStringForKey:[key description] defaultValue:nil];
}

- (void)removeValueForKey:(id)key;
{
    [[self dd] removeValueForKey:[key description]];
}

- (void)removeValuesForKeys:(NSArray*)keys;
{
    NSMutableArray* a = [NSMutableArray array];
    [keys enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [a addObject:[obj description]];
    }];
    [[self dd] removeValuesForKeys:a];
}

- (BOOL)containsKey:(id)key;
{
    return [[self dd] containsKey:[key description]];
}

- (void)clearAll;
{
    [[self dd] clearAll];
}

@end
