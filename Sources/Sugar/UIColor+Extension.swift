//
//  UIColor+Extension.swift
//  
//
//  Created by Paul Tavitian on 9/1/2023.
//

import Foundation
import UIKit

public typealias UIColour = UIColor

public extension UIColor {
  convenience init(cgColour: CGColour) {
    self.init(cgColor: cgColour)
  }
  
  convenience init(ciColour: CIColour) {
    self.init(ciColor: ciColour)
  }
  
  /// A colour object with a greyscale value of 1/3 and an alpha value of `1.0`.
  class var darkGrey: UIColour {
    return .darkGray
  }
  
  /// A colour object with a greyscale value of 2/3 and an alpha value of `1.0`.
  class var lightGrey: UIColour {
    return .lightGray
  }
  
  /// A colour object with a greyscale value of `0.5` and an alpha value of `1.0`.
  class var grey: UIColour {
    return .gray
  }
  
  /// The standard base gray color that adapts to the environment.
  ///
  /// This color represents the standard system gray. It adapts to the current environment.
  class var systemGray1: UIColor {
    return .systemGray
  }
  
  /// The standard base grey colour that adapts to the environment.
  ///
  /// This colour represents the standard system grey. It adapts to the current environment.
  class var systemGrey: UIColour {
    return .systemGray
  }
  
  /// The standard base grey colour that adapts to the environment.
  ///
  /// This colour represents the standard system grey. It adapts to the current environment.
  class var systemGrey1: UIColour {
    return .systemGray1
  }
  
  /// The Quartz colour that corresponds to the colour object.
  var cgColour: CGColour {
    return self.cgColor
  }
  
  /// The Core Image colour that corresponds to the colour object.
  var ciColour: CIColour {
    return self.ciColor
  }
}

@available(iOS 13.0, *)
public extension UIColor {
  /// A second-level shade of grey that adapts to the environment.
  ///
  /// This colour adapts to the current environment. In light environments, this grey is slightly lighter than `systemGrey`. In dark environments, this grey is slightly darker than `systemGrey`.
  class var systemGrey2: UIColour {
    return .systemGray2
  }
  
  /// A third-level shade of grey that adapts to the environment.
  ///
  /// This colour adapts to the current environment. In light environments, this grey is slightly lighter than `systemGrey2`. In dark environments, this grey is slightly darker than `systemGrey2`.
  class var systemGrey3: UIColour {
    return .systemGray3
  }
  
  /// A fourth-level shade of grey that adapts to the environment.
  ///
  /// This colour adapts to the current environment. In light environments, this grey is slightly lighter than `systemGrey3`. In dark environments, this grey is slightly darker than `systemGrey3`.
  class var systemGrey4: UIColour {
    return .systemGray4
  }
  
  /// A fifth-level shade of grey that adapts to the environment.
  ///
  /// This colour adapts to the current environment. In light environments, this grey is slightly lighter than `systemGrey4`. In dark environments, this grey is slightly darker than `systemGrey4`.
  class var systemGrey5: UIColour {
    return .systemGray5
  }
  
  /// A sixth-level shade of grey that adapts to the environment.
  ///
  /// This colour adapts to the current environment, and is close in colour to `systemBackground`. In light environments, this grey is slightly lighter than `systemGrey5`. In dark environments, this grey is slightly darker than `systemGrey5`.
  class var systemGrey6: UIColour {
    return .systemGray6
  }
  
  /// Returns the version of the current colour that results from the specified traits.
  /// - Parameter traitCollection: The traits to use when resolving the colour information.
  /// - Returns: The version of the colour to display for the specified traits.
  func resolvedColour(with traitCollection: UITraitCollection) -> UIColour {
    return self.resolvedColor(with: traitCollection)
  }
}

@available(iOS 15.0, *)
public extension UIColor {
  /// A colour value that resolves at runtime based on the current tint colour of the app or trait hierarchy.
  class var tintColour: UIColour {
    return self.tintColor
  }
}
