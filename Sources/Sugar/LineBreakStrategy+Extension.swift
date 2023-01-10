//
//  LineBreakStrategy+Extension.swift
//  
//
//  Created by Paul Tavitian on 9/1/2023.
//

import Foundation
import UIKit

extension NSParagraphStyle.LineBreakStrategy: CustomStringConvertible {
  public var description: String {
    if #available(iOS 14.0, *) {
      switch self {
      case .standard:
        return "Standard"
      case .pushOut:
        return "Push Out"
      case .hangulWordPriority:
        return "Hangul Word Priority"
      default:
        return "Unknown"
      }
    } else {
      switch self {
      case .pushOut:
        return "Push Out"
      default:
        return "Unknown"
      }
    }
  }
}
