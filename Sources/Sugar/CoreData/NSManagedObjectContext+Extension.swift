//
//  NSManagedObjectContext+Extension.swift
//  
//
//  Created by Paul Tavitian on 9/1/2023.
//

import Foundation
import CoreData

public extension NSManagedObjectContext {
  func obtainPermanentIDs(for objects: NSManagedObject...) throws {
    try self.obtainPermanentIDs(for: objects)
  }
}
