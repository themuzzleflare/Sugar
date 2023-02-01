//
//  MKMapView+Extension.swift
//  
//
//  Created by Paul Tavitian on 14/1/2023.
//

import Foundation
import MapKit

public extension MKMapView {
  /// The map coordinate at the centre of the map view.
  ///
  /// Changing the value in this property centres the map on the new coordinate without changing the current zoom level. It also updates the values in the `region` property to reflect the new centre coordinate and the new span values needed to maintain the current zoom level.
  ///
  /// Changing the value of this property updates the map view immediately. If you want to animate the change, use the `setCentre(_:animated:)` method instead.
  var centreCoordinate: CLLocationCoordinate2D {
    get {
      return self.centerCoordinate
    }
    set {
      self.centerCoordinate = newValue
    }
  }
  
  /// Changes the centre coordinate of the map, and optionally animates the change.
  ///
  /// Changing the centre coordinate centres the map on the new coordinate without changing the current zoom level. It also updates the value in the `region` property to reflect the new centre coordinate and the new span values needed to maintain the current zoom level.
  /// - Parameters:
  ///   - coordinate: The new centre coordinate for the map.
  ///   - animated: Specify `true` if you want the map view to scroll to the new location or `false` if you want the map to display the new location immediately.
  func setCentre(_ coordinate: CLLocationCoordinate2D, animated: Bool) {
    self.setCenter(coordinate, animated: animated)
  }
  
  func showAnnotations(_ annotations: MKAnnotation..., animated: Bool) {
    self.showAnnotations(annotations, animated: animated)
  }
  
  func addAnnotations(_ annotations: MKAnnotation...) {
    self.addAnnotations(annotations)
  }
  
  func removeAnnotations(_ annotations: MKAnnotation...) {
    self.removeAnnotations(annotations)
  }
  
  func addOverlays(_ overlays: MKOverlay...) {
    self.addOverlays(overlays)
  }
  
  func addOverlays(_ overlays: MKOverlay..., level: MKOverlayLevel) {
    self.addOverlays(overlays, level: level)
  }
  
  func removeOverlays(_ overlays: MKOverlay...) {
    self.removeOverlays(overlays)
  }
}
