//
//  CLLocationDegrees+Extension.swift
//  
//
//  Created by Paul Tavitian on 9/1/2023.
//

import Foundation
import CoreLocation

public extension Array where Element == CLLocationDegrees {
  var coordinate: CLLocationCoordinate2D? {
    guard let latitude = self.first, let longitude = self.last else { return nil }
    return .init(latitude: latitude, longitude: longitude)
  }
  
  var location: CLLocation? {
    guard let latitude = self.first, let longitude = self.last else { return nil }
    return .init(latitude: latitude, longitude: longitude)
  }
}

public extension Array where Element == [CLLocationDegrees] {
  var coordinates: [CLLocationCoordinate2D] {
    return self.compactMap({$0.coordinate})
  }
  
  var locations: [CLLocation] {
    return self.compactMap({$0.location})
  }
}
