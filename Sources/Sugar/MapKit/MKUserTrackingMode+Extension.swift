//
//  MKUserTrackingMode+Extension.swift
//  
//
//  Created by Paul Tavitian on 9/1/2023.
//

import Foundation
import MapKit

extension MKUserTrackingMode: CustomStringConvertible {
  public var description: String {
    switch self {
    case .none:
      return "None"
    case .follow:
      return "Follow"
    case .followWithHeading:
      return "Follow with Heading"
    @unknown default:
      return "Unknown"
    }
  }
}
