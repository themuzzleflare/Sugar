//
//  UIAxis+Extension.swift
//  
//
//  Created by Paul Tavitian on 9/1/2023.
//

import Foundation
import UIKit

@available(iOS 13.4, *)
extension UIAxis: CustomStringConvertible {
  public var description: String {
    switch self {
    case []:
      return "Neither"
    case .vertical:
      return "Vertical"
    case .horizontal:
      return "Horizontal"
    case .both:
      return "Both"
    default:
      return "Unknown"
    }
  }
}
