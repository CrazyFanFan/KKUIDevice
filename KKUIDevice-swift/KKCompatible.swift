//
//  KKCompatible.swift
//  KKUIDevice-swift
//
//  Created by C凡 on 2018/5/21.
//  Copyright © 2018年 C凡. All rights reserved.
//

import Foundation

public class KKBase<BaseType> {
    var base: BaseType
    init(_ base: BaseType) {
        self.base = base
    }
}

public protocol KKBaseCompatible {
    associatedtype KKBaseCompatibleType

    var kk: KKBaseCompatibleType { get }
    static var kk: KKBaseCompatibleType.Type { get }
}

public extension KKBaseCompatible {
    var kk: KKBase<Self> {
        return KKBase(self)
    }

    static var kk: KKBase<Self>.Type {
        return KKBase.self
    }
}
