//
//  CKDatabase+Extension.swift
//  
//
//  Created by Paul Tavitian on 9/1/2023.
//

import Foundation
import CloudKit

@available(iOS 15.0, *)
public extension CKDatabase {
  func allRecords(matching query: CKQuery,
                  inZoneWith zoneID: CKRecordZone.ID? = nil,
                  desiredKeys: [CKRecord.FieldKey]? = nil,
                  resultsLimit: Int = CKQueryOperation.maximumResults) async throws -> [CKRecord] {
    return try await withThrowingTaskGroup(of: [CKRecord].self) { (group) in
      func process(records: (matchResults: [(CKRecord.ID, Result<CKRecord, Error>)], queryCursor: CKQueryOperation.Cursor?)) async throws {
        group.addTask {
          try records.matchResults.map { try $1.get() }
        }
        
        if let cursor = records.queryCursor {
          print(cursor)
          try await process(
            records: self.records(
              continuingMatchFrom: cursor,
              desiredKeys: desiredKeys,
              resultsLimit: resultsLimit
            )
          )
        }
      }
      
      try await process(
        records: records(
          matching: query,
          inZoneWith: zoneID,
          desiredKeys: desiredKeys,
          resultsLimit: resultsLimit
        )
      )
      
      return try await group.reduce(into: [], +=)
    }
  }
}
