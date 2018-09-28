//
//  UIDevice+KKDevice.m
//  KKUIDevice
//
//  Created by Crazy凡 on 03/11/2017.
//  Copyright © 2017 Crazy凡. All rights reserved.
//

#import "UIDevice+KKDevice.h"
#import <sys/utsname.h>

// for get bunld
@interface KKDevice: NSObject
@end
@implementation KKDevice
@end

@implementation UIDevice (KKDevice)

/**
 @return "Hardware strings"(eg. iPhone10,1)
 */
- (NSString *)kkHardware {
    struct utsname systemInfo;
    uname(&systemInfo);
    return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
}

/**
 @return device model (device name, e.g. iPhone6/iPhone 6 Plus),return "unknown device" when it's not define
 */
- (NSString *)kkModel {
    NSString *model = [self deviceModelMapConfig][[self kkHardware]];
    if (model == nil) {
        model = @"unknown device";
    }
    
    return model;
}

- (NSDictionary *)deviceModelMapConfig {
    NSURL *url = [[NSBundle bundleForClass: KKDevice.class] URLForResource: @"KKUIDeviceBundle" withExtension: @"bundle"];
    NSString *plistPath = [[NSBundle bundleWithURL: url] pathForResource: @"DeviceMap" ofType: @"plist"];
    return [[NSDictionary alloc] initWithContentsOfFile: plistPath];
}

@end
