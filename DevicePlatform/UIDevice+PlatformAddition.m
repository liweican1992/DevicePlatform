//
//  UIDevice+PlatformAddition.m
//  UDictionary
//
//  Created by CC on 2017/10/20.
//  Copyright © 2017年 com.youdao. All rights reserved.
//

#import "UIDevice+PlatformAddition.h"
#include <sys/sysctl.h>

@implementation UIDevice (PlatformAddition)

+ (NSString *)platform {
    size_t size;
    sysctlbyname("hw.machine", NULL, &size, NULL, 0);
    char *machine = malloc(size);
    
    sysctlbyname("hw.machine", machine, &size, NULL, 0);
    NSString *platform = [NSString stringWithCString:machine encoding:NSUTF8StringEncoding];
    free(machine);
    return platform;
}

+ (NSString *)simplePlatformString {
    NSString *modelIdentifier = [self platform];
    //iPhone https://www.theiphonewiki.com/wiki/Models#cite_note-china-1
    if ([modelIdentifier isEqualToString:@"iPhone1,1"])    return @"iPhone_1G";
    if ([modelIdentifier isEqualToString:@"iPhone1,2"])    return @"iPhone_3G";
    if ([modelIdentifier isEqualToString:@"iPhone2,1"])    return @"iPhone_3GS";
    if ([modelIdentifier isEqualToString:@"iPhone3,1"])    return @"iPhone_4_(GSM)";
    if ([modelIdentifier isEqualToString:@"iPhone3,2"])    return @"iPhone_4_(GSM_Rev_A)";
    if ([modelIdentifier isEqualToString:@"iPhone3,3"])    return @"iPhone_4_(CDMA)";
    if ([modelIdentifier isEqualToString:@"iPhone4,1"])    return @"iPhone_4S";
    if ([modelIdentifier isEqualToString:@"iPhone5,1"])    return @"iPhone_5_(GSM)";
    if ([modelIdentifier isEqualToString:@"iPhone5,2"])    return @"iPhone_5_(Global)";
    if ([modelIdentifier isEqualToString:@"iPhone5,3"])    return @"iPhone_5c_(GSM)";
    if ([modelIdentifier isEqualToString:@"iPhone5,4"])    return @"iPhone_5c_(Global)";
    if ([modelIdentifier isEqualToString:@"iPhone6,1"])    return @"iPhone_5s_(GSM)";
    if ([modelIdentifier isEqualToString:@"iPhone6,2"])    return @"iPhone_5s_(Global)";
    if ([modelIdentifier isEqualToString:@"iPhone7,1"])    return @"iPhone_6_Plus";
    if ([modelIdentifier isEqualToString:@"iPhone7,2"])    return @"iPhone_6";
    if ([modelIdentifier isEqualToString:@"iPhone8,1"])    return @"iPhone_6s";
    if ([modelIdentifier isEqualToString:@"iPhone8,2"])    return @"iPhone_6s_Plus";
    if ([modelIdentifier isEqualToString:@"iPhone8,4"])    return @"iPhone_SE";
    if ([modelIdentifier isEqualToString:@"iPhone9,1"])    return @"iPhone_7";
    if ([modelIdentifier isEqualToString:@"iPhone9,2"])    return @"iPhone_7_Plus";
    if ([modelIdentifier isEqualToString:@"iPhone9,3"])    return @"iPhone_7";
    if ([modelIdentifier isEqualToString:@"iPhone9,4"])    return @"iPhone_7_Plus";
    if ([modelIdentifier isEqualToString:@"iPhone10,1"])    return @"iPhone_8";
    if ([modelIdentifier isEqualToString:@"iPhone10,4"])    return @"iPhone_8";
    if ([modelIdentifier isEqualToString:@"iPhone10,2"])    return @"iPhone_8_Plus";
    if ([modelIdentifier isEqualToString:@"iPhone10,5"])    return @"iPhone_8_Plus";
    if ([modelIdentifier isEqualToString:@"iPhone10,3"])    return @"iPhone_X";
    if ([modelIdentifier isEqualToString:@"iPhone10,6"])    return @"iPhone_X";
    
    // iPad http://theiphonewiki.com/wiki/IPad
    
    if ([modelIdentifier isEqualToString:@"iPad1,1"])      return @"iPad_1G";
    if ([modelIdentifier isEqualToString:@"iPad2,1"])      return @"iPad_2_(Wi-Fi)";
    if ([modelIdentifier isEqualToString:@"iPad2,2"])      return @"iPad_2_(GSM)";
    if ([modelIdentifier isEqualToString:@"iPad2,3"])      return @"iPad_2_(CDMA)";
    if ([modelIdentifier isEqualToString:@"iPad2,4"])      return @"iPad_2_(Rev_A)";
    if ([modelIdentifier isEqualToString:@"iPad3,1"])      return @"iPad_3_(Wi-Fi)";
    if ([modelIdentifier isEqualToString:@"iPad3,2"])      return @"iPad_3_(GSM)";
    if ([modelIdentifier isEqualToString:@"iPad3,3"])      return @"iPad_3_(Global)";
    if ([modelIdentifier isEqualToString:@"iPad3,4"])      return @"iPad_4_(Wi-Fi)";
    if ([modelIdentifier isEqualToString:@"iPad3,5"])      return @"iPad_4_(GSM)";
    if ([modelIdentifier isEqualToString:@"iPad3,6"])      return @"iPad_4_(Global)";
    if ([modelIdentifier isEqualToString:@"iPad6,11"])     return @"iPad_(5th_gen)_(Wi-Fi)";
    if ([modelIdentifier isEqualToString:@"iPad6,12"])     return @"iPad_(5th_gen)_(Cellular)";
    
    //iPad_Air
    if ([modelIdentifier isEqualToString:@"iPad4,1"])      return @"iPad_Air_(Wi-Fi)";
    if ([modelIdentifier isEqualToString:@"iPad4,2"])      return @"iPad_Air_(Cellular)";
    if ([modelIdentifier isEqualToString:@"iPad5,3"])      return @"iPad_Air_2_(Wi-Fi)";
    if ([modelIdentifier isEqualToString:@"iPad5,4"])      return @"iPad_Air_2_(Cellular)";
    
    //iPad_Pro
    if ([modelIdentifier isEqualToString:@"iPad6,7"])      return @"iPad_Pro_(12.9-inch)";
    if ([modelIdentifier isEqualToString:@"iPad6,8"])      return @"iPad_Pro_(12.9-inch)";
    
    if ([modelIdentifier isEqualToString:@"iPad6,3"])      return @"iPad_Pro_(9.7-inch)";
    if ([modelIdentifier isEqualToString:@"iPad6,4"])      return @"iPad_Pro_(9.7-inch)";
    
    if ([modelIdentifier isEqualToString:@"iPad6,11"])      return @"iPad_(5th_generation)";
    if ([modelIdentifier isEqualToString:@"iPad6,12"])      return @"iPad_(5th_generation)";

    if ([modelIdentifier isEqualToString:@"iPad7,1"])      return @"iPad_Pro_(12.9-inch_2nd_generation)";
    if ([modelIdentifier isEqualToString:@"iPad7,2"])      return @"iPad_Pro_(12.9-inch_2nd_generation)";
    
    if ([modelIdentifier isEqualToString:@"iPad7,3"])      return @"iPad_Pro_(10.5-inch)";
    if ([modelIdentifier isEqualToString:@"iPad7,4"])      return @"iPad_Pro_(10.5-inch)";
    
    // iPad Mini http://theiphonewiki.com/wiki/IPad_mini
    
    if ([modelIdentifier isEqualToString:@"iPad2,5"])      return @"iPad_mini_1G_(Wi-Fi)";
    if ([modelIdentifier isEqualToString:@"iPad2,6"])      return @"iPad_mini_1G_(GSM)";
    if ([modelIdentifier isEqualToString:@"iPad2,7"])      return @"iPad_mini_1G_(Global)";
    if ([modelIdentifier isEqualToString:@"iPad4,4"])      return @"iPad_mini_2G_(Wi-Fi)";
    if ([modelIdentifier isEqualToString:@"iPad4,5"])      return @"iPad_mini_2G_(Cellular)";
    if ([modelIdentifier isEqualToString:@"iPad4,6"])      return @"iPad_mini_2G_(Cellular)"; // TD-LTE model see https://support.apple.com/en-us/HT201471#iPad-mini2
    if ([modelIdentifier isEqualToString:@"iPad4,7"])      return @"iPad_mini_3G_(Wi-Fi)";
    if ([modelIdentifier isEqualToString:@"iPad4,8"])      return @"iPad_mini_3G_(Cellular)";
    if ([modelIdentifier isEqualToString:@"iPad4,9"])      return @"iPad_mini_3G_(Cellular)";
    if ([modelIdentifier isEqualToString:@"iPad5,1"])      return @"iPad_mini_4G_(Wi-Fi)";
    if ([modelIdentifier isEqualToString:@"iPad5,2"])      return @"iPad_mini_4G_(Cellular)";

    // iPod http://theiphonewiki.com/wiki/IPod
    if ([modelIdentifier isEqualToString:@"iPod1,1"])      return @"iPod_touch_1G";
    if ([modelIdentifier isEqualToString:@"iPod2,1"])      return @"iPod_touch_2G";
    if ([modelIdentifier isEqualToString:@"iPod3,1"])      return @"iPod_touch_3G";
    if ([modelIdentifier isEqualToString:@"iPod4,1"])      return @"iPod_touch_4G";
    if ([modelIdentifier isEqualToString:@"iPod5,1"])      return @"iPod_touch_5G";
    if ([modelIdentifier isEqualToString:@"iPod7,1"])      return @"iPod_touch_6G"; // as 6,1 was never released 7,1 is actually 6th generation
    
    // Apple TV https://www.theiphonewiki.com/wiki/Apple_TV
    
    if ([modelIdentifier isEqualToString:@"AppleTV1,1"])      return @"Apple_TV_1G";
    if ([modelIdentifier isEqualToString:@"AppleTV2,1"])      return @"Apple_TV_2G";
    if ([modelIdentifier isEqualToString:@"AppleTV3,1"])      return @"Apple_TV_3G";
    if ([modelIdentifier isEqualToString:@"AppleTV3,2"])      return @"Apple_TV_3G"; // small, incremental update over 3,1
    if ([modelIdentifier isEqualToString:@"AppleTV5,3"])      return @"Apple_TV_4G"; // as 4,1 was never released, 5,1 is actually 4th generation
    if ([modelIdentifier isEqualToString:@"AppleTV6,2"])      return @"Apple TV 4K"; // as 4,1 was never released, 5,1 is actually 4th generation
    
    // Apple Watch
    if ([modelIdentifier isEqualToString:@"Watch1,1"])      return @"Apple_Watch_(1st generation)_38mm";
    if ([modelIdentifier isEqualToString:@"Watch1,2"])      return @"Apple_Watch_(1st generation)_42mm";
    if ([modelIdentifier isEqualToString:@"Watch2,6"])      return @"Apple_Watch_Series_1_38mm";
    if ([modelIdentifier isEqualToString:@"Watch2,7"])      return @"Apple_Watch_Series_1_42mm";
    
    if ([modelIdentifier isEqualToString:@"Watch2,3"])      return @"Apple_Watch_Series_2_38mm";
    if ([modelIdentifier isEqualToString:@"Watch2,4"])      return @"Apple_Watch_Series_2_42mm";

    if ([modelIdentifier isEqualToString:@"Watch3,1"])      return @"Apple_Watch_Series_3_38mm";
    if ([modelIdentifier isEqualToString:@"Watch3,2"])      return @"Apple_Watch_Series_3_42mm";
    
    if ([modelIdentifier isEqualToString:@"Watch3,3"])      return @"Apple_Watch_Series_3_38mm";
    if ([modelIdentifier isEqualToString:@"Watch3,4"])      return @"Apple_Watch_Series_3_42mm";

    // Simulator
    if ([modelIdentifier hasSuffix:@"86"] || [modelIdentifier isEqual:@"x86_64"])
    {
        BOOL smallerScreen = ([[UIScreen mainScreen] bounds].size.width < 768.0);
        return (smallerScreen ? @"iPhone_Simulator" : @"iPad_Simulator");
    }
    
    return modelIdentifier;
}
@end
