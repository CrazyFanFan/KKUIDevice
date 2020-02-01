//
//  KKBase.swift
//  KKUIDevice
//
//  Created by Crazy凡 on 2019/8/28.
//

import Foundation

public class KKBase<BaseType> {
    public var base: BaseType
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
