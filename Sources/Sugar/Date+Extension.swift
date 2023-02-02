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
  
  func difference(in component: Calendar.Component, from other: Date) -> Int? {
    let (max, min) = orderDate(with: other)
    let dateComponents = Calendar.current.dateComponents([component], from: min, to: max)
    return dateComponents.value(for: component)
  }
  
  private func orderDate(with other: Date) -> (Date, Date) {
    let first = self.timeIntervalSince1970
    let second = other.timeIntervalSince1970
    
    if first >= second {
      return (self, other)
    }
    
    return (other, self)
  }
}
