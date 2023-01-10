//
//  NSLineBreakMode+Extension.swift
//  
//
//  Created by Paul Tavitian on 9/1/2023.
//

import Foundation
import UIKit

extension NSLineBreakMode: CustomStringConvertible {
  public var description: String {
    switch self {
    case .byWordWrapping:
      return "By Word Wrapping"
    case .byCharWrapping:
      return "By Character Wrapping"
    case .byClipping:
      return "By Clipping"
    case .byTruncatingHead:
      return "By Truncating Head"
    case .byTruncatingTail:
      return "By Truncating Tail"
    case .byTruncatingMiddle:
      return "By Truncating Middle"
    @unknown default:
      return "Unknown"
    }
  }
}
