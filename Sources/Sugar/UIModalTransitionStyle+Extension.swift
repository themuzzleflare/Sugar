//
//  UIModalTransitionStyle+Extension.swift
//
//
//  Created by Paul Tavitian on 10/2/2023.
//

import Foundation
import UIKit

extension UIModalTransitionStyle: CustomStringConvertible {
  public var description: String {
    switch self {
    case .coverVertical:
      return "Cover Vertical"
    case .flipHorizontal:
      return "Flip Horizontal"
    case .crossDissolve:
      return "Cross Dissolve"
    case .partialCurl:
      return "Partial Curl"
    @unknown default:
      return "Unknown"
    }
  }
}
