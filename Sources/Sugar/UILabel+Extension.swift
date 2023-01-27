//
//  UILabel+Extension.swift
//  
//
//  Created by Paul Tavitian on 9/1/2023.
//

import Foundation
import UIKit

public extension UILabel {
  // MARK: - Australian spelling alternatives
  
  /// The colour of the text.
  var textColour: UIColour {
    get {
      return self.textColor
    }
    set {
      self.textColor = newValue
    }
  }
  
  /// The shadow colour of the text.
  ///
  /// The default value for this property is `nil`, which indicates that the text has no shadow. In addition to this property, you may also want to change the default shadow offset by modifying the `shadowOffset` property. A label draws its text shadows with the specified offset and colour and no blurring.
  var shadowColour: UIColour? {
    get {
      return self.shadowColor
    }
    set {
      self.shadowColor = newValue
    }
  }
  
  /// The highlight colour for the label’s text.
  var highlightedTextColour: UIColour? {
    get {
      return self.highlightedTextColor
    }
    set {
      self.highlightedTextColor = newValue
    }
  }
}
