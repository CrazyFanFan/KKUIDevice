//
//  DataMap.swift
//  KKUIDevice
//
//  Created by Crazy凡 on 2020/2/1.
//

import Foundation

struct DataMap {

    static let map: [String: ModelType] = [
        "iPad1,1": .iPad1,
        "iPad2,1": .iPad2,
        "iPad2,2": .iPad2,
        "iPad2,3": .iPad2,
        "iPad2,4": .iPad2,
        "iPad2,5": .iPadMini1,
        "iPad2,6": .iPadMini1,
        "iPad2,7": .iPadMini1,
        "iPad3,1": .iPad3,
        "iPad3,2": .iPad3,
        "iPad3,3": .iPad3,
        "iPad3,4": .iPad4,
        "iPad3,5": .iPad4,
        "iPad3,6": .iPad4,
        "iPad4,1": .iPadAir1,
        "iPad4,2": .iPadAir1,
        "iPad4,3": .iPadAir1,
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
        "iPad6,3": .iPadPro__9_7_in,
        "iPad6,4": .iPadPro__9_7_in,
        "iPad6,7": .iPadPro__12_9_in1,
        "iPad6,8": .iPadPro__12_9_in1,
        "iPad6,11": .iPad5,
        "iPad6,12": .iPad5,
        "iPad7,1": .iPadPro__12_9_in2,
        "iPad7,2": .iPadPro__12_9_in2,
        "iPad7,3": .iPadPro__10_5_in,
        "iPad7,4": .iPadPro__10_5_in,
        "iPad7,5": .iPad6,
        "iPad7,6": .iPad6,
        "iPad7,11": .iPad7,
        "iPad7,12": .iPad7,
        "iPad8,1": .iPadPro__11_in1,
        "iPad8,2": .iPadPro__11_in1,
        "iPad8,3": .iPadPro__11_in1,
        "iPad8,4": .iPadPro__11_in1,
        "iPad8,5": .iPadPro__12_9_in3,
        "iPad8,6": .iPadPro__12_9_in3,
        "iPad8,7": .iPadPro__12_9_in3,
        "iPad8,8": .iPadPro__12_9_in3,
        "iPad8,9": .iPadPro__11_in2,
        "iPad8,10": .iPadPro__11_in2,
        "iPad8,11": .iPadPro__12_9_in4,
        "iPad8,12": .iPadPro__12_9_in4,
        "iPad11,1": .iPadMini5,
        "iPad11,2": .iPadMini5,
        "iPad11,3": .iPadAir3,
        "iPad11,4": .iPadAir3,
        "iPad11,6": .iPad8,
        "iPad11,7": .iPad8,
        "iPad12,1": .iPad9,
        "iPad12,2": .iPad9,
        "iPad13,1": .iPadAir4,
        "iPad13,2": .iPadAir4,
        "iPad13,4": .iPadPro__11_in3,
        "iPad13,5": .iPadPro__11_in3,
        "iPad13,6": .iPadPro__11_in3,
        "iPad13,7": .iPadPro__11_in3,
        "iPad13,8": .iPadPro__12_9_in5,
        "iPad13,9": .iPadPro__12_9_in5,
        "iPad13,10": .iPadPro__12_9_in5,
        "iPad13,11": .iPadPro__12_9_in5,
        "iPad13,16": .iPadAir5,
        "iPad13,17": .iPadAir5,
        "iPad14,1": .iPadMini6,
        "iPad14,2": .iPadMini6,
        "iPod1,1": .iPodTouch1,
        "iPod2,1": .iPodTouch2,
        "iPod3,1": .iPodTouch3,
        "iPod4,1": .iPodTouch4,
        "iPod5,1": .iPodTouch5,
        "iPod7,1": .iPodTouch6,
        "iPod9,1": .iPodTouch7,
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
        "iPhone9,1": .iPhone7,
        "iPhone9,2": .iPhone7Plus,
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
        "iPhone12,8": .iPhoneSE2,
        "iPhone13,1": .iPhone12Mini,
        "iPhone13,2": .iPhone12,
        "iPhone13,3": .iPhone12Pro,
        "iPhone13,4": .iPhone12ProMax,
        "iPhone14,2": .iPhone13Pro,
        "iPhone14,3": .iPhone13ProMax,
        "iPhone14,4": .iPhone13Mini,
        "iPhone14,5": .iPhone13,
        "iPhone14,6": .iPhoneSE3,
        "iPhone14,7": .iPhone14,
        "iPhone14,8": .iPhone14Plus,
        "iPhone15,2": .iPhone14Pro,
        "iPhone15,3": .iPhone14ProMax
    ]

    #if targetEnvironment(macCatalyst)
    static let macMap: [String: ModelType] = [
        "i386": .mac_32,
        "x86_64": .mac_64,
        "arm64": .arm64
    ]
    #elseif targetEnvironment(simulator)
    static let macMap: [String: ModelType] = [
        "i386": .simulator,
        "x86_64": .simulator,
        "arm64": .simulator
    ]
    #else
    static let macMap: [String: ModelType] = [
        "arm64": .arm64
    ]
    #endif
}
