//
//  CGLineJoin+Extension.swift
//  
//
//  Created by Paul Tavitian on 9/1/2023.
//

import Foundation
import CoreGraphics

extension CGLineJoin: CustomStringConvertible {
  public var description: String {
    switch self {
    case .miter:
      return "Miter"
    case .round:
      return "Round"
    case .bevel:
      return "Bevel"
    @unknown default:
      return "Unknown"
    }
  }
}
