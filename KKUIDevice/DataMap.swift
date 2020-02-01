//
//  DataMap.swift
//  KKUIDevice
//
//  Created by Crazy凡 on 2020/2/1.
//

import Foundation

struct DataMap {

    static let map = [
        "iPad1,1": "iPad (1ST)",
        "iPad2,1": "iPad 2",
        "iPad2,2": "iPad 2",
        "iPad2,3": "iPad 2",
        "iPad2,4": "iPad 2",
        "iPad2,5": "iPad Mini",
        "iPad2,6": "iPad Mini",
        "iPad2,7": "iPad Mini",
        "iPad3,1": "iPad (3RD)",
        "iPad3,2": "iPad (3RD)",
        "iPad3,3": "iPad (3RD)",
        "iPad3,4": "iPad (4ST)",
        "iPad3,5": "iPad (4ST)",
        "iPad3,6": "iPad (4ST)",
        "iPad4,1": "iPad Air",
        "iPad4,2": "iPad Air",
        "iPad4,3": "iPad Air",
        "iPad4,4": "iPad Mini 2",
        "iPad4,5": "iPad Mini 2",
        "iPad4,6": "iPad Mini 2",
        "iPad4,7": "iPad Mini 3",
        "iPad4,8": "iPad Mini 3",
        "iPad4,9": "iPad Mini 3",
        "iPad5,1": "iPad Mini 4",
        "iPad5,2": "iPad Mini 4",
        "iPad5,3": "iPad Air 2",
        "iPad5,4": "iPad Air 2",
        "iPad6,3": "iPad Pro 9.7-inch",
        "iPad6,4": "iPad Pro 9.7-inch",
        "iPad6,7": "iPad Pro 12.9-inch (1ST)",
        "iPad6,8": "iPad Pro 12.9-inch (1ST)",
        "iPad6,11": "iPad (2017)",
        "iPad6,12": "iPad (2017)",
        "iPad7,1": "iPad Pro 12.9-inch (2ND)",
        "iPad7,2": "iPad Pro 12.9-inch (2ND)",
        "iPad7,3": "iPad Pro 10.5-inch",
        "iPad7,4": "iPad Pro 10.5-inch",
        "iPad7,5": "iPad (2018)",
        "iPad7,6": "iPad (2018)",
        "iPad8,1": "iPad Pro 11-inch",
        "iPad8,2": "iPad Pro 11-inch",
        "iPad8,3": "iPad Pro 11-inch",
        "iPad8,4": "iPad Pro 11-inch",
        "iPad8,5": "iPad Pro 12.9-inch(3RD)",
        "iPad8,6": "iPad Pro 12.9-inch(3RD)",
        "iPad8,7": "iPad Pro 12.9-inch(3RD)",
        "iPad8,8": "iPad Pro 12.9-inch(3RD)",
        "iPod1,1": "iPod Touch (1ST)",
        "iPod2,1": "iPod Touch (2ND)",
        "iPod3,1": "iPod Touch (3RD)",
        "iPod4,1": "iPod Touch (4TH)",
        "iPod5,1": "iPod Touch (5TH)",
        "iPod7,1": "iPod Touch (6TH)",
        "iPhone1,1": "iPhone",
        "iPhone1,2": "iPhone (3G)",
        "iPhone2,1": "iPhone (3GS)",
        "iPhone3,1": "iPhone 4",
        "iPhone3,2": "iPhone 4",
        "iPhone3,3": "iPhone 4",
        "iPhone4,1": "iPhone 4S",
        "iPhone5,1": "iPhone 5",
        "iPhone5,2": "iPhone 5",
        "iPhone5,3": "iPhone 5c",
        "iPhone5,4": "iPhone 5c",
        "iPhone6,1": "iPhone 5s",
        "iPhone6,2": "iPhone 5s",
        "iPhone7,1": "iPhone 6 Plus",
        "iPhone7,2": "iPhone 6",
        "iPhone8,1": "iPhone 6S",
        "iPhone8,2": "iPhone 6S Plus",
        "iPhone8,4": "iPhone SE",
        "iPhone9,1": "iPhone 7 (CDMA)",
        "iPhone9,2": "iPhone 7 Plus (CDMA)",
        "iPhone9,3": "iPhone 7",
        "iPhone9,4": "iPhone 7 Plus",
        "iPhone10,1": "iPhone 8",
        "iPhone10,2": "iPhone 8 Plus",
        "iPhone10,3": "iPhone X",
        "iPhone10,4": "iPhone 8",
        "iPhone10,5": "iPhone 8 Plus",
        "iPhone10,6": "iPhone X",
        "iPhone11,2": "iPhone XS",
        "iPhone11,4": "iPhone XS Max",
        "iPhone11,6": "iPhone XS Max",
        "iPhone11,8": "iPhone XR",
        "iPhone12,1": "iPhone 11",
        "iPhone12,3": "iPhone 11 Pro",
        "iPhone12,5": "iPhone 11 Pro Max"
    ]

    #if targetEnvironment(macCatalyst)
    static let macMap = [
        "i386": "Mac(32bit)",
        "x86_64": "Mac(64bit)"
    ]
    #else
    static let macMap = [
        "i386": "Simulator",
        "x86_64": "Simulator"
    ]
    #endif
    
}
