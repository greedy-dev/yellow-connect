// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: escrow.proto
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

/// Message Trading Channel state definition
public struct EscrowState: @unchecked Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var channelID: Data = Data()

  public var state: Core_State {
    get {return _state ?? Core_State()}
    set {_state = newValue}
  }
  /// Returns true if `state` has been explicitly set.
  public var hasState: Bool {return self._state != nil}
  /// Clears the value of `state`. Subsequent reads from it will return its default value.
  public mutating func clearState() {self._state = nil}

  public var stateHash: Data = Data()

  public var stateHashSigs: [Core_Signature] = []

  /// TODO: Find how to correction bind TradeChannel,
  /// Settlements and EscrowChannels
  /// Keep in mind that and EscrowChannels
  /// is a type of settlement options.
  public var settlementID: UInt64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _state: Core_State? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension EscrowState: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "EscrowState"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "channel_id"),
    2: .same(proto: "state"),
    3: .standard(proto: "state_hash"),
    4: .standard(proto: "state_hash_sigs"),
    5: .standard(proto: "settlement_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.channelID) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._state) }()
      case 3: try { try decoder.decodeSingularBytesField(value: &self.stateHash) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.stateHashSigs) }()
      case 5: try { try decoder.decodeSingularUInt64Field(value: &self.settlementID) }()
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
      try visitor.visitSingularBytesField(value: self.channelID, fieldNumber: 1)
    }
    try { if let v = self._state {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    if !self.stateHash.isEmpty {
      try visitor.visitSingularBytesField(value: self.stateHash, fieldNumber: 3)
    }
    if !self.stateHashSigs.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.stateHashSigs, fieldNumber: 4)
    }
    if self.settlementID != 0 {
      try visitor.visitSingularUInt64Field(value: self.settlementID, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: EscrowState, rhs: EscrowState) -> Bool {
    if lhs.channelID != rhs.channelID {return false}
    if lhs._state != rhs._state {return false}
    if lhs.stateHash != rhs.stateHash {return false}
    if lhs.stateHashSigs != rhs.stateHashSigs {return false}
    if lhs.settlementID != rhs.settlementID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
