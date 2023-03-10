//
//  UIStackViewAlignment+Extension.swift
//
//
//  Created by Paul Tavitian on 10/1/2023.
//

import Foundation
import UIKit

public extension UIStackView.Alignment {
  /// A layout where the stack view aligns the centre of its arranged views with its centre along its axis.
  static let centre = center
}

extension UIStackView.Alignment: CustomStringConvertible {
  public var description: String {
    switch self {
    case .fill:
      return "Fill"
    case .leading:
      return "Leading"
    case .top:
      return "Top"
    case .firstBaseline:
      return "First Baseline"
    case .center:
      return "Center"
    case .trailing:
      return "Trailing"
    case .bottom:
      return "Bottom"
    case .lastBaseline:
      return "Last Baseline"
    @unknown default:
      return "Unknown"
    }
  }
}
