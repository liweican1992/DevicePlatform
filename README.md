# DevicePlatform
获取苹果设备的型号

UIDevice+PlatformAddition
# How to Use

```
#import "UIDevice+PlatformAddition.h"
```
UIDevice+PlatformAddition have two method
```
+ (NSString *)platform;
+ (NSString *)simplePlatformString;
```

```
NSLog(@"Current Device Name:%@",[UIDevice simplePlatformString]);
NSLog(@"Current Device Identify:%@",[UIDevice platform]);
```

# Support 
- iPhone (include iPhone X)
- iPad
- iWatch
- iPod
- Apple TV
- Simulator


more information 
https://www.theiphonewiki.com/wiki/Models#cite_note-china-1
