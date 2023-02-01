//
//  MutableCollection+Extension.swift
//  
//
//  Created by Paul Tavitian on 1/2/2023.
//

import Foundation

public extension MutableCollection {
  subscript(safe index: Index) -> Element? {
    get {
      return indices.contains(index) ? self[index] : nil
    }
    set {
      if let newValue, indices.contains(index) {
        self[index] = newValue
      }
    }
  }
}
