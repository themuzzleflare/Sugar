//
//  DateInterval+Extension.swift
//  
//
//  Created by Paul Tavitian on 30/1/2023.
//

import Foundation

public extension DateInterval {
  var dateRange: Range<Date> {
    return start..<end
  }
  
  func formatted(_ formatter: DateIntervalFormatter) -> String? {
    return formatter.string(from: self)
  }
}
