//
//  NSTextAlignment+Extension.swift
//  
//
//  Created by Paul Tavitian on 9/1/2023.
//

import Foundation
import UIKit

public extension NSTextAlignment {
  /// Text is centre-aligned.
  static let centre = center
}

extension NSTextAlignment: CustomStringConvertible {
  public var description: String {
    switch self {
    case .left:
      return "Left"
    case .center:
      return "Center"
    case .right:
      return "Right"
    case .justified:
      return "Justified"
    case .natural:
      return "Natural"
    @unknown default:
      return "Unknown"
    }
  }
}
