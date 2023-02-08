//
//  UICollectionViewListCell+Extension.swift
//  
//
//  Created by Paul Tavitian on 8/2/2023.
//

import Foundation
import UIKit

@available(iOS 14.0, *)
public extension UICollectionViewListCell {
  func setAccessories(_ accessories: UICellAccessory...) {
    self.accessories = accessories
  }
}
