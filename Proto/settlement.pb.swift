// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: settlement.proto
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

public enum Settlement_SettlementType: SwiftProtobuf.Enum, Swift.CaseIterable {
  public typealias RawValue = Int
  case unspecified // = 0
  case available // = 1
  case force // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .available
    case 2: self = .force
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .available: return 1
    case .force: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static let allCases: [Settlement_SettlementType] = [
    .unspecified,
    .available,
    .force,
  ]

}

public enum Settlement_SettlementState: SwiftProtobuf.Enum, Swift.CaseIterable {
  public typealias RawValue = Int
  case unspecified // = 0
  case proposed // = 1
  case accepted // = 2
  case initiated // = 3
  case prepared // = 4
  case executed // = 5
  case completed // = 6
  case withdrawn // = 7
  case failed // = 8
  case rejected // = 9
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .proposed
    case 2: self = .accepted
    case 3: self = .initiated
    case 4: self = .prepared
    case 5: self = .executed
    case 6: self = .completed
    case 7: self = .withdrawn
    case 8: self = .failed
    case 9: self = .rejected
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .proposed: return 1
    case .accepted: return 2
    case .initiated: return 3
    case .prepared: return 4
    case .executed: return 5
    case .completed: return 6
    case .withdrawn: return 7
    case .failed: return 8
    case .rejected: return 9
    case .UNRECOGNIZED(let i): return i
    }
  }

  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static let allCases: [Settlement_SettlementState] = [
    .unspecified,
    .proposed,
    .accepted,
    .initiated,
    .prepared,
    .executed,
    .completed,
    .withdrawn,
    .failed,
    .rejected,
  ]

}

public enum Settlement_PaymentMethod: SwiftProtobuf.Enum, Swift.CaseIterable {
  public typealias RawValue = Int
  case unspecified // = 0
  case escrow // = 1
  case mock // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .escrow
    case 2: self = .mock
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .escrow: return 1
    case .mock: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static let allCases: [Settlement_PaymentMethod] = [
    .unspecified,
    .escrow,
    .mock,
  ]

}

public struct Settlement_Asset: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var symbol: String = String()

  public var chainID: UInt64 = 0

  public var address: Core_Address {
    get {return _address ?? Core_Address()}
    set {_address = newValue}
  }
  /// Returns true if `address` has been explicitly set.
  public var hasAddress: Bool {return self._address != nil}
  /// Clears the value of `address`. Subsequent reads from it will return its default value.
  public mutating func clearAddress() {self._address = nil}

  public var decimals: UInt32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _address: Core_Address? = nil
}

public struct Settlement_Liability: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var asset: Settlement_Asset {
    get {return _asset ?? Settlement_Asset()}
    set {_asset = newValue}
  }
  /// Returns true if `asset` has been explicitly set.
  public var hasAsset: Bool {return self._asset != nil}
  /// Clears the value of `asset`. Subsequent reads from it will return its default value.
  public mutating func clearAsset() {self._asset = nil}

  public var amount: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _asset: Settlement_Asset? = nil
}

public struct Settlement_SettlementLedger: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var initiatorEntries: [Settlement_Liability] = []

  public var responderEntries: [Settlement_Liability] = []

  public var nextMargin: Core_MarginCall {
    get {return _nextMargin ?? Core_MarginCall()}
    set {_nextMargin = newValue}
  }
  /// Returns true if `nextMargin` has been explicitly set.
  public var hasNextMargin: Bool {return self._nextMargin != nil}
  /// Clears the value of `nextMargin`. Subsequent reads from it will return its default value.
  public mutating func clearNextMargin() {self._nextMargin = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _nextMargin: Core_MarginCall? = nil
}

public struct Settlement_Settlement: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var cid: String = String()

  public var type: Settlement_SettlementType = .unspecified

  public var state: Settlement_SettlementState = .unspecified

  public var ledger: Settlement_SettlementLedger {
    get {return _ledger ?? Settlement_SettlementLedger()}
    set {_ledger = newValue}
  }
  /// Returns true if `ledger` has been explicitly set.
  public var hasLedger: Bool {return self._ledger != nil}
  /// Clears the value of `ledger`. Subsequent reads from it will return its default value.
  public mutating func clearLedger() {self._ledger = nil}

  public var psmTurnNum: UInt64 = 0

  public var paymentMethod: Settlement_PaymentMethod = .unspecified

  public var markets: [String] = []

  public var chainID: UInt64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _ledger: Settlement_SettlementLedger? = nil
}

public struct Settlement_PrepareRequest: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var settlement: Settlement_Settlement {
    get {return _settlement ?? Settlement_Settlement()}
    set {_settlement = newValue}
  }
  /// Returns true if `settlement` has been explicitly set.
  public var hasSettlement: Bool {return self._settlement != nil}
  /// Clears the value of `settlement`. Subsequent reads from it will return its default value.
  public mutating func clearSettlement() {self._settlement = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _settlement: Settlement_Settlement? = nil
}

public struct Settlement_PrepareResponse: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var state: Settlement_SettlementState = .unspecified

  public var markets: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Settlement_SettlementStateUpdate: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var cid: String = String()

  public var toState: Settlement_SettlementState = .unspecified

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Settlement_StateConfirmation: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var state: Settlement_SettlementState = .unspecified

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Settlement_FinalizeRequest: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var cid: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Settlement_FinalizeResponse: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var state: Settlement_SettlementState = .unspecified

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "settlement"

extension Settlement_SettlementType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "SETTLEMENT_TYPE_UNSPECIFIED"),
    1: .same(proto: "SETTLEMENT_TYPE_AVAILABLE"),
    2: .same(proto: "SETTLEMENT_TYPE_FORCE"),
  ]
}

extension Settlement_SettlementState: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "SETTLEMENT_STATE_UNSPECIFIED"),
    1: .same(proto: "SETTLEMENT_STATE_PROPOSED"),
    2: .same(proto: "SETTLEMENT_STATE_ACCEPTED"),
    3: .same(proto: "SETTLEMENT_STATE_INITIATED"),
    4: .same(proto: "SETTLEMENT_STATE_PREPARED"),
    5: .same(proto: "SETTLEMENT_STATE_EXECUTED"),
    6: .same(proto: "SETTLEMENT_STATE_COMPLETED"),
    7: .same(proto: "SETTLEMENT_STATE_WITHDRAWN"),
    8: .same(proto: "SETTLEMENT_STATE_FAILED"),
    9: .same(proto: "SETTLEMENT_STATE_REJECTED"),
  ]
}

extension Settlement_PaymentMethod: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "PAYMENT_METHOD_UNSPECIFIED"),
    1: .same(proto: "PAYMENT_METHOD_ESCROW"),
    2: .same(proto: "PAYMENT_METHOD_MOCK"),
  ]
}

extension Settlement_Asset: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Asset"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "symbol"),
    2: .standard(proto: "chain_id"),
    3: .same(proto: "address"),
    4: .same(proto: "decimals"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.symbol) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.chainID) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._address) }()
      case 4: try { try decoder.decodeSingularUInt32Field(value: &self.decimals) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.symbol.isEmpty {
      try visitor.visitSingularStringField(value: self.symbol, fieldNumber: 1)
    }
    if self.chainID != 0 {
      try visitor.visitSingularUInt64Field(value: self.chainID, fieldNumber: 2)
    }
    try { if let v = self._address {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    if self.decimals != 0 {
      try visitor.visitSingularUInt32Field(value: self.decimals, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Settlement_Asset, rhs: Settlement_Asset) -> Bool {
    if lhs.symbol != rhs.symbol {return false}
    if lhs.chainID != rhs.chainID {return false}
    if lhs._address != rhs._address {return false}
    if lhs.decimals != rhs.decimals {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Settlement_Liability: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Liability"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "asset"),
    2: .same(proto: "amount"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._asset) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.amount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._asset {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.amount.isEmpty {
      try visitor.visitSingularStringField(value: self.amount, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Settlement_Liability, rhs: Settlement_Liability) -> Bool {
    if lhs._asset != rhs._asset {return false}
    if lhs.amount != rhs.amount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Settlement_SettlementLedger: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SettlementLedger"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "initiator_entries"),
    2: .standard(proto: "responder_entries"),
    3: .standard(proto: "next_margin"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.initiatorEntries) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.responderEntries) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._nextMargin) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.initiatorEntries.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.initiatorEntries, fieldNumber: 1)
    }
    if !self.responderEntries.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.responderEntries, fieldNumber: 2)
    }
    try { if let v = self._nextMargin {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Settlement_SettlementLedger, rhs: Settlement_SettlementLedger) -> Bool {
    if lhs.initiatorEntries != rhs.initiatorEntries {return false}
    if lhs.responderEntries != rhs.responderEntries {return false}
    if lhs._nextMargin != rhs._nextMargin {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Settlement_Settlement: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Settlement"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "cid"),
    2: .same(proto: "type"),
    3: .same(proto: "state"),
    4: .same(proto: "ledger"),
    5: .standard(proto: "psm_turn_num"),
    6: .standard(proto: "payment_method"),
    7: .same(proto: "markets"),
    8: .standard(proto: "chain_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.cid) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.type) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.state) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._ledger) }()
      case 5: try { try decoder.decodeSingularUInt64Field(value: &self.psmTurnNum) }()
      case 6: try { try decoder.decodeSingularEnumField(value: &self.paymentMethod) }()
      case 7: try { try decoder.decodeRepeatedStringField(value: &self.markets) }()
      case 8: try { try decoder.decodeSingularUInt64Field(value: &self.chainID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.cid.isEmpty {
      try visitor.visitSingularStringField(value: self.cid, fieldNumber: 1)
    }
    if self.type != .unspecified {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 2)
    }
    if self.state != .unspecified {
      try visitor.visitSingularEnumField(value: self.state, fieldNumber: 3)
    }
    try { if let v = self._ledger {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    } }()
    if self.psmTurnNum != 0 {
      try visitor.visitSingularUInt64Field(value: self.psmTurnNum, fieldNumber: 5)
    }
    if self.paymentMethod != .unspecified {
      try visitor.visitSingularEnumField(value: self.paymentMethod, fieldNumber: 6)
    }
    if !self.markets.isEmpty {
      try visitor.visitRepeatedStringField(value: self.markets, fieldNumber: 7)
    }
    if self.chainID != 0 {
      try visitor.visitSingularUInt64Field(value: self.chainID, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Settlement_Settlement, rhs: Settlement_Settlement) -> Bool {
    if lhs.cid != rhs.cid {return false}
    if lhs.type != rhs.type {return false}
    if lhs.state != rhs.state {return false}
    if lhs._ledger != rhs._ledger {return false}
    if lhs.psmTurnNum != rhs.psmTurnNum {return false}
    if lhs.paymentMethod != rhs.paymentMethod {return false}
    if lhs.markets != rhs.markets {return false}
    if lhs.chainID != rhs.chainID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Settlement_PrepareRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PrepareRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .same(proto: "settlement"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 2: try { try decoder.decodeSingularMessageField(value: &self._settlement) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._settlement {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Settlement_PrepareRequest, rhs: Settlement_PrepareRequest) -> Bool {
    if lhs._settlement != rhs._settlement {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Settlement_PrepareResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PrepareResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "state"),
    2: .same(proto: "markets"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.state) }()
      case 2: try { try decoder.decodeRepeatedStringField(value: &self.markets) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.state != .unspecified {
      try visitor.visitSingularEnumField(value: self.state, fieldNumber: 1)
    }
    if !self.markets.isEmpty {
      try visitor.visitRepeatedStringField(value: self.markets, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Settlement_PrepareResponse, rhs: Settlement_PrepareResponse) -> Bool {
    if lhs.state != rhs.state {return false}
    if lhs.markets != rhs.markets {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Settlement_SettlementStateUpdate: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SettlementStateUpdate"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "cid"),
    2: .standard(proto: "to_state"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.cid) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.toState) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.cid.isEmpty {
      try visitor.visitSingularStringField(value: self.cid, fieldNumber: 1)
    }
    if self.toState != .unspecified {
      try visitor.visitSingularEnumField(value: self.toState, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Settlement_SettlementStateUpdate, rhs: Settlement_SettlementStateUpdate) -> Bool {
    if lhs.cid != rhs.cid {return false}
    if lhs.toState != rhs.toState {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Settlement_StateConfirmation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".StateConfirmation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "state"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.state) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.state != .unspecified {
      try visitor.visitSingularEnumField(value: self.state, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Settlement_StateConfirmation, rhs: Settlement_StateConfirmation) -> Bool {
    if lhs.state != rhs.state {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Settlement_FinalizeRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".FinalizeRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "cid"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.cid) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.cid.isEmpty {
      try visitor.visitSingularStringField(value: self.cid, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Settlement_FinalizeRequest, rhs: Settlement_FinalizeRequest) -> Bool {
    if lhs.cid != rhs.cid {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Settlement_FinalizeResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".FinalizeResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "state"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.state) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.state != .unspecified {
      try visitor.visitSingularEnumField(value: self.state, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Settlement_FinalizeResponse, rhs: Settlement_FinalizeResponse) -> Bool {
    if lhs.state != rhs.state {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}