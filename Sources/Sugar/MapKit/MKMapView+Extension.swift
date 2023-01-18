//
//  MKMapView+Extension.swift
//  
//
//  Created by Paul Tavitian on 14/1/2023.
//

import Foundation
import MapKit

public extension MKMapView {
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
