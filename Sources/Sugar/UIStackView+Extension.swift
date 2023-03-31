//
//  UIStackView+Extension.swift
//  
//
//  Created by Paul Tavitian on 10/1/2023.
//

import Foundation
import UIKit

public extension UIStackView {
  convenience init(arrangedSubviews views: UIView...) {
    self.init(arrangedSubviews: views)
  }
  
  /// Adds one or more views to the end of the arranged subviews array.
  /// - Parameter views: The views to add to the array of views arranged by the stack.
  func addArrangedSubviews(_ views: UIView...) {
    self.addArrangedSubviews(views)
  }
  
  /// Adds views to the end of the arranged subviews array.
  /// - Parameter views: The views to add to the array of views arranged by the stack.
  func addArrangedSubviews(_ views: [UIView]) {
    for view in views {
      self.addArrangedSubview(view)
    }
  }
  
  /// Removes the provided view/views from the stack’s array of arranged subviews.
  /// - Parameter views: The view/views to be removed from the array of views arranged by the stack.
  func removeArrangedSubviews(_ views: UIView...) {
    self.removeArrangedSubviews(views)
  }
  
  /// Removes the provided views from the stack’s array of arranged subviews.
  /// - Parameter views: The views to be removed from the array of views arranged by the stack.
  func removeArrangedSubviews(_ views: [UIView]) {
    for view in views {
      self.removeArrangedSubview(view)
    }
  }
}
