//
//  UIListContentConfigurationTextProperties+Extension.swift
//  
//
//  Created by Paul Tavitian on 21/1/2023.
//

import Foundation
import UIKit

@available(iOS 14.0, *)
public extension UIListContentConfiguration.TextProperties {
  /// The colour of the text.
  var colour: UIColour {
    get {
      return self.color
    }
    set {
      self.color = newValue
    }
  }
  
  /// The colour transformer for resolving the text colour.
  var colourTransformer: UIConfigurationColourTransformer? {
    get {
      return self.colorTransformer
    }
    set {
      self.colorTransformer = newValue
    }
  }
  
  /// Generates the resolved colour for the specified colour, using the text colour and colour transformer.
  func resolvedColour() -> UIColour {
    return self.resolvedColor()
  }
}
