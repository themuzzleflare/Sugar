//
//  UIImage+Extension.swift
//  
//
//  Created by Paul Tavitian on 9/1/2023.
//

import Foundation
import UIKit

public extension UIImage {
  func resize(size: CGSize) -> UIImage {
    let rect = CGRect(origin: .zero, size: size)
    let renderer = UIGraphicsImageRenderer(size: size)
    
    return renderer.image { (context) in
      self.draw(in: rect)
    }
  }
  
  func optimised() -> UIImage {
    let renderer = UIGraphicsImageRenderer(size: self.size)
    
    return renderer.image { (context) in
      let rect = CGRect(origin: .zero, size: self.size)
      self.draw(in: rect)
    }
  }
  
  func rotate(radians: Double) -> UIImage {
    let transform = CGAffineTransform(rotationAngle: radians)
    
    let rotatedSize = CGRect(origin: .zero, size: self.size)
      .applying(transform)
      .integral
      .size
    
    let origin = CGPoint(x: rotatedSize.width / 2.0,
                         y: rotatedSize.height / 2.0)
    
    let rect = CGRect(x: -origin.y,
                      y: -origin.x,
                      width: self.size.width,
                      height: self.size.height)
    
    let renderer = UIGraphicsImageRenderer(size: rotatedSize)
    
    return renderer.image { (context) in
      context.cgContext.translateBy(x: origin.x, y: origin.y)
      context.cgContext.rotate(by: radians)
      self.draw(in: rect)
    }
  }
}

@available(iOS 13.0, *)
public extension UIImage {
  func withConfiguration(_ configuration: Configuration...) -> UIImage {
    return self.withConfiguration(configuration)
  }
  
  func withConfiguration(_ configuration: [Configuration]) -> UIImage {
    return self.withConfiguration(configuration.combined())
  }
  
  func applyingSymbolConfiguration(_ configuration: SymbolConfiguration...) -> UIImage? {
    return self.applyingSymbolConfiguration(configuration)
  }
  
  func applyingSymbolConfiguration(_ configuration: [SymbolConfiguration]) -> UIImage? {
    return self.applyingSymbolConfiguration(configuration.combined())
  }
}
