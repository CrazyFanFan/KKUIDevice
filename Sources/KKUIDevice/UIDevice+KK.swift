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
            encoding: .utf8
            )!.replacingOccurrences(of: "\0", with: "")
    }

    /// device model (device name, e.g. iPhone6/iPhone 6 Plus)
    /// "unknown device" when it's not define
    var model: String { modelType.rawValue }

    var modelType: ModelType {
        let hardware = self.hardware
        return DataMap.map[hardware] ?? DataMap.macMap[hardware] ?? .unknown
    }
    
}
