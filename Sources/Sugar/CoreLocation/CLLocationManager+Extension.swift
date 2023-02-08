//
//  CLLocationManager+Extension.swift
//  
//
//  Created by Paul Tavitian on 8/2/2023.
//

import Foundation
import CoreLocation

@available(iOS 14.0, *)
public extension CLLocationManager {
  var isAuthorized: Bool {
    switch authorizationStatus {
    case .notDetermined, .restricted, .denied:
      return false
    case .authorizedAlways, .authorizedWhenInUse:
      return true
    @unknown default:
      return false
    }
  }
  
  var isAuthorised: Bool {
    return isAuthorized
  }
}
