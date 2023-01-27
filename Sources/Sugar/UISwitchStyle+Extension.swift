//
//  UISwitchStyle+Extension.swift
//  
//
//  Created by Paul Tavitian on 21/1/2023.
//

import Foundation
import UIKit

@available(iOS 14.0, *)
extension UISwitch.Style: CustomStringConvertible {
  public var description: String {
    switch self {
    case .automatic:
      return "Automatic"
    case .checkbox:
      return "Checkbox"
    case .sliding:
      return "Sliding"
    @unknown default:
      return "Unknown"
    }
  }
}
