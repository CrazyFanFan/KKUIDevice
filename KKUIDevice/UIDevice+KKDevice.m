//
//  UIDevice+KKDevice.m
//  KKUIDevice
//
//  Created by Crazy凡 on 03/11/2017.
//  Copyright © 2017 Crazy凡. All rights reserved.
//

#import "UIDevice+KKDevice.h"
#import <sys/utsname.h>

// ADFA
#import <AdSupport/AdSupport.h>

// define info
#define BUNDLE_NAME @"KKUIDevice"
#define PLIST_NAME @"HardwareModelMap.plist"


@implementation UIDevice (KKDevice)

/**
 @return "Hardware strings"(eg. iPhone10,1)
 */
- (NSString *)KKHardware {
    struct utsname systemInfo;
    uname(&systemInfo);
    return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
}

/**
 @return device model (device name, e.g. iPhone6/iPhone 6 Plus),return "unknown device" when it's not define
 */
- (NSString *)KKModel {
    NSString *plistPath = [[[NSBundle mainBundle] pathForResource:BUNDLE_NAME ofType:@"bundle"] stringByAppendingPathComponent:PLIST_NAME];

    NSDictionary *map = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
    NSAssert(map, @"hardwareToModelMap init error!");
    NSString *model = map[[self KKHardware]];
    if (model == nil) {
        model = @"unknown device";
    }

    return model;
}

/**
 @return IDFA
 */
- (NSString *)KKAdvertisingIdentifier {
    return [[[ASIdentifierManager sharedManager] advertisingIdentifier] UUIDString];
}

@end
