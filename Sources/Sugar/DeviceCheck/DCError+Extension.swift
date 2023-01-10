//
//  DCError+Extension.swift
//  
//
//  Created by Paul Tavitian on 9/1/2023.
//

import Foundation
import DeviceCheck

extension DCError: CustomStringConvertible {
  public var description: String {
    switch self.code {
    case .unknownSystemFailure:
      return "Unknown System Failure"
    case .featureUnsupported:
      return "Feature Unsupported"
    case .invalidInput:
      return "Invalid Input"
    case .invalidKey:
      return "Invalid Key"
    case .serverUnavailable:
      return "Server Unavailable"
    @unknown default:
      return "Unknown"
    }
  }
}
