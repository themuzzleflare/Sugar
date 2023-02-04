//
//  SymbolConfiguration+Extension.swift
//  
//
//  Created by Paul Tavitian on 9/1/2023.
//

import Foundation
import UIKit

@available(iOS 15.0, *)
public extension UIImage.SymbolConfiguration {
  convenience init(paletteColors: UIColor...) {
    self.init(paletteColors: paletteColors)
  }
}
