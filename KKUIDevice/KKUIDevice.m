//
//  UIDevice+KKUIDevice.m
//  KKUIDevice
//
//  Created by Crazy凡 on 31/10/2017.
//  Copyright © 2017 Crazy凡. All rights reserved.
//

#import "KKUIDevice.h"
#import <sys/utsname.h>

#define BUNDLE_NAME @"KKUIDevice"
#define PLIST_NAME @"HardwareModelMap.plist"

@implementation UIDevice (KKUIDevice)

- (NSString *)KKHardware {
    struct utsname systemInfo;
    uname(&systemInfo);
    return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
}

- (NSString *)KKModel {
    NSString *plistPath = [[[NSBundle mainBundle] pathForResource:BUNDLE_NAME ofType:@"bundle"] stringByAppendingPathComponent:PLIST_NAME];

    NSDictionary *map = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
    NSAssert(map, @"hardwareToModelMap init error!");
    NSString *model = map[[self hardware]];
    if (model == nil) {
        model = @"unknown device";
    }

    return model;
}

@end
