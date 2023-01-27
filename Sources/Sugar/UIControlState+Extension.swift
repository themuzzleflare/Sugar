//
//  UIControlState+Extension.swift
//  
//
//  Created by Paul Tavitian on 21/1/2023.
//

import Foundation
import UIKit

extension UIControl.State: CustomStringConvertible {
  public var description: String {
    switch self {
    case .normal:
      return "Normal"
    case .highlighted:
      return "Highlighted"
    case .disabled:
      return "Disabled"
    case .selected:
      return "Selected"
    case .focused:
      return "Focused"
    case .application:
      return "Application"
    case .reserved:
      return "Reserved"
    default:
      return "Unknown"
    }
  }
}
