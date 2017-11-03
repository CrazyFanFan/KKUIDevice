//
//  KKUIDevice.h
//  KKUIDevice
//
//  Created by Crazy凡 on 31/10/2017.
//  Copyright © 2017 Crazy凡. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Project version number for KKUIDevice.
FOUNDATION_EXPORT double KKUIDeviceVersionNumber;

//! Project version string for KKUIDevice.
FOUNDATION_EXPORT const unsigned char KKUIDeviceVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <KKUIDevice/PublicHeader.h>

@interface UIDevice (KKUIDevice)


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
