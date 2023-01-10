//
//  UIAlertController+Extension.swift
//  
//
//  Created by Paul Tavitian on 9/1/2023.
//

import Foundation
import UIKit

public extension UIAlertController {
  convenience init(preferredStyle: UIAlertController.Style) {
    self.init(title: nil,
              message: nil,
              preferredStyle: preferredStyle)
  }
  
  /// Attaches one or more action objects to the alert or action sheet.
  /// - Parameter action: The action objects to display as part of the alert. Actions are displayed as buttons in the alert. The action object provides the button text and the action to be performed when that button is tapped.
  func addAction(_ action: UIAlertAction...) {
    self.addActions(action)
  }
  
  /// Attaches action objects to the alert or action sheet.
  /// - Parameter actions: The action objects to display as part of the alert. Actions are displayed as buttons in the alert. The action objects provide the button text and the action to be performed when that button is tapped.
  func addActions(_ actions: [UIAlertAction]) {
    for action in actions {
      self.addAction(action)
    }
  }
}
