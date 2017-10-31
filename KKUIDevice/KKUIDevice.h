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


/**
 current device "Hardware strings"(eg. iPhone10,1)

 @return Hardware strings
 */
- (NSString *)hardware;


/**
 current device model,return "unknown device" when it's not define

 @return model
 */
- (NSString *)model;

@end
