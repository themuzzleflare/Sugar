//
//  StringStandardComparator+Extension.swift
//  
//
//  Created by Paul Tavitian on 27/1/2023.
//

import Foundation

@available(iOS 15.0, *)
public extension String.StandardComparator {
  /// Compares `String`s using a localised comparison in the current locale.
  static let localised = localized
  
  /// Compares `String`s as compared by the Finder.
  ///
  /// Uses a localised, numeric comparison in the current locale.
  ///
  /// The default `SortComparator` used in `String` comparisons.
  static let localisedStandard = localizedStandard
}
