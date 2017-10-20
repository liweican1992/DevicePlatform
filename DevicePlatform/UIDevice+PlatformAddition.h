//
//  UIDevice+PlatformAddition.h
//  UDictionary
//
//  Created by CC on 2017/10/20.
//  Copyright © 2017年 com.youdao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (PlatformAddition)

+ (NSString *)platform;
+ (NSString *)simplePlatformString;

@end
