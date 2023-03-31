//
//  MKCoordinateRegion+Extension.swift
//  
//
//  Created by Paul Tavitian on 1/2/2023.
//

import Foundation
import MapKit

public extension MKCoordinateRegion {
  /// Creates a coordinate region with a span around the specified centre coordinate.
  /// - Parameters:
  ///   - centre: The centre of the coordinate region.
  ///   - span: The span around the centre of the coordinate region.
  init(centre: CLLocationCoordinate2D, span: MKCoordinateSpan) {
    self.init(center: centre, span: span)
  }
  
  /// Creates a new coordinate region from the specified coordinate and distance values.
  /// - Parameters:
  ///   - centreCoordinate: The centre point of the new coordinate region.
  ///   - latitudinalMeters: The north-to-south span of the region (measured in metres) specified as the distance from the centre point to the bounds along the north-to-south axis.
  ///   - longitudinalMeters: The east-to-west span of the region (measured in metres) specified as the distance from the centre point to the bounds along the east-to-west axis.
  /// - Returns: A region with the specified values.
  init(centre centreCoordinate: CLLocationCoordinate2D,
       latitudinalMeters: CLLocationDistance,
       longitudinalMeters: CLLocationDistance) {
    self.init(center: centreCoordinate,
              latitudinalMeters: latitudinalMeters,
              longitudinalMeters: longitudinalMeters)
  }
  
  /// The centre point of the region.
  var centre: CLLocationCoordinate2D {
    get {
      return self.center
    }
    set {
      self.center = newValue
    }
  }
}
