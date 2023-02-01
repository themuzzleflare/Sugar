//
//  DateInterval+Extension.swift
//  
//
//  Created by Paul Tavitian on 30/1/2023.
//

import Foundation

public extension DateInterval {
  func formatted(using formatter: DateIntervalFormatter) -> String? {
    return formatter.string(from: self)
  }
}
