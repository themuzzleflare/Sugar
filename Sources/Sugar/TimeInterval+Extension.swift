//
//  TimeInterval+Extension.swift
//  
//
//  Created by Paul Tavitian on 2/2/2023.
//

import Foundation

public extension TimeInterval {
  func formatted(_ formatter: DateComponentsFormatter) -> String? {
    return formatter.string(from: self)
  }
}

@available(iOS 13.0, *)
public extension TimeInterval {
  func formatted(_ formatter: RelativeDateTimeFormatter) -> String {
    return formatter.localizedString(fromTimeInterval: self)
  }
}
