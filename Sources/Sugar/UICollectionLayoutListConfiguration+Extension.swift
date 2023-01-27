//
//  UICollectionLayoutListConfiguration+Extension.swift
//  
//
//  Created by Paul Tavitian on 21/1/2023.
//

import Foundation
import UIKit

@available(iOS 14.0, *)
public extension UICollectionLayoutListConfiguration {
  /// The background colour of the list.
  ///
  /// The default vaue is `nil`, which means that the configuration uses the system background colour for the specified appearance.
  var backgroundColour: UIColour? {
    get {
      return self.backgroundColor
    }
    set {
      self.backgroundColor = newValue
    }
  }
}
