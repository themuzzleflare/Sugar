//
//  UIListContentConfigurationTextPropertiesAlignment+Extension.swift
//  
//
//  Created by Paul Tavitian on 21/1/2023.
//

import Foundation
import UIKit

@available(iOS 14.0, *)
public extension UIListContentConfiguration.TextProperties.TextAlignment {
  /// The text has centred alignment.
  static let centre = center
}

@available(iOS 14.0, *)
extension UIListContentConfiguration.TextProperties.TextAlignment: CustomStringConvertible {
  public var description: String {
    switch self {
    case .natural:
      return "Natural"
    case .center:
      return "Center"
    case .justified:
      return "Justified"
    @unknown default:
      return "Unknown"
    }
  }
}
