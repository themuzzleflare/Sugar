//
//  Date+Extension.swift
//  
//
//  Created by Paul Tavitian on 30/1/2023.
//

import Foundation
import Algorithms

public extension Date {
  var current: Date {
    if #available(iOS 15, *) {
      return .now
    } else {
      return .init()
    }
  }
  
  var startOfDay: Date {
    return Calendar.autoupdatingCurrent.startOfDay(for: self)
  }
  
  var isToday: Bool {
    return Calendar.autoupdatingCurrent.isDateInToday(self)
  }
  
  var isYesterday: Bool {
    return Calendar.autoupdatingCurrent.isDateInYesterday(self)
  }
  
  var isTomorrow: Bool {
    return Calendar.autoupdatingCurrent.isDateInTomorrow(self)
  }
  
  var isWeekend: Bool {
    return Calendar.autoupdatingCurrent.isDateInWeekend(self)
  }
  
  var dateIntervalOfWeekend: DateInterval? {
    return Calendar.autoupdatingCurrent.dateIntervalOfWeekend(containing: self)
  }
  
  var isPast: Bool {
    return self < current
  }
  
  var isPastOrPresent: Bool {
    return self <= current
  }
  
  var isFuture: Bool {
    return self > current
  }
  
  var isPresentOrFuture: Bool {
    return self >= current
  }
  
  func formatted(_ formatter: DateFormatter) -> String {
    return formatter.string(from: self)
  }
  
  /// Returns the difference in the calendar component given (like day, month or year) with respect to the provided date as a positive integer.
  func difference(in component: Calendar.Component,
                  from date2: Date) -> Int? {
    guard let (min, max) = [self, date2].minAndMax() else { return nil }
    let dateComponents = Calendar.autoupdatingCurrent.dateComponents([component], from: min, to: max)
    return dateComponents.value(for: component)
  }
  
  func dateIntervalOfWeekend(start: inout Date, interval: inout TimeInterval) -> Bool {
    return Calendar.autoupdatingCurrent.dateIntervalOfWeekend(containing: self, start: &start, interval: &interval)
  }
  
  func isSameDay(as date2: Date) -> Bool {
    return Calendar.autoupdatingCurrent.isDate(self, inSameDayAs: date2)
  }
  
  func adding(components: DateComponents, wrappingComponents: Bool = false) -> Date? {
    return Calendar.autoupdatingCurrent.date(byAdding: components, to: self, wrappingComponents: wrappingComponents)
  }
  
  func adding(component: Calendar.Component,
              value: Int,
              wrappingComponents: Bool = false) -> Date? {
    return Calendar.autoupdatingCurrent.date(byAdding: component,
                                             value: value,
                                             to: self,
                                             wrappingComponents: wrappingComponents)
  }
  
  func subtracting(component: Calendar.Component,
                   value: Int,
                   wrappingComponents: Bool = false) -> Date? {
    return Calendar.autoupdatingCurrent.date(byAdding: component,
                                             value: value.negated(),
                                             to: self,
                                             wrappingComponents: wrappingComponents)
  }
  
  mutating func add(component: Calendar.Component,
                    value: Int,
                    wrappingComponents: Bool = false) {
    guard let newDate = Calendar.autoupdatingCurrent.date(byAdding: component,
                                                          value: value,
                                                          to: self,
                                                          wrappingComponents: wrappingComponents) else { return }
    self = newDate
  }
  
  mutating func subtract(component: Calendar.Component,
                         value: Int,
                         wrappingComponents: Bool = false) {
    guard let newDate = Calendar.autoupdatingCurrent.date(byAdding: component,
                                                          value: value.negated(),
                                                          to: self,
                                                          wrappingComponents: wrappingComponents) else { return }
    self = newDate
  }
  
  func compare(to date2: Date, toGranularity component: Calendar.Component) -> ComparisonResult {
    return Calendar.autoupdatingCurrent.compare(self, to: date2, toGranularity: component)
  }
  
  func isEqual(to date2: Date, toGranularity component: Calendar.Component) -> Bool {
    return Calendar.autoupdatingCurrent.isDate(self, equalTo: date2, toGranularity: component)
  }
  
  func range(of smaller: Calendar.Component, in larger: Calendar.Component) -> Range<Int>? {
    return Calendar.autoupdatingCurrent.range(of: smaller, in: larger, for: self)
  }
  
  func nextWeekend(start: inout Date, interval: inout TimeInterval, direction: Calendar.SearchDirection = .forward) -> Bool {
    return Calendar.autoupdatingCurrent.nextWeekend(startingAfter: self, start: &start, interval: &interval, direction: direction)
  }
  
  func nextWeekend(direction: Calendar.SearchDirection = .forward) -> DateInterval? {
    return Calendar.autoupdatingCurrent.nextWeekend(startingAfter: self, direction: direction)
  }
  
  func dateInterval(of component: Calendar.Component, start: inout Date, interval: inout TimeInterval) -> Bool {
    return Calendar.autoupdatingCurrent.dateInterval(of: component, start: &start, interval: &interval, for: self)
  }
  
  func dateInterval(of component: Calendar.Component) -> DateInterval? {
    return Calendar.autoupdatingCurrent.dateInterval(of: component, for: self)
  }
  
  func ordinality(of smaller: Calendar.Component, in larger: Calendar.Component) -> Int? {
    return Calendar.autoupdatingCurrent.ordinality(of: smaller, in: larger, for: self)
  }
  
  func dateComponents(_ components: Set<Calendar.Component>) -> DateComponents {
    return Calendar.autoupdatingCurrent.dateComponents(components, from: self)
  }
  
  func dateComponents(in timeZone: TimeZone) -> DateComponents {
    return Calendar.autoupdatingCurrent.dateComponents(in: timeZone, from: self)
  }
  
  func dateComponents(_ components: Set<Calendar.Component>, to end: Date) -> DateComponents {
    return Calendar.autoupdatingCurrent.dateComponents(components, from: self, to: end)
  }
  
  func component(_ component: Calendar.Component) -> Int {
    return Calendar.autoupdatingCurrent.component(component, from: self)
  }
}

@available(iOS 13.0, *)
public extension Date {
  func formatted(_ formatter: RelativeDateTimeFormatter, relativeTo date2: Date) -> String {
    return formatter.localizedString(for: self, relativeTo: date2)
  }
}
