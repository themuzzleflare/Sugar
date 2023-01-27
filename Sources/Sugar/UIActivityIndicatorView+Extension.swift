//
//  UIActivityIndicatorView+Extension.swift
//  
//
//  Created by Paul Tavitian on 21/1/2023.
//

import Foundation
import UIKit

public extension UIActivityIndicatorView {
  /// The colour of the activity indicator.
  ///
  /// If you set a colour for an activity indicator, it overrides the colour provided by the `style` property.
  var colour: UIColour {
    get {
      return self.color
    }
    set {
      self.color = newValue
    }
  }
}
