//
//  CGFloat+Extension.swift
//  
//
//  Created by Paul Tavitian on 22/1/2023.
//

import Foundation
import UIKit

public extension CGFloat {
  /// The standard font size, in points, for labels.
  static var labelFontSize: CGFloat {
    return UIFont.labelFontSize
  }
  
  /// The standard font size, in points, for buttons.
  static var buttonFontSize: CGFloat {
    return UIFont.buttonFontSize
  }
  
  /// The size, in points, of the standard small system font.
  static var smallSystemFontSize: CGFloat {
    return UIFont.smallSystemFontSize
  }
  
  /// The size, in points, of the standard system font.
  static var systemFontSize: CGFloat {
    return UIFont.systemFontSize
  }
}
