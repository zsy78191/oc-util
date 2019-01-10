//
//  MVCKeyValue.h
//  mvc-middleware
//
//  Created by 张超 on 2019/1/4.
//  Copyright © 2019 orzer. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MVCKeyValue : NSObject

+ (void)setBool:(BOOL)b forKey:(id)key;
+ (BOOL)getBoolforKey:(id)key;

+ (void)setInt:(NSInteger)i forKey:(id)key;
+ (NSInteger)getIntforKey:(id)key;

+ (void)setFloat:(double)f forKey:(id)key;
+ (double)getFloatforKey:(id)key;

+ (void)setString:(NSString*)s forKey:(id)key;
+ (NSString*)getStringforKey:(id)key;

+ (void)removeValueForKey:(id)key;
+ (void)removeValuesForKeys:(NSArray*)keys;

+ (BOOL)containsKey:(id)key;
+ (void)clearAll;

@property (nonatomic, strong) NSString* storeName;
@property (nonatomic, strong) NSString* cryptKey;

- (void)setBool:(BOOL)b forKey:(id)key;
- (BOOL)getBoolforKey:(id)key;

- (void)setInt:(NSInteger)i forKey:(id)key;
- (NSInteger)getIntforKey:(id)key;

- (void)setFloat:(double)f forKey:(id)key;
- (double)getFloatforKey:(id)key;

- (void)setString:(NSString*)s forKey:(id)key;
- (NSString*)getStringforKey:(id)key;

- (void)removeValueForKey:(id)key;
- (void)removeValuesForKeys:(NSArray*)keys;

- (BOOL)containsKey:(id)key;
- (void)clearAll;


@end

NS_ASSUME_NONNULL_END
