//
//  UIView+Extension.swift
//  
//
//  Created by Paul Tavitian on 9/1/2023.
//

import Foundation
import UIKit

public extension UIView {
  /// Adds one or more views to the end of the receiver’s list of subviews.
  /// - Parameter views: The views to be added. After being added, these views appear on top of any other subviews.
  func addSubview(_ view: UIView...) {
    self.addSubviews(view)
  }
  
  
  /// Adds views to the end of the receiver’s list of subviews.
  /// - Parameter views: The views to be added. After being added, these views appear on top of any other subviews.
  func addSubviews(_ views: [UIView]) {
    for view in views {
      self.addSubview(view)
    }
  }
  
  // MARK: - Australian spelling alternatives
  
  /// The centre point of the view's frame rectangle.
  var centre: CGPoint {
    get {
      return self.center
    }
    set {
      self.center = newValue
    }
  }
  
  /// The view's background colour.
  var backgroundColour: UIColour? {
    get {
      return self.backgroundColor
    }
    set {
      self.backgroundColor = newValue
    }
  }
  
  /// The first nondefault tint colour value in the view’s hierarchy, ascending from and starting with the view itself.
  var tintColour: UIColour {
    get {
      return self.tintColor
    }
    set {
      self.tintColor = newValue
    }
  }
  
  /// The gesture-recogniser objects currently attached to the view.
  var gestureRecognisers: [UIGestureRecogniser]? {
    get {
      return self.gestureRecognizers
    }
    set {
      self.gestureRecognizers = newValue
    }
  }
  
  /// Attaches a gesture recogniser to the view.
  /// - Parameter gestureRecogniser: An object whose class descends from the UIGestureRecogniser class. This parameter must not be `nil`.
  func addGestureRecogniser(_ gestureRecogniser: UIGestureRecogniser) {
    self.addGestureRecognizer(gestureRecogniser)
  }
  
  /// Detaches a gesture recogniser from the receiving view.
  /// - Parameter gestureRecogniser: An object whose class descends from the UIGestureRecogniser class.
  func removeGestureRecogniser(_ gestureRecogniser: UIGestureRecogniser) {
    self.removeGestureRecognizer(gestureRecogniser)
  }
  
  /// Asks the view if the gesture recogniser should be allowed to continue tracking touch events.
  /// - Parameter gestureRecogniser: The gesture recogniser that is attempting to transition out of the UIGestureRecogniser.State.possible state.
  /// - Returns: `true` if the gesture recogniser should continue tracking touch events and use them to trigger a gesture or `false` if it should transition to the UIGestureRecogniser.State.failed state.
  func gestureRecogniserShouldBegin(_ gestureRecogniser: UIGestureRecogniser) -> Bool {
    return self.gestureRecognizerShouldBegin(gestureRecogniser)
  }
}

public extension Array where Element: UIView {
  func printViewTypes() {
    for view in self {
      print(type(of: view))
    }
  }
}
