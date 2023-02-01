//
//  UIButton+Extension.swift
//  
//
//  Created by Paul Tavitian on 28/1/2023.
//

import Foundation
import UIKit

public extension UIButton {
  /// The colour used to display the title.
  ///
  /// This value is guaranteed not to be `nil`. The default value is `white`.
  var currentTitleColour: UIColour {
    return self.currentTitleColor
  }
  
  /// The colour of the title’s shadow.
  ///
  /// The default value is `white`.
  var currentTitleShadowColour: UIColour? {
    return self.currentTitleShadowColor
  }
  
  /// Sets the colour of the title to use for the specified state.
  func setTitleColour(_ colour: UIColour?, for state: UIControl.State) {
    self.setTitleColor(colour, for: state)
  }
  
  /// Sets the colour of the title shadow to use for the specified state.
  func setTitleShadowColour(_ colour: UIColour?, for state: UIControl.State) {
    self.setTitleShadowColor(colour, for: state)
  }
  
  /// Returns the title colour used for a state.
  func titleColour(for state: UIControl.State) -> UIColour? {
    return self.titleColor(for: state)
  }
  
  /// Returns the shadow colour of the title used for a state.
  func titleShadowColour(for state: UIControl.State) -> UIColour? {
    return self.titleShadowColor(for: state)
  }
}
