//
//  StringProtocol+Extension.swift
//  
//
//  Created by Paul Tavitian on 27/1/2023.
//

import Foundation

public extension StringProtocol {
  /// Returns a Boolean value indicating whether the string contains the given string, taking the current locale into account.
  ///
  /// This is the most appropriate method for doing user-level string searches, similar to how searches are done generally in the system. The search is locale-aware, case and diacritic insensitive. The exact list of search options applied may change over time.
  func localisedStandardContains<T>(_ string: T) -> Bool where T : StringProtocol {
    return self.localizedStandardContains(string)
  }
  
  /// An uppercase version of the string that is produced using the current locale.
  var localisedUppercase: String {
    return self.localizedUppercase
  }
}
