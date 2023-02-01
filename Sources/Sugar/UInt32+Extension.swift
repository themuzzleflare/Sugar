//
//  UInt32+Extension.swift
//  
//
//  Created by Paul Tavitian on 28/1/2023.
//

import Foundation

public extension UInt32 {
  var int: Int {
    return .init(self)
  }
  
  var double: Double {
    return .init(self)
  }
  
  var timeInterval: TimeInterval {
    return .init(self)
  }
}
