// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: state.proto
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

public struct Core_State: @unchecked Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var participants: [Core_Address] = []

  public var channelNonce: UInt64 = 0

  public var appDefinition: Core_Address {
    get {return _appDefinition ?? Core_Address()}
    set {_appDefinition = newValue}
  }
  /// Returns true if `appDefinition` has been explicitly set.
  public var hasAppDefinition: Bool {return self._appDefinition != nil}
  /// Clears the value of `appDefinition`. Subsequent reads from it will return its default value.
  public mutating func clearAppDefinition() {self._appDefinition = nil}

  public var challengeDuration: UInt32 = 0

  public var appData: Data = Data()

  public var outcome: Outcome_Exit {
    get {return _outcome ?? Outcome_Exit()}
    set {_outcome = newValue}
  }
  /// Returns true if `outcome` has been explicitly set.
  public var hasOutcome: Bool {return self._outcome != nil}
  /// Clears the value of `outcome`. Subsequent reads from it will return its default value.
  public mutating func clearOutcome() {self._outcome = nil}

  public var turnNum: UInt64 = 0

  public var isFinal: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _appDefinition: Core_Address? = nil
  fileprivate var _outcome: Outcome_Exit? = nil
}

public struct Core_MarginCall: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var version: UInt64 = 0

  public var amounts: [Core_Decimal] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Core_SignedMarginCall: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var marginCall: Core_MarginCall {
    get {return _marginCall ?? Core_MarginCall()}
    set {_marginCall = newValue}
  }
  /// Returns true if `marginCall` has been explicitly set.
  public var hasMarginCall: Bool {return self._marginCall != nil}
  /// Clears the value of `marginCall`. Subsequent reads from it will return its default value.
  public mutating func clearMarginCall() {self._marginCall = nil}

  public var sigs: [Core_Signature] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _marginCall: Core_MarginCall? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "core"

extension Core_State: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".State"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "participants"),
    2: .standard(proto: "channel_nonce"),
    3: .standard(proto: "app_definition"),
    4: .standard(proto: "challenge_duration"),
    5: .standard(proto: "app_data"),
    6: .same(proto: "outcome"),
    7: .standard(proto: "turn_num"),
    8: .standard(proto: "is_final"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.participants) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.channelNonce) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._appDefinition) }()
      case 4: try { try decoder.decodeSingularUInt32Field(value: &self.challengeDuration) }()
      case 5: try { try decoder.decodeSingularBytesField(value: &self.appData) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._outcome) }()
      case 7: try { try decoder.decodeSingularUInt64Field(value: &self.turnNum) }()
      case 8: try { try decoder.decodeSingularBoolField(value: &self.isFinal) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.participants.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.participants, fieldNumber: 1)
    }
    if self.channelNonce != 0 {
      try visitor.visitSingularUInt64Field(value: self.channelNonce, fieldNumber: 2)
    }
    try { if let v = self._appDefinition {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    } }()
    if self.challengeDuration != 0 {
      try visitor.visitSingularUInt32Field(value: self.challengeDuration, fieldNumber: 4)
    }
    if !self.appData.isEmpty {
      try visitor.visitSingularBytesField(value: self.appData, fieldNumber: 5)
    }
    try { if let v = self._outcome {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    } }()
    if self.turnNum != 0 {
      try visitor.visitSingularUInt64Field(value: self.turnNum, fieldNumber: 7)
    }
    if self.isFinal != false {
      try visitor.visitSingularBoolField(value: self.isFinal, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Core_State, rhs: Core_State) -> Bool {
    if lhs.participants != rhs.participants {return false}
    if lhs.channelNonce != rhs.channelNonce {return false}
    if lhs._appDefinition != rhs._appDefinition {return false}
    if lhs.challengeDuration != rhs.challengeDuration {return false}
    if lhs.appData != rhs.appData {return false}
    if lhs._outcome != rhs._outcome {return false}
    if lhs.turnNum != rhs.turnNum {return false}
    if lhs.isFinal != rhs.isFinal {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Core_MarginCall: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MarginCall"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "version"),
    2: .same(proto: "amounts"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.version) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.amounts) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.version != 0 {
      try visitor.visitSingularUInt64Field(value: self.version, fieldNumber: 1)
    }
    if !self.amounts.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.amounts, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Core_MarginCall, rhs: Core_MarginCall) -> Bool {
    if lhs.version != rhs.version {return false}
    if lhs.amounts != rhs.amounts {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Core_SignedMarginCall: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SignedMarginCall"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "margin_call"),
    2: .same(proto: "sigs"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._marginCall) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.sigs) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._marginCall {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    if !self.sigs.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.sigs, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Core_SignedMarginCall, rhs: Core_SignedMarginCall) -> Bool {
    if lhs._marginCall != rhs._marginCall {return false}
    if lhs.sigs != rhs.sigs {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
