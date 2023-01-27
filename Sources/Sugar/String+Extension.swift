//
//  String+Extension.swift
//  
//
//  Created by Paul Tavitian on 9/1/2023.
//

import Foundation

public extension String {
  init?(htmlEncodedString: String) {
    guard let data = htmlEncodedString.data(using: .utf8) else { return nil }
    
    let options: [NSAttributedString.DocumentReadingOptionKey: Any] = [.documentType: NSAttributedString.DocumentType.html,
                                                                       .characterEncoding: String.Encoding.utf8.rawValue]
    
    guard let attributedString = try? NSAttributedString(data: data,
                                                         options: options,
                                                         documentAttributes: nil) else { return nil }
    self.init(attributedString.string)
  }
  
  static let carriageReturn = "\r"
  
  func replacingCharacterEntities() -> String {
    func unicodeScalar(for numericCharacterEntity: String) -> Unicode.Scalar? {
      var unicodeString = ""
      for character in numericCharacterEntity {
        if "0123456789".contains(character) {
          unicodeString.append(character)
        }
      }
      if let scalarInt = Int(unicodeString),
         let unicodeScalar = Unicode.Scalar(scalarInt) {
        return unicodeScalar
      }
      return nil
    }
    
    var result = ""
    var position = self.startIndex
    
    let range = NSRange(self.startIndex..<self.endIndex, in: self)
    let pattern = #"(&\S*?;)"#
    let unicodeScalarPattern = #"&#(\d*?);"#
    
    guard let regex = try? NSRegularExpression(pattern: pattern, options: []) else { return self }
    regex.enumerateMatches(in: self, options: [], range: range) { matches, flags, stop in
      if let matches = matches {
        if let range = Range(matches.range(at: 0), in:self) {
          let rangePreceedingMatch = position..<range.lowerBound
          result.append(contentsOf: self[rangePreceedingMatch])
          let characterEntity = String(self[range])
          if let replacement = Sugar.characterEntities[characterEntity] {
            result.append(replacement)
          } else if let _ = characterEntity.range(of: unicodeScalarPattern, options: .regularExpression),
                    let unicodeScalar = unicodeScalar(for: characterEntity) {
            result.append(String(unicodeScalar))
          }
          position = self.index(range.lowerBound, offsetBy: characterEntity.count )
        }
      }
    }
    if position != self.endIndex {
      result.append(contentsOf: self[position..<self.endIndex])
    }
    return result
  }
}
