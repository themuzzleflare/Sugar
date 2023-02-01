//
//  String+Extension.swift
//  
//
//  Created by Paul Tavitian on 9/1/2023.
//

import Foundation

public extension String {
  init?(htmlEncodedString: String) {
    guard let data = htmlEncodedString.data(using: .utf8) else {
      return nil
    }
    
    let options: [NSAttributedString.DocumentReadingOptionKey: Any] = [
      .documentType: NSAttributedString.DocumentType.html,
      .characterEncoding: String.Encoding.utf8.rawValue
    ]
    
    guard let attributedString = try? NSAttributedString(data: data, options: options, documentAttributes: nil) else {
      return nil
    }
    
    self.init(attributedString.string)
  }
  
  static let carriageReturn = "\r"
}
