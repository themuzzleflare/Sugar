//
//  SelfSizingInvalidation+Extension.swift
//  
//
//  Created by Paul Tavitian on 9/1/2023.
//

import Foundation
import UIKit

@available(iOS 16.0, *)
extension UICollectionView.SelfSizingInvalidation: CustomStringConvertible {
  public var description: String {
    switch self {
    case .disabled:
      return "Disabled"
    case .enabled:
      return "Enabled"
    case .enabledIncludingConstraints:
      return "Enabled Including Constraints"
    @unknown default:
      return "Unknown"
    }
  }
}

@available(iOS 16.0, *)
extension UITableView.SelfSizingInvalidation: CustomStringConvertible {
  public var description: String {
    switch self {
    case .disabled:
      return "Disabled"
    case .enabled:
      return "Enabled"
    case .enabledIncludingConstraints:
      return "Enabled Including Constraints"
    @unknown default:
      return "Unknown"
    }
  }
}
