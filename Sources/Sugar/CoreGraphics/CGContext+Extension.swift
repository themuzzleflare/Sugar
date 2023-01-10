//
//  CGContext+Extension.swift
//  
//
//  Created by Paul Tavitian on 9/1/2023.
//

import Foundation
import UIKit

public extension CGContext {
  // MARK: - setFillColor
  
  /// Sets the current fill colour in a graphics context, using a CGColour.
  /// - Parameter colour: The new fill colour.
  func setFillColour(_ colour: CGColour) {
    self.setFillColor(colour)
  }
  
  /// Sets the current fill color in a graphics context, using a UIColor.
  /// - Parameter color: The new fill color.
  func setFillColor(_ color: UIColor) {
    self.setFillColor(color.cgColor)
  }
  
  /// Sets the current fill colour in a graphics context, using a UIColour.
  /// - Parameter colour: The new fill colour.
  func setFillColour(_ colour: UIColour) {
    self.setFillColor(colour)
  }
  
  // MARK: - setStrokeColor
  
  /// Sets the current stroke colour in a context, using a CGColour.
  /// - Parameter colour: The new stroke colour.
  func setStrokeColour(_ colour: CGColour) {
    self.setStrokeColor(colour)
  }
  
  /// Sets the current stroke color in a context, using a UIColor.
  /// - Parameter color: The new stroke color.
  func setStrokeColor(_ color: UIColor) {
    self.setStrokeColor(color.cgColor)
  }
  
  /// Sets the current stroke colour in a context, using a UIColour.
  /// - Parameter colour: The new stroke colour.
  func setStrokeColour(_ colour: UIColour) {
    self.setStrokeColor(colour)
  }
  
  // MARK: - addPath
  
  /// Adds a previously created path object to the current path in a graphics context.
  /// - Parameter path: A previously created path object.
  func addPath(_ path: UIBezierPath) {
    self.addPath(path.cgPath)
  }
}
