//
//  UIModalPresentationStyle+Extension.swift
//  
//
//  Created by Paul Tavitian on 10/2/2023.
//

import Foundation
import UIKit

extension UIModalPresentationStyle: CustomStringConvertible {
  public var description: String {
    switch self {
    case .fullScreen:
      return "Full Screen"
    case .pageSheet:
      return "Page Sheet"
    case .formSheet:
      return "Form Sheet"
    case .currentContext:
      return "Current Context"
    case .custom:
      return "Custom"
    case .overFullScreen:
      return "Over Full Screen"
    case .overCurrentContext:
      return "Over Current Context"
    case .popover:
      return "Popover"
    case .blurOverFullScreen:
      return "Blur Over Full Screen"
    case .none:
      return "None"
    case .automatic:
      return "Automatic"
    @unknown default:
      return "Unknown"
    }
  }
}
