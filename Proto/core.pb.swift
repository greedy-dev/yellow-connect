// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: core.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public enum Core_ProtocolIndex: SwiftProtobuf.Enum, Swift.CaseIterable {
  public typealias RawValue = Int
  case unspecified // = 0
  case initiator // = 1
  case responder // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .initiator
    case 2: self = .responder
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .initiator: return 1
    case .responder: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static let allCases: [Core_ProtocolIndex] = [
    .unspecified,
    .initiator,
    .responder,
  ]

}

public enum Core_Direction: SwiftProtobuf.Enum, Swift.CaseIterable {
  public typealias RawValue = Int
  case unspecified // = 0
  case buy // = 1
  case sell // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .buy
    case 2: self = .sell
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .buy: return 1
    case .sell: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static let allCases: [Core_Direction] = [
    .unspecified,
    .buy,
    .sell,
  ]

}

public enum Core_PositionStatus: SwiftProtobuf.Enum, Swift.CaseIterable {
  public typealias RawValue = Int
  case unspecified // = 0
  case `open` // = 1
  case inSettlement // = 2
  case settled // = 3
  case closed // = 4
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .open
    case 2: self = .inSettlement
    case 3: self = .settled
    case 4: self = .closed
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .open: return 1
    case .inSettlement: return 2
    case .settled: return 3
    case .closed: return 4
    case .UNRECOGNIZED(let i): return i
    }
  }

  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static let allCases: [Core_PositionStatus] = [
    .unspecified,
    .open,
    .inSettlement,
    .settled,
    .closed,
  ]

}

public enum Core_MarginLimitType: SwiftProtobuf.Enum, Swift.CaseIterable {
  public typealias RawValue = Int
  case unspecified // = 0
  case none // = 1
  case soft // = 2
  case hard // = 3
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .none
    case 2: self = .soft
    case 3: self = .hard
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .none: return 1
    case .soft: return 2
    case .hard: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static let allCases: [Core_MarginLimitType] = [
    .unspecified,
    .none,
    .soft,
    .hard,
  ]

}

/// Represent Decimal as a string
/// Can be changed to 2 numbers
/// Due to compatibility issues we may need
/// To create a new Decimal type compatible with ExitFormat
public struct Core_Decimal: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var value: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Core_BigInt: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var value: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

///*
/// A 42-character hexadecimal address
/// derived from the last 20 bytes of the public key
public struct Core_Address: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var value: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

///*
/// A 132-character hexadecimal string
public struct Core_Signature: @unchecked Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var v: UInt32 = 0

  /// 32 bytes
  public var r: Data = Data()

  /// 32 bytes
  public var s: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Core_Market: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var base: String = String()

  public var quote: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Core_Trade: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var channelID: String = String()

  public var externalID: String = String()

  public var market: Core_Market {
    get {return _market ?? Core_Market()}
    set {_market = newValue}
  }
  /// Returns true if `market` has been explicitly set.
  public var hasMarket: Bool {return self._market != nil}
  /// Clears the value of `market`. Subsequent reads from it will return its default value.
  public mutating func clearMarket() {self._market = nil}

  public var direction: Core_Direction = .unspecified

  public var amount: Core_Decimal {
    get {return _amount ?? Core_Decimal()}
    set {_amount = newValue}
  }
  /// Returns true if `amount` has been explicitly set.
  public var hasAmount: Bool {return self._amount != nil}
  /// Clears the value of `amount`. Subsequent reads from it will return its default value.
  public mutating func clearAmount() {self._amount = nil}

  public var price: Core_Decimal {
    get {return _price ?? Core_Decimal()}
    set {_price = newValue}
  }
  /// Returns true if `price` has been explicitly set.
  public var hasPrice: Bool {return self._price != nil}
  /// Clears the value of `price`. Subsequent reads from it will return its default value.
  public mutating func clearPrice() {self._price = nil}

  public var executedAt: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _market: Core_Market? = nil
  fileprivate var _amount: Core_Decimal? = nil
  fileprivate var _price: Core_Decimal? = nil
}

public struct Core_Position: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var id: String = String()

  public var channelID: String = String()

  public var market: Core_Market {
    get {return _market ?? Core_Market()}
    set {_market = newValue}
  }
  /// Returns true if `market` has been explicitly set.
  public var hasMarket: Bool {return self._market != nil}
  /// Clears the value of `market`. Subsequent reads from it will return its default value.
  public mutating func clearMarket() {self._market = nil}

  public var direction: Core_Direction = .unspecified

  public var amount: String = String()

  public var cost: String = String()

  public var marketValue: String = String()

  public var pnl: String = String()

  public var status: Core_PositionStatus = .unspecified

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _market: Core_Market? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "core"

extension Core_ProtocolIndex: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "PROTOCOL_INDEX_UNSPECIFIED"),
    1: .same(proto: "PROTOCOL_INDEX_INITIATOR"),
    2: .same(proto: "PROTOCOL_INDEX_RESPONDER"),
  ]
}

extension Core_Direction: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "DIRECTION_UNSPECIFIED"),
    1: .same(proto: "DIRECTION_BUY"),
    2: .same(proto: "DIRECTION_SELL"),
  ]
}

extension Core_PositionStatus: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "POSITION_STATUS_UNSPECIFIED"),
    1: .same(proto: "POSITION_STATUS_OPEN"),
    2: .same(proto: "POSITION_STATUS_IN_SETTLEMENT"),
    3: .same(proto: "POSITION_STATUS_SETTLED"),
    4: .same(proto: "POSITION_STATUS_CLOSED"),
  ]
}

extension Core_MarginLimitType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "MARGIN_LIMIT_TYPE_UNSPECIFIED"),
    1: .same(proto: "MARGIN_LIMIT_TYPE_NONE"),
    2: .same(proto: "MARGIN_LIMIT_TYPE_SOFT"),
    3: .same(proto: "MARGIN_LIMIT_TYPE_HARD"),
  ]
}

extension Core_Decimal: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Decimal"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "value"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.value) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.value.isEmpty {
      try visitor.visitSingularStringField(value: self.value, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Core_Decimal, rhs: Core_Decimal) -> Bool {
    if lhs.value != rhs.value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Core_BigInt: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BigInt"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "value"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.value) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.value.isEmpty {
      try visitor.visitSingularStringField(value: self.value, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Core_BigInt, rhs: Core_BigInt) -> Bool {
    if lhs.value != rhs.value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Core_Address: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Address"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "value"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.value) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.value.isEmpty {
      try visitor.visitSingularStringField(value: self.value, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Core_Address, rhs: Core_Address) -> Bool {
    if lhs.value != rhs.value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Core_Signature: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Signature"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "v"),
    2: .same(proto: "r"),
    3: .same(proto: "s"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.v) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.r) }()
      case 3: try { try decoder.decodeSingularBytesField(value: &self.s) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.v != 0 {
      try visitor.visitSingularUInt32Field(value: self.v, fieldNumber: 1)
    }
    if !self.r.isEmpty {
      try visitor.visitSingularBytesField(value: self.r, fieldNumber: 2)
    }
    if !self.s.isEmpty {
      try visitor.visitSingularBytesField(value: self.s, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Core_Signature, rhs: Core_Signature) -> Bool {
    if lhs.v != rhs.v {return false}
    if lhs.r != rhs.r {return false}
    if lhs.s != rhs.s {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Core_Market: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Market"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "base"),
    2: .same(proto: "quote"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.base) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.quote) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.base.isEmpty {
      try visitor.visitSingularStringField(value: self.base, fieldNumber: 1)
    }
    if !self.quote.isEmpty {
      try visitor.visitSingularStringField(value: self.quote, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Core_Market, rhs: Core_Market) -> Bool {
    if lhs.base != rhs.base {return false}
    if lhs.quote != rhs.quote {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Core_Trade: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Trade"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "channel_id"),
    2: .standard(proto: "external_id"),
    3: .same(proto: "market"),
    4: .same(proto: "direction"),
    5: .same(proto: "amount"),
    6: .same(proto: "price"),
    7: .standard(proto: "executed_at"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.channelID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.externalID) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._market) }()
      case 4: try { try decoder.decodeSingularEnumField(value: &self.direction) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._amount) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._price) }()
      case 7: try { try decoder.decodeSingularInt64Field(value: &self.executedAt) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.channelID.isEmpty {
      try visitor.visitSingularStringField(value: self.channelID, fieldNumber: 1)
    }
    if !self.externalID.isEmpty {
      try visitor.visitSingularStringField(value: self.externalID, fieldNumber: 2)
    }
    try { if let v = self._market {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    if self.direction != .unspecified {
      try visitor.visitSingularEnumField(value: self.direction, fieldNumber: 4)
    }
    try { if let v = self._amount {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    } }()
    try { if let v = self._price {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    } }()
    if self.executedAt != 0 {
      try visitor.visitSingularInt64Field(value: self.executedAt, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Core_Trade, rhs: Core_Trade) -> Bool {
    if lhs.channelID != rhs.channelID {return false}
    if lhs.externalID != rhs.externalID {return false}
    if lhs._market != rhs._market {return false}
    if lhs.direction != rhs.direction {return false}
    if lhs._amount != rhs._amount {return false}
    if lhs._price != rhs._price {return false}
    if lhs.executedAt != rhs.executedAt {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Core_Position: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Position"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    9: .same(proto: "id"),
    1: .standard(proto: "channel_id"),
    2: .same(proto: "market"),
    3: .same(proto: "direction"),
    4: .same(proto: "amount"),
    5: .same(proto: "cost"),
    6: .standard(proto: "market_value"),
    7: .same(proto: "pnl"),
    8: .same(proto: "status"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.channelID) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._market) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.direction) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.amount) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.cost) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.marketValue) }()
      case 7: try { try decoder.decodeSingularStringField(value: &self.pnl) }()
      case 8: try { try decoder.decodeSingularEnumField(value: &self.status) }()
      case 9: try { try decoder.decodeSingularStringField(value: &self.id) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.channelID.isEmpty {
      try visitor.visitSingularStringField(value: self.channelID, fieldNumber: 1)
    }
    try { if let v = self._market {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    if self.direction != .unspecified {
      try visitor.visitSingularEnumField(value: self.direction, fieldNumber: 3)
    }
    if !self.amount.isEmpty {
      try visitor.visitSingularStringField(value: self.amount, fieldNumber: 4)
    }
    if !self.cost.isEmpty {
      try visitor.visitSingularStringField(value: self.cost, fieldNumber: 5)
    }
    if !self.marketValue.isEmpty {
      try visitor.visitSingularStringField(value: self.marketValue, fieldNumber: 6)
    }
    if !self.pnl.isEmpty {
      try visitor.visitSingularStringField(value: self.pnl, fieldNumber: 7)
    }
    if self.status != .unspecified {
      try visitor.visitSingularEnumField(value: self.status, fieldNumber: 8)
    }
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 9)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Core_Position, rhs: Core_Position) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.channelID != rhs.channelID {return false}
    if lhs._market != rhs._market {return false}
    if lhs.direction != rhs.direction {return false}
    if lhs.amount != rhs.amount {return false}
    if lhs.cost != rhs.cost {return false}
    if lhs.marketValue != rhs.marketValue {return false}
    if lhs.pnl != rhs.pnl {return false}
    if lhs.status != rhs.status {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
