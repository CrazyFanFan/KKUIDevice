//
//  DataMap.swift
//  KKUIDevice
//
//  Created by Crazy凡 on 2020/2/1.
//

import Foundation

struct DataMap {

    static let map: [String: ModelType] = [
        "iPad1,1": .iPad1ST,
        "iPad2,1": .iPad2,
        "iPad2,2": .iPad2,
        "iPad2,3": .iPad2,
        "iPad2,4": .iPad2,
        "iPad2,5": .iPadMini,
        "iPad2,6": .iPadMini,
        "iPad2,7": .iPadMini,
        "iPad3,1": .iPad3RD,
        "iPad3,2": .iPad3RD,
        "iPad3,3": .iPad3RD,
        "iPad3,4": .iPad4ST,
        "iPad3,5": .iPad4ST,
        "iPad3,6": .iPad4ST,
        "iPad4,1": .iPadAir,
        "iPad4,2": .iPadAir,
        "iPad4,3": .iPadAir,
        "iPad4,4": .iPadMini2,
        "iPad4,5": .iPadMini2,
        "iPad4,6": .iPadMini2,
        "iPad4,7": .iPadMini3,
        "iPad4,8": .iPadMini3,
        "iPad4,9": .iPadMini3,
        "iPad5,1": .iPadMini4,
        "iPad5,2": .iPadMini4,
        "iPad5,3": .iPadAir2,
        "iPad5,4": .iPadAir2,
        "iPad6,3": .iPadPro9_7_inch,
        "iPad6,4": .iPadPro9_7_inch,
        "iPad6,7": .iPadPro12_9_inch1ST,
        "iPad6,8": .iPadPro12_9_inch1ST,
        "iPad6,11": .iPad2017,
        "iPad6,12": .iPad2017,
        "iPad7,1": .iPadPro12_9_inch2ND,
        "iPad7,2": .iPadPro12_9_inch2ND,
        "iPad7,3": .iPadPro10_5_inch,
        "iPad7,4": .iPadPro10_5_inch,
        "iPad7,5": .iPad2018,
        "iPad7,6": .iPad2018,
        "iPad8,1": .iPadPro11_inch,
        "iPad8,2": .iPadPro11_inch,
        "iPad8,3": .iPadPro11_inch,
        "iPad8,4": .iPadPro11_inch,
        "iPad8,5": .iPadPro12_9_inch3RD,
        "iPad8,6": .iPadPro12_9_inch3RD,
        "iPad8,7": .iPadPro12_9_inch3RD,
        "iPad8,8": .iPadPro12_9_inch3RD,
        "iPod1,1": .iPodTouch1ST,
        "iPod2,1": .iPodTouch2ND,
        "iPod3,1": .iPodTouch3RD,
        "iPod4,1": .iPodTouch4TH,
        "iPod5,1": .iPodTouch5TH,
        "iPod7,1": .iPodTouch6TH,
        "iPhone1,1": .iPhone,
        "iPhone1,2": .iPhone3G,
        "iPhone2,1": .iPhone3GS,
        "iPhone3,1": .iPhone4,
        "iPhone3,2": .iPhone4,
        "iPhone3,3": .iPhone4,
        "iPhone4,1": .iPhone4S,
        "iPhone5,1": .iPhone5,
        "iPhone5,2": .iPhone5,
        "iPhone5,3": .iPhone5c,
        "iPhone5,4": .iPhone5c,
        "iPhone6,1": .iPhone5s,
        "iPhone6,2": .iPhone5s,
        "iPhone7,1": .iPhone6Plus,
        "iPhone7,2": .iPhone6,
        "iPhone8,1": .iPhone6S,
        "iPhone8,2": .iPhone6SPlus,
        "iPhone8,4": .iPhoneSE,
        "iPhone9,1": .iPhone7CDMA,
        "iPhone9,2": .iPhone7PlusCDMA,
        "iPhone9,3": .iPhone7,
        "iPhone9,4": .iPhone7Plus,
        "iPhone10,1": .iPhone8,
        "iPhone10,2": .iPhone8Plus,
        "iPhone10,3": .iPhoneX,
        "iPhone10,4": .iPhone8,
        "iPhone10,5": .iPhone8Plus,
        "iPhone10,6": .iPhoneX,
        "iPhone11,2": .iPhoneXS,
        "iPhone11,4": .iPhoneXSMax,
        "iPhone11,6": .iPhoneXSMax,
        "iPhone11,8": .iPhoneXR,
        "iPhone12,1": .iPhone11,
        "iPhone12,3": .iPhone11Pro,
        "iPhone12,5": .iPhone11ProMax,
        "iPhone12,8": .iPhoneSE2ND
    ]

    #if targetEnvironment(macCatalyst)
    static let macMap: [String: ModelType] = [
        "i386": .mac_32,
        "x86_64": .mac_64
    ]
    #else
    static let macMap: [String: ModelType] = [
        "i386": .simulator,
        "x86_64": .simulator
    ]
    #endif
    
}
