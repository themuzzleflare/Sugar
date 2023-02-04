//
//  Int+Extension.swift
//  
//
//  Created by Paul Tavitian on 29/1/2023.
//

import Foundation

public typealias Integer = Int

public extension Int {
  var double: Double {
    return .init(self)
  }
  
  var timeInterval: TimeInterval {
    return .init(self)
  }
  
  var float: Float {
    return .init(self)
  }
  
  var int32: Int32 {
    return .init(self)
  }
  
  var int64: Int64 {
    return .init(self)
  }
  
  var uint32: UInt32 {
    return .init(self)
  }
  
  var uint64: UInt64 {
    return .init(self)
  }
  
  var isNegative: Bool {
    return self < 0
  }
  
  /// Returns the additive inverse of this value.
  func negated() -> Int {
    var int = self
    int.negate()
    return int
  }
}
