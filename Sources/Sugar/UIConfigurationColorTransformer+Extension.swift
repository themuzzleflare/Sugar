//
//  UIConfigurationColorTransformer+Extension.swift
//  
//
//  Created by Paul Tavitian on 21/1/2023.
//

import Foundation
import UIKit

@available(iOS 14.0, *)
public typealias UIConfigurationColourTransformer = UIConfigurationColorTransformer

@available(iOS 14.0, *)
public extension UIConfigurationColorTransformer {
  /// Creates a colour transformer that generates a greyscale version of the colour.
  static let greyscale = grayscale
}
