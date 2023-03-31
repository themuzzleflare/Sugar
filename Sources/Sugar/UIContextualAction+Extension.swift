//
//  UIContextualAction+Extension.swift
//  
//
//  Created by Paul Tavitian on 8/2/2023.
//

import Foundation
import UIKit

public extension UIContextualAction {
  convenience init(style: UIContextualAction.Style,
                   title: String?,
                   image: UIImage?,
                   handler: @escaping UIContextualAction.Handler) {
    self.init(style: style, title: title, handler: handler)
    self.image = image
  }
  
  /// The background colour of the action button.
  ///
  /// The default value of this property is determined by the value of the `style` property, which determines the default appearance of the button. Assigning a new colour to this property changes the background to the colour that you specify.
  var backgroundColour: UIColour {
    get {
      return self.backgroundColor
    }
    set {
      self.backgroundColor = newValue
    }
  }
}
