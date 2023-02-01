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
  
  var seconds: DateComponents {
    return .init(second: self)
  }
}
