//
//  UnitPressure+Extension.swift
//  
//
//  Created by Paul Tavitian on 25/1/2023.
//

import Foundation

public extension UnitPressure {
  /// The newtons per square metre unit of pressure.
  class var newtonsPerMetresSquared: UnitPressure {
    return self.newtonsPerMetersSquared
  }
  
  /// The millimetres of mercury unit of pressure.
  class var millimetresOfMercury: UnitPressure {
    return self.millimetersOfMercury
  }
}
