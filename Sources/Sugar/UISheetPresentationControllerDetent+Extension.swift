//
//  UISheetPresentationControllerDetent+Extension.swift
//  
//
//  Created by Paul Tavitian on 10/2/2023.
//

import Foundation
import UIKit

@available(iOS 16.0, *)
public extension UISheetPresentationController.Detent {
  class func small() -> UISheetPresentationController.Detent {
    return .custom(identifier: .small) { (context) in
      return 0.25 * context.maximumDetentValue
    }
  }
  
  class func threeQuarters() -> UISheetPresentationController.Detent {
    return .custom(identifier: .threeQuarters) { (context) in
      return 0.75 * context.maximumDetentValue
    }
  }
}
