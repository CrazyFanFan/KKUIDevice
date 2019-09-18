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
        return String(data: Data(bytes: &systemInfo.machine, count: Int(_SYS_NAMELEN)),
                      encoding: .utf8)!.replacingOccurrences(of: "\0", with: "")
    }

    /// device model (device name, e.g. iPhone6/iPhone 6 Plus)
    /// "unknown device" when it's not define
    public var model: String {
        return deviceModelMapConfig[hardware] ?? UNKNOWN_DEVICE
    }

    fileprivate var deviceModelMapConfig: [String: String] {
        if let bundleURL = Bundle(for: K3Base.self).url(forResource: "KKUIDeviceBundle", withExtension: "bundle"),
            let plistPath = Bundle(url: bundleURL)?.path(forResource: "DeviceMap", ofType: "plist") {
            return NSDictionary(contentsOfFile: plistPath) as? [String: String] ?? [: ]
        }
        assert(false, "'KKUIDevice-swift' read source file error")
        return [: ]
    }
}
