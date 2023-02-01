//
//  UnitStyle+Extension.swift
//
//
//  Created by Paul Tavitian on 29/1/2023.
//

import Foundation

extension Formatter.UnitStyle: CustomStringConvertible {
  public var description: String {
    switch self {
    case .short:
      return "Short"
    case .medium:
      return "Medium"
    case .long:
      return "Long"
    @unknown default:
      return "Unknown"
    }
  }
}
