//
//  ViewController.m
//  DevicePlatform
//
//  Created by CC on 2017/10/20.
//  Copyright © 2017年 cc412. All rights reserved.
//

#import "ViewController.h"
#import "UIDevice+PlatformAddition.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"当前设备:%@",[UIDevice simplePlatformString]);
}


@end
