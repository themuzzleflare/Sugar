//
//  CGLineCap+Extension.swift
//  
//
//  Created by Paul Tavitian on 9/1/2023.
//

import Foundation
import CoreGraphics

extension CGLineCap: CustomStringConvertible {
  public var description: String {
    switch self {
    case .round:
      return "Round"
    case .butt:
      return "Butt"
    case .square:
      return "Square"
    @unknown default:
      return "Unknown"
    }
  }
}
