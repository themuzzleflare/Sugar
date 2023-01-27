//
//  CharacterSet+Extension.swift
//  
//
//  Created by Paul Tavitian on 12/1/2023.
//

import Foundation

public extension CharacterSet {
  static let carriageReturn = CharacterSet(charactersIn: .carriageReturn)
  
  /// Returns a character set containing the characters in Unicode General Category Lt.
  static var capitalisedLetters: CharacterSet {
    return self.capitalizedLetters
  }
}
