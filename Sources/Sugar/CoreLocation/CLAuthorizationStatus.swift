//
//  CLAuthorizationStatus.swift
//  
//
//  Created by Paul Tavitian on 9/1/2023.
//

import Foundation
import CoreLocation

extension CLAuthorizationStatus: CustomStringConvertible {
  public var description: String {
    switch self {
    case .notDetermined:
      return "Not Determined"
    case .restricted:
      return "Restricted"
    case .denied:
      return "Denied"
    case .authorizedAlways:
      return "Authorized Always"
    case .authorizedWhenInUse:
      return "Authorized When In Use"
    case .authorized:
      return "Authorized"
    @unknown default:
      return "Unknown"
    }
  }
}
