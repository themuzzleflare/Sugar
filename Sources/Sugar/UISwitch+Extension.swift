//
//  UISwitch+Extension.swift
//  
//
//  Created by Paul Tavitian on 21/1/2023.
//

import Foundation
import UIKit

public extension UISwitch {
  /// The colour used to tint the appearance of the switch when it’s in the on position.
  var onTintColour: UIColour? {
    get {
      return self.onTintColor
    }
    set {
      self.onTintColor = newValue
    }
  }
  
  /// The colour used to tint the appearance of the thumb.
  var thumbTintColour: UIColour? {
    get {
      return self.thumbTintColor
    }
    set {
      self.thumbTintColor = newValue
    }
  }
}
