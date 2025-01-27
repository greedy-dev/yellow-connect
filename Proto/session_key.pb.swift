// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: session_key.proto
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

public enum ParamCondition: SwiftProtobuf.Enum, Swift.CaseIterable {
  public typealias RawValue = Int
  case unspecified // = 0
  case equal // = 1
  case greaterThan // = 2
  case lessThan // = 3
  case greaterThanOrEqual // = 4
  case lessThanOrEqual // = 5
  case notEqual // = 6
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .equal
    case 2: self = .greaterThan
    case 3: self = .lessThan
    case 4: self = .greaterThanOrEqual
    case 5: self = .lessThanOrEqual
    case 6: self = .notEqual
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .equal: return 1
    case .greaterThan: return 2
    case .lessThan: return 3
    case .greaterThanOrEqual: return 4
    case .lessThanOrEqual: return 5
    case .notEqual: return 6
    case .UNRECOGNIZED(let i): return i
    }
  }

  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static let allCases: [ParamCondition] = [
    .unspecified,
    .equal,
    .greaterThan,
    .lessThan,
    .greaterThanOrEqual,
    .lessThanOrEqual,
    .notEqual,
  ]

}

public struct IncompleteUserOp: @unchecked Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var sender: Core_Address {
    get {return _sender ?? Core_Address()}
    set {_sender = newValue}
  }
  /// Returns true if `sender` has been explicitly set.
  public var hasSender: Bool {return self._sender != nil}
  /// Clears the value of `sender`. Subsequent reads from it will return its default value.
  public mutating func clearSender() {self._sender = nil}

  public var nonce: Core_BigInt {
    get {return _nonce ?? Core_BigInt()}
    set {_nonce = newValue}
  }
  /// Returns true if `nonce` has been explicitly set.
  public var hasNonce: Bool {return self._nonce != nil}
  /// Clears the value of `nonce`. Subsequent reads from it will return its default value.
  public mutating func clearNonce() {self._nonce = nil}

  public var initCode: Data = Data()

  public var callData: Data = Data()

  public var callGasLimit: Core_BigInt {
    get {return _callGasLimit ?? Core_BigInt()}
    set {_callGasLimit = newValue}
  }
  /// Returns true if `callGasLimit` has been explicitly set.
  public var hasCallGasLimit: Bool {return self._callGasLimit != nil}
  /// Clears the value of `callGasLimit`. Subsequent reads from it will return its default value.
  public mutating func clearCallGasLimit() {self._callGasLimit = nil}

  public var verificationGasLimit: Core_BigInt {
    get {return _verificationGasLimit ?? Core_BigInt()}
    set {_verificationGasLimit = newValue}
  }
  /// Returns true if `verificationGasLimit` has been explicitly set.
  public var hasVerificationGasLimit: Bool {return self._verificationGasLimit != nil}
  /// Clears the value of `verificationGasLimit`. Subsequent reads from it will return its default value.
  public mutating func clearVerificationGasLimit() {self._verificationGasLimit = nil}

  public var preVerificationGas: Core_BigInt {
    get {return _preVerificationGas ?? Core_BigInt()}
    set {_preVerificationGas = newValue}
  }
  /// Returns true if `preVerificationGas` has been explicitly set.
  public var hasPreVerificationGas: Bool {return self._preVerificationGas != nil}
  /// Clears the value of `preVerificationGas`. Subsequent reads from it will return its default value.
  public mutating func clearPreVerificationGas() {self._preVerificationGas = nil}

  public var maxFeePerGas: Core_BigInt {
    get {return _maxFeePerGas ?? Core_BigInt()}
    set {_maxFeePerGas = newValue}
  }
  /// Returns true if `maxFeePerGas` has been explicitly set.
  public var hasMaxFeePerGas: Bool {return self._maxFeePerGas != nil}
  /// Clears the value of `maxFeePerGas`. Subsequent reads from it will return its default value.
  public mutating func clearMaxFeePerGas() {self._maxFeePerGas = nil}

  public var maxPriorityFeePerGas: Core_BigInt {
    get {return _maxPriorityFeePerGas ?? Core_BigInt()}
    set {_maxPriorityFeePerGas = newValue}
  }
  /// Returns true if `maxPriorityFeePerGas` has been explicitly set.
  public var hasMaxPriorityFeePerGas: Bool {return self._maxPriorityFeePerGas != nil}
  /// Clears the value of `maxPriorityFeePerGas`. Subsequent reads from it will return its default value.
  public mutating func clearMaxPriorityFeePerGas() {self._maxPriorityFeePerGas = nil}

  public var paymasterAndData: Data = Data()

  public var signature: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _sender: Core_Address? = nil
  fileprivate var _nonce: Core_BigInt? = nil
  fileprivate var _callGasLimit: Core_BigInt? = nil
  fileprivate var _verificationGasLimit: Core_BigInt? = nil
  fileprivate var _preVerificationGas: Core_BigInt? = nil
  fileprivate var _maxFeePerGas: Core_BigInt? = nil
  fileprivate var _maxPriorityFeePerGas: Core_BigInt? = nil
}

public struct SessionKeyPermission: @unchecked Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var target: Core_Address {
    get {return _target ?? Core_Address()}
    set {_target = newValue}
  }
  /// Returns true if `target` has been explicitly set.
  public var hasTarget: Bool {return self._target != nil}
  /// Clears the value of `target`. Subsequent reads from it will return its default value.
  public mutating func clearTarget() {self._target = nil}

  public var functionAbi: Data = Data()

  public var valueLimit: Core_BigInt {
    get {return _valueLimit ?? Core_BigInt()}
    set {_valueLimit = newValue}
  }
  /// Returns true if `valueLimit` has been explicitly set.
  public var hasValueLimit: Bool {return self._valueLimit != nil}
  /// Clears the value of `valueLimit`. Subsequent reads from it will return its default value.
  public mutating func clearValueLimit() {self._valueLimit = nil}

  public var paramRules: [ParamRule] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _target: Core_Address? = nil
  fileprivate var _valueLimit: Core_BigInt? = nil
}

public struct ParamRule: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var condition: ParamCondition = .unspecified

  public var param: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension ParamCondition: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "PARAM_CONDITION_UNSPECIFIED"),
    1: .same(proto: "PARAM_CONDITION_EQUAL"),
    2: .same(proto: "PARAM_CONDITION_GREATER_THAN"),
    3: .same(proto: "PARAM_CONDITION_LESS_THAN"),
    4: .same(proto: "PARAM_CONDITION_GREATER_THAN_OR_EQUAL"),
    5: .same(proto: "PARAM_CONDITION_LESS_THAN_OR_EQUAL"),
    6: .same(proto: "PARAM_CONDITION_NOT_EQUAL"),
  ]
}

extension IncompleteUserOp: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IncompleteUserOp"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "sender"),
    2: .same(proto: "nonce"),
    3: .standard(proto: "init_code"),
    4: .standard(proto: "call_data"),
    5: .standard(proto: "call_gas_limit"),
    6: .standard(proto: "verification_gas_limit"),
    7: .standard(proto: "pre_verification_gas"),
    8: .standard(proto: "max_fee_per_gas"),
    9: .standard(proto: "max_priority_fee_per_gas"),
    10: .standard(proto: "paymaster_and_data"),
    11: .same(proto: "signature"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._sender) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._nonce) }()
      case 3: try { try decoder.decodeSingularBytesField(value: &self.initCode) }()
      case 4: try { try decoder.decodeSingularBytesField(value: &self.callData) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._callGasLimit) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._verificationGasLimit) }()
      case 7: try { try decoder.decodeSingularMessageField(value: &self._preVerificationGas) }()
      case 8: try { try decoder.decodeSingularMessageField(value: &self._maxFeePerGas) }()
      case 9: try { try decoder.decodeSingularMessageField(value: &self._maxPriorityFeePerGas) }()
      case 10: try { try decoder.decodeSingularBytesField(value: &self.paymasterAndData) }()
      case 11: try { try decoder.decodeSingularBytesField(value: &self.signature) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._sender {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._nonce {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    if !self.initCode.isEmpty {
      try visitor.visitSingularBytesField(value: self.initCode, fieldNumber: 3)
    }
    if !self.callData.isEmpty {
      try visitor.visitSingularBytesField(value: self.callData, fieldNumber: 4)
    }
    try { if let v = self._callGasLimit {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    } }()
    try { if let v = self._verificationGasLimit {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    } }()
    try { if let v = self._preVerificationGas {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    } }()
    try { if let v = self._maxFeePerGas {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    } }()
    try { if let v = self._maxPriorityFeePerGas {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
    } }()
    if !self.paymasterAndData.isEmpty {
      try visitor.visitSingularBytesField(value: self.paymasterAndData, fieldNumber: 10)
    }
    if !self.signature.isEmpty {
      try visitor.visitSingularBytesField(value: self.signature, fieldNumber: 11)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IncompleteUserOp, rhs: IncompleteUserOp) -> Bool {
    if lhs._sender != rhs._sender {return false}
    if lhs._nonce != rhs._nonce {return false}
    if lhs.initCode != rhs.initCode {return false}
    if lhs.callData != rhs.callData {return false}
    if lhs._callGasLimit != rhs._callGasLimit {return false}
    if lhs._verificationGasLimit != rhs._verificationGasLimit {return false}
    if lhs._preVerificationGas != rhs._preVerificationGas {return false}
    if lhs._maxFeePerGas != rhs._maxFeePerGas {return false}
    if lhs._maxPriorityFeePerGas != rhs._maxPriorityFeePerGas {return false}
    if lhs.paymasterAndData != rhs.paymasterAndData {return false}
    if lhs.signature != rhs.signature {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension SessionKeyPermission: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "SessionKeyPermission"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "target"),
    2: .standard(proto: "function_abi"),
    3: .standard(proto: "value_limit"),
    4: .standard(proto: "param_rules"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._target) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.functionAbi) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._valueLimit) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.paramRules) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._target {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.functionAbi.isEmpty {
      try visitor.visitSingularBytesField(value: self.functionAbi, fieldNumber: 2)
    }
    try { if let v = self._valueLimit {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    if !self.paramRules.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.paramRules, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: SessionKeyPermission, rhs: SessionKeyPermission) -> Bool {
    if lhs._target != rhs._target {return false}
    if lhs.functionAbi != rhs.functionAbi {return false}
    if lhs._valueLimit != rhs._valueLimit {return false}
    if lhs.paramRules != rhs.paramRules {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension ParamRule: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "ParamRule"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "condition"),
    2: .same(proto: "param"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.condition) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.param) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.condition != .unspecified {
      try visitor.visitSingularEnumField(value: self.condition, fieldNumber: 1)
    }
    if !self.param.isEmpty {
      try visitor.visitSingularStringField(value: self.param, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: ParamRule, rhs: ParamRule) -> Bool {
    if lhs.condition != rhs.condition {return false}
    if lhs.param != rhs.param {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
