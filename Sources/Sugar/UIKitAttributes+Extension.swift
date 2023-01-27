//
//  UIKitAttributes+Extension
//  
//
//  Created by Paul Tavitian on 27/1/2023.
//

import Foundation
import UIKit

@available(iOS 15, *)
public extension AttributeScopes.UIKitAttributes {
  typealias ForegroundColourAttribute = ForegroundColorAttribute
  typealias BackgroundColourAttribute = BackgroundColorAttribute
  typealias StrokeColourAttribute = StrokeColorAttribute
  typealias UnderlineColourAttribute = UnderlineColorAttribute
  typealias StrikethroughColourAttribute = StrikethroughColorAttribute
  
  /// A property for accessing a foreground colour attribute.
  var foregroundColour: ForegroundColourAttribute {
    get {
      return self.foregroundColor
    }
  }
  
  /// A property for accessing a background color attribute.
  var backgroundColour: BackgroundColourAttribute {
    return self.backgroundColor
  }
  
  /// A property for accessing a stroke colour attribute.
  var strokeColour: StrokeColourAttribute {
    return self.strokeColor
  }
  
  /// A property for accessing an underline colour attribute.
  var underlineColour: UnderlineColourAttribute {
    return self.underlineColor
  }
  
  /// A property for accessing a strikethrough colour attribute.
  var strikethroughColour: StrikethroughColourAttribute {
    return self.strikethroughColor
  }
}
