//
//  SymbolConfiguration+Extension.swift
//  
//
//  Created by Paul Tavitian on 9/1/2023.
//

import Foundation
import UIKit

@available(iOS 13.0, *)
public extension UIImage.SymbolConfiguration {
  static func scale(_ scale: UIImage.SymbolScale) -> UIImage.SymbolConfiguration {
    return .init(scale: scale)
  }
}

@available(iOS 15.0, *)
public extension UIImage.SymbolConfiguration {
  convenience init(paletteColors: UIColor...) {
    self.init(paletteColors: paletteColors)
  }
  
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
