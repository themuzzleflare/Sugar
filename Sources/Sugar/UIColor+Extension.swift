//
//  UIColor+Extension.swift
//  
//
//  Created by Paul Tavitian on 9/1/2023.
//

import Foundation
import UIKit

public typealias UIColour = UIColor

public extension UIColor {
  convenience init?(hex: String) {
    let hexSanitized = hex
      .trimmingCharacters(in: .whitespacesAndNewlines)
      .replacingOccurrences(of: "#", with: "")
    
    let length = hexSanitized.count
    
    var rgb: UInt64 = 0,
        r: CGFloat = 0.0,
        g: CGFloat = 0.0,
        b: CGFloat = 0.0,
        a: CGFloat = 1.0
    
    guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }
    
    if length == 6 {
      r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
      g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
      b = CGFloat(rgb & 0x0000FF) / 255.0
    } else if length == 8 {
      r = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
      g = CGFloat((rgb & 0x00FF0000) >> 16) / 255.0
      b = CGFloat((rgb & 0x0000FF00) >> 8) / 255.0
      a = CGFloat(rgb & 0x000000FF) / 255.0
    } else {
      return nil
    }
    
    self.init(red: r,
              green: g,
              blue: b,
              alpha: a)
  }
  
  func toHex(alpha: Bool = false) -> String? {
    guard let components = cgColor.components, components.count >= 3 else { return nil }
    
    let r = Float(components[0]),
        g = Float(components[1]),
        b = Float(components[2])
    
    var a = Float(1.0)
    
    if components.count >= 4 {
      a = Float(components[3])
    }
    
    if alpha {
      return String(format: "%02lX%02lX%02lX%02lX", lroundf(r * 255), lroundf(g * 255), lroundf(b * 255), lroundf(a * 255))
    } else {
      return String(format: "%02lX%02lX%02lX", lroundf(r * 255), lroundf(g * 255), lroundf(b * 255))
    }
  }
}
