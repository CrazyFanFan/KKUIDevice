//
//  AppDelegate.m
//  KKUIDeviceDemo
//
//  Created by K3 on 2018/9/13.
//  Copyright © 2018年 Crazy凡. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    _window = [[UIWindow alloc] initWithFrame: [[UIScreen mainScreen] bounds]];
    _window.rootViewController = [[ViewController alloc] init];
    [_window makeKeyWindow];
    return YES;
}

@end
