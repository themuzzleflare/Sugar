//
//  UIMenu+Extension.swift
//  
//
//  Created by Paul Tavitian on 3/2/2023.
//

import Foundation
import UIKit

@available(iOS 13.0, *)
public extension UIMenu {
  @MainActor convenience init(title: String = "",
                              image: UIImage? = nil,
                              identifier: UIMenu.Identifier? = nil,
                              options: UIMenu.Options = [],
                              children: UIMenuElement...) {
    self.init(title: title,
              image: image,
              identifier: identifier,
              options: options,
              children: children)
  }
  
  @available(iOS 16.0, *)
  @MainActor convenience init(title: String = "",
                              subtitle: String? = nil,
                              image: UIImage? = nil,
                              identifier: UIMenu.Identifier? = nil,
                              options: UIMenu.Options = [],
                              children: UIMenuElement...) {
    self.init(title: title,
              subtitle: subtitle,
              image: image,
              identifier: identifier,
              options: options,
              children: children)
  }
  
  @available(iOS 16.0, *)
  @MainActor convenience init(title: String = "",
                              subtitle: String? = nil,
                              image: UIImage? = nil,
                              identifier: UIMenu.Identifier? = nil,
                              options: UIMenu.Options = [],
                              preferredElementSize: UIMenu.ElementSize = .large,
                              children: UIMenuElement...) {
    self.init(title: title,
              subtitle: subtitle,
              image: image,
              identifier: identifier,
              options: options,
              preferredElementSize: preferredElementSize,
              children: children)
  }
}
