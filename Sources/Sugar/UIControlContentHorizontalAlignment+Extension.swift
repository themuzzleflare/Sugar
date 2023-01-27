//
//  UIControlContentHorizontalAlignment+Extension.swift
//
//
//  Created by Paul Tavitian on 21/1/2023.
//

import Foundation
import UIKit

public extension UIControl.ContentHorizontalAlignment {
  /// Aligns the content horizontally in the centre of the control.
  static let centre = center
}

extension UIControl.ContentHorizontalAlignment: CustomStringConvertible {
  public var description: String {
    switch self {
    case .center:
      return "Center"
    case .left:
      return "Left"
    case .right:
      return "Right"
    case .fill:
      return "Fill"
    case .leading:
      return "Leading"
    case .trailing:
      return "Trailing"
    @unknown default:
      return "Unknown"
    }
  }
}
