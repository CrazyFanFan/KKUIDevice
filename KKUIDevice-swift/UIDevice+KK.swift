//
//  UIDevice+KK.swift
//  KKUIDevice-swift
//
//  Created by K3 on 2018/5/21.
//  Copyright © 2018年 K3. All rights reserved.
//

import Foundation
import UIKit

public let UNKNOWN_DEVICE: String = "unknown device"

extension UIDevice: K3BaseCompatible {}

public extension K3Base where BaseType == UIDevice {
    
    public var hardware: String {
        var systemInfo = utsname.init()
        uname(&systemInfo)
        return String(data: Data(bytes: &systemInfo.machine, count: Int(_SYS_NAMELEN)), encoding: .utf8)!.replacingOccurrences(of: "\0", with: "")
    }

    /// device model (device name, e.g. iPhone6/iPhone 6 Plus)
    /// "unknown device" when it's not define
    public var model: String {
        return deviceModelMapConfig[hardware] ?? UNKNOWN_DEVICE
    }

    fileprivate var deviceModelMapConfig: [String : String] {
        return [
            // Simulator
            "i386" : "Simulator",
            "x86_64" : "Simulator",
            // iPad
            "iPad1,1" : "iPad (1ST)",
            "iPad2,1" : "iPad 2",
            "iPad2,2" : "iPad 2",
            "iPad2,3" : "iPad 2",
            "iPad2,4" : "iPad 2",
            "iPad2,5" : "iPad Mini",
            "iPad2,6" : "iPad Mini",
            "iPad2,7" : "iPad Mini",
            "iPad3,1" : "iPad (3RD)",
            "iPad3,2" : "iPad (3RD)",
            "iPad3,3" : "iPad (3RD)",
            "iPad3,4" : "iPad (4ST)",
            "iPad3,5" : "iPad (4ST)",
            "iPad3,6" : "iPad (4ST)",
            "iPad4,1" : "iPad Air",
            "iPad4,2" : "iPad Air",
            "iPad4,3" : "iPad Air",
            "iPad4,4" : "iPad Mini 2",
            "iPad4,5" : "iPad Mini 2",
            "iPad4,6" : "iPad Mini 2",
            "iPad4,7" : "iPad Mini 3",
            "iPad4,8" : "iPad Mini 3",
            "iPad4,9" : "iPad Mini 3",
            "iPad5,1" : "iPad Mini 4",
            "iPad5,2" : "iPad Mini 4",
            "iPad5,3" : "iPad Air 2",
            "iPad5,4" : "iPad Air 2",
            "iPad6,3" : "iPad Pro (9.7)",
            "iPad6,4" : "iPad Pro (9.7)",
            "iPad6,7" : "iPad Pro (12.9, 1ST)",
            "iPad6,8" : "iPad Pro (12.9, 1ST)",
            "iPad6,11" : "iPad (2017)",
            "iPad6,12" : "iPad (2017)",
            "iPad7,1" : "iPad Pro (12.9, 2ND)",
            "iPad7,2" : "iPad Pro (12.9, 2ND)",
            "iPad7,3" : "iPad Pro (10.5)",
            "iPad7,4" : "iPad Pro (10.5)",
            "iPad7,5" : "iPad (2018)",
            "iPad7,6" : "iPad (2018)",
            // iPod
            "iPod1,1" : "iPod Touch (1ST)",
            "iPod2,1" : "iPod Touch (2ND)",
            "iPod3,1" : "iPod Touch (3RD)",
            "iPod4,1" : "iPod Touch (4TH)",
            "iPod5,1" : "iPod Touch (5TH)",
            "iPod7,1" : "iPod Touch (6TH)",
            // iPhone
            "iPhone1,1" : "iPhone",
            "iPhone1,2" : "iPhone (3G)",
            "iPhone2,1" : "iPhone (3GS)",
            "iPhone3,1" : "iPhone 4",
            "iPhone3,2" : "iPhone 4",
            "iPhone3,3" : "iPhone 4",
            "iPhone4,1" : "iPhone 4S",
            "iPhone5,1" : "iPhone 5",
            "iPhone5,2" : "iPhone 5",
            "iPhone5,3" : "iPhone 5c",
            "iPhone5,4" : "iPhone 5c",
            "iPhone6,1" : "iPhone 5s",
            "iPhone6,2" : "iPhone 5s",
            "iPhone7,1" : "iPhone 6 Plus",
            "iPhone7,2" : "iPhone 6",
            "iPhone8,1" : "iPhone 6S",
            "iPhone8,2" : "iPhone 6S Plus",
            "iPhone8,4" : "iPhone SE",
            "iPhone9,1" : "iPhone 7 (CDMA)",
            "iPhone9,2" : "iPhone 7 Plus (CDMA)",
            "iPhone9,3" : "iPhone 7",
            "iPhone9,4" : "iPhone 7 Plus",
            "iPhone10,1" : "iPhone 8",
            "iPhone10,2" : "iPhone 8 Plus",
            "iPhone10,3" : "iPhone X",
            "iPhone10,4" : "iPhone 8",
            "iPhone10,5" : "iPhone 8 Plus",
            "iPhone10,6" : "iPhone X"]
    }
}
