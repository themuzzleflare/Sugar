//
//  DateTimeStyle+Extension.swift
//  
//
//  Created by Paul Tavitian on 29/1/2023.
//

import Foundation

@available(iOS 13.0, *)
extension RelativeDateTimeFormatter.DateTimeStyle: CustomStringConvertible {
  public var description: String {
    switch self {
    case .numeric:
      return "Numeric"
    case .named:
      return "Named"
    @unknown default:
      return "Unknown"
    }
  }
}
