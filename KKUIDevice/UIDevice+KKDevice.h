//
//  UIDevice+KKDevice.h
//  KKUIDevice
//
//  Created by Crazy凡 on 03/11/2017.
//  Copyright © 2017 Crazy凡. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (KKDevice)

#pragma mark deviceInfo
/**
 @return "Hardware strings"(eg. iPhone10,1)
 */
- (NSString *)KKHardware;


/**
 @return device model (device name, e.g. iPhone6/iPhone 6 Plus),return "unknown device" when it's not define
 */
- (NSString *)KKModel;


/**
 @return IDFA
 */
- (NSString *)KKAdvertisingIdentifier API_AVAILABLE(ios(10.0));

@end
