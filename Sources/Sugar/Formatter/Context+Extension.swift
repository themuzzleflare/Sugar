//
//  Context+Extension.swift
//
//
//  Created by Paul Tavitian on 29/1/2023.
//

import Foundation

extension Formatter.Context: CustomStringConvertible {
  public var description: String {
    switch self {
    case .unknown:
      return "Unknown"
    case .dynamic:
      return "Dynamic"
    case .standalone:
      return "Standalone"
    case .listItem:
      return "List Item"
    case .beginningOfSentence:
      return "Beginning of Sentence"
    case .middleOfSentence:
      return "Middle of Sentence"
    @unknown default:
      return "Unknown"
    }
  }
}
