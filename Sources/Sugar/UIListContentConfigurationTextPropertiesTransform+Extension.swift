//
//  UIListContentConfigurationTextPropertiesTransform+Extension.swift
//  
//
//  Created by Paul Tavitian on 21/1/2023.
//

import Foundation
import UIKit

@available(iOS 14.0, *)
public extension UIListContentConfiguration.TextProperties.TextTransform {
  /// Displays the text with the first character capitalised.
  static let capitalised = capitalized
}

@available(iOS 14.0, *)
extension UIListContentConfiguration.TextProperties.TextTransform: CustomStringConvertible {
  public var description: String {
    switch self {
    case .none:
      return "None"
    case .uppercase:
      return "Uppercase"
    case .lowercase:
      return "Lowercase"
    case .capitalized:
      return "Capitalized"
    @unknown default:
      return "Unknown"
    }
  }
}
