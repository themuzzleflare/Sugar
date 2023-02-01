//
//  UITabBarController+Extension.swift
//  
//
//  Created by Paul Tavitian on 31/1/2023.
//

import Foundation
import UIKit

public extension UITabBarController {
  /// Sets the root view controllers of the tab bar controller.
  func setViewControllers(_ viewControllers: UIViewController..., animated: Bool) {
    self.setViewControllers(viewControllers, animated: animated)
  }
  
  /// The subset of view controllers managed by this tab bar controller that can be customised.
  var customisableViewControllers: [UIViewController]? {
    get {
      return self.customizableViewControllers
    }
    set {
      self.customizableViewControllers = newValue
    }
  }
}
