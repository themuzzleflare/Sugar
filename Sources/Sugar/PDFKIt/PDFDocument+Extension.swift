//
//  PDFDocument+Extension.swift
//  
//
//  Created by Paul Tavitian on 10/2/2023.
//

import Foundation
import UIKit
import PDFKit

public extension PDFDocument {
  /// An optional text string containing the title of the document.
  var title: String? {
    return documentAttributes?[PDFDocumentAttribute.titleAttribute] as? String
  }
  
  /// An optional text string containing the name of the author of the document.
  var author: String? {
    return documentAttributes?[PDFDocumentAttribute.authorAttribute] as? String
  }
  
  /// An optional text string containing a description of the subject of the document.
  var subject: String? {
    return documentAttributes?[PDFDocumentAttribute.subjectAttribute] as? String
  }
  
  /// An optional text string containing the name of the application that created the document content.
  var creator: String? {
    return documentAttributes?[PDFDocumentAttribute.creatorAttribute] as? String
  }
  
  /// An optional text string containing the name of the application that produced the PDF data for the document.
  var producer: String? {
    return documentAttributes?[PDFDocumentAttribute.producerAttribute] as? String
  }
  
  /// An optional text string containing the document’s creation date.
  var creationDate: Date? {
    return documentAttributes?[PDFDocumentAttribute.creationDateAttribute] as? Date
  }
  
  /// An optional text string containing the document’s last-modified date.
  var modificationDate: Date? {
    return documentAttributes?[PDFDocumentAttribute.modificationDateAttribute] as? Date
  }
  
  /// An optional array of text strings containing keywords for the document.
  var keywords: [String]? {
    return documentAttributes?[PDFDocumentAttribute.keywordsAttribute] as? [String]
  }
  
  @available(iOS 16.0, *)
  var documentProperties: UIDocumentProperties? {
    guard let documentURL else { return nil }
    return .init(url: documentURL)
  }
}
