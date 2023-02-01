//
//  Date+Extension.swift
//  
//
//  Created by Paul Tavitian on 30/1/2023.
//

import Foundation

public extension Date {
  func formatted(using formatter: DateFormatter) -> String {
    return formatter.string(from: self)
  }
}
