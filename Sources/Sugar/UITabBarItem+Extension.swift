//
//  UITabBarItem+Extension.swift
//  
//
//  Created by Paul Tavitian on 9/2/2023.
//

import Foundation
import UIKit

public extension UITabBarItem {
  convenience init(title: String?, image: UIImage?, selectedImage: UIImage?, tag: Int) {
    self.init(title: title, image: image, selectedImage: selectedImage)
    self.tag = tag
  }
}
