//
//  UIImageConfiguration+Extension.swift
//  
//
//  Created by Paul Tavitian on 9/1/2023.
//

import Foundation
import UIKit

@available(iOS 13.0, *)
public extension UIImage.Configuration {
  static func scale(_ scale: UIImage.SymbolScale) -> UIImage.SymbolConfiguration {
    return .init(scale: scale)
  }
  
  static func combining<T: UIImage.Configuration>(_ configurations: [T]) -> T {
    var configurations = configurations
    let initialResult = configurations.removeFirst()
    return configurations.reduce(initialResult, {$0.applying($1)})
  }
}

@available(iOS 15.0, *)
public extension UIImage.Configuration {
  static func hierarchical(_ colour: UIColour) -> UIImage.SymbolConfiguration {
    return .init(hierarchicalColor: colour)
  }
  
  static func palette(_ colours: UIColour...) -> UIImage.SymbolConfiguration {
    return self.palette(colours)
  }
  
  static func palette(_ colours: [UIColour]) -> UIImage.SymbolConfiguration {
    return .init(paletteColors: colours)
  }
}

@available(iOS 13.0, *)
public extension Array where Element: UIImage.Configuration {
  func combined() -> Element {
    return .combining(self)
  }
}
