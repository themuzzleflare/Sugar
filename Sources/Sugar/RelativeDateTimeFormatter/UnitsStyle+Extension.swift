//
//  UnitsStyle+Extension.swift
//  
//
//  Created by Paul Tavitian on 29/1/2023.
//

import Foundation

@available(iOS 13.0, *)
extension RelativeDateTimeFormatter.UnitsStyle: CustomStringConvertible {
  public var description: String {
    switch self {
    case .full:
      return "Full"
    case .spellOut:
      return "Spell Out"
    case .short:
      return "Short"
    case .abbreviated:
      return "Abbreviated"
    @unknown default:
      return "Unknown"
    }
  }
}
