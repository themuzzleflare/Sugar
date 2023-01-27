//
//  UIControlContentVerticalAlignment+Extension.swift
//
//
//  Created by Paul Tavitian on 21/1/2023.
//

import Foundation
import UIKit

public extension UIControl.ContentVerticalAlignment {
  /// Aligns the content vertically in the centre of the control.
  static let centre = center
}

extension UIControl.ContentVerticalAlignment: CustomStringConvertible {
  public var description: String {
    switch self {
    case .center:
      return "Center"
    case .top:
      return "Top"
    case .bottom:
      return "Bottom"
    case .fill:
      return "Fill"
    @unknown default:
      return "Unknown"
    }
  }
}
