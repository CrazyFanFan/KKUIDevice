//
//  UIDevice+KK.swift
//  KKUIDevice
//
//  Created by C凡 on 2018/5/21.
//  Copyright © 2018年 C凡. All rights reserved.
//

import Foundation
import UIKit

public let UNKNOWN_DEVICE: String = "unknown device"

extension UIDevice: KKBaseCompatible {}

public extension KKBase where BaseType == UIDevice {

    var hardware: String {
        var systemInfo = utsname.init()
        uname(&systemInfo)
        return String(
            data: Data(bytes: &systemInfo.machine, count: Int(_SYS_NAMELEN)),
            encoding: .utf8)!.replacingOccurrences(of: "\0", with: "")
    }

    /// device model (device name, e.g. iPhone6/iPhone 6 Plus)
    /// "unknown device" when it's not define
    var model: String {
        return deviceModelMapConfig[hardware] ?? UNKNOWN_DEVICE
    }

    fileprivate var deviceModelMapConfig: [String: String] {
        if let bundleURL = Bundle(for: KKBase.self).url(forResource: "KKUIDeviceBundle", withExtension: "bundle"),
            let plistPath = Bundle(url: bundleURL)?.path(forResource: "DeviceMap", ofType: "plist") {
            return NSDictionary(contentsOfFile: plistPath) as? [String: String] ?? [: ]
        }
        assert(false, "'KKUIDevice-swift' read source file error")
        return [: ]
    }
}
