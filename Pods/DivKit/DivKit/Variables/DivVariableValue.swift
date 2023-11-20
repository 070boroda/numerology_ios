import Foundation

import CommonCorePublic

@frozen
public enum DivVariableValue: Hashable {
  case string(String)
  case number(Double)
  case integer(Int)
  case bool(Bool)
  case color(Color)
  case url(URL)
  case dict([String: AnyHashable])
  case array([AnyHashable])

  @inlinable
  public func typedValue<T>() -> T? {
    switch self {
    case let .string(value):
      return value as? T
    case let .number(value):
      return value as? T
    case let .integer(value):
      return value as? T
    case let .bool(value):
      return value as? T
    case let .color(value):
      return value as? T
    case let .url(value):
      return value as? T
    case let .dict(value):
      return value as? T
    case let .array(value):
      return value as? T
    }
  }

  init?<T>(_ value: T) {
    switch value {
    case let value as String:
      self = .string(value)
    case let value as Double:
      self = .number(value)
    case let value as Int:
      self = .integer(value)
    case let value as Bool:
      self = .bool(value)
    case let value as Color:
      self = .color(value)
    case let value as URL:
      self = .url(value)
    case let value as [String: AnyHashable]:
      self = .dict(value)
    case let value as [AnyHashable]:
      self = .array(value)
    default:
      DivKitLogger.error("Unsupported variable value: \(value)")
      return nil
    }
  }
}
