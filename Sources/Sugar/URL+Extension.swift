//
//  URL+Extension.swift
//
//
//  Created by Paul Tavitian on 2/8/2024.
//

import Foundation

public extension URL {
  /// Returns a URL constructed by appending the given `URLQueryItem` to self.
  /// - Parameter queryItem: A `URLQueryItem` to append to the receiver.
  @available(macOS 13.0, iOS 16.0, tvOS 16.0, watchOS 9.0, *)
  func appending(queryItem: URLQueryItem) -> URL {
    return self.appending(queryItems: [queryItem])
  }
  
  /// Appends a `URLQueryItem` to the receiver.
  /// - Parameter queryItem: A `URLQueryItem` to append to the receiver.
  @available(macOS 13.0, iOS 16.0, tvOS 16.0, watchOS 9.0, *)
  mutating func append(queryItem: URLQueryItem) {
    self.append(queryItems: [queryItem])
  }
  
  /// Returns a URL constructed by appending the given list of `URLQueryItem` to self.
  /// - Parameter queryItems: A list of `URLQueryItem` to append to the receiver.
  @available(macOS 13.0, iOS 16.0, tvOS 16.0, watchOS 9.0, *)
  func appending(queryItems: URLQueryItem...) -> URL {
    return self.appending(queryItems: queryItems)
  }
  
  /// Appends a list of `URLQueryItem` to the receiver.
  /// - Parameter queryItems: A list of `URLQueryItem` to append to the receiver.
  @available(macOS 13.0, iOS 16.0, tvOS 16.0, watchOS 9.0, *)
  mutating func append(queryItems: URLQueryItem...) {
    self.append(queryItems: queryItems)
  }
}
