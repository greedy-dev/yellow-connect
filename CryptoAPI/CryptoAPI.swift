//
//  CryptoAPI.swift
//  CryptoAPI
//
//  Created by Denis on 6/23/24.
//

import Foundation
import GRPC
import NIO
import Proto



public final class CryptoAPI {
    
    public init() {}
    
    public func run() async throws {
        // Setup an `EventLoopGroup` for the connection to run on.
        //
        // See: https://github.com/apple/swift-nio#eventloops-and-eventloopgroups
        let group = MultiThreadedEventLoopGroup(numberOfThreads: 1)
        
        // Make sure the group is shutdown when we're done with it.
        defer {
            try! group.syncShutdownGracefully()
        }
        
        // Configure the channel, we're not using TLS so the connection is `insecure`.
        let channel = try GRPCChannelPool.with(
            target: .host("clearpeer-a.kayen.io", port: 443),
            transportSecurity: .tls(.makeClientConfigurationBackedByNIOSSL()),
            eventLoopGroup: group
        )
        
        // Close the connection when we're done with it.
        defer {
            try! channel.close().wait()
        }
        
        let client = OperatorAsyncClient(channel: channel)
        
        let challengeRequest = GetChallengeRequest.with { req in
            req.address = Core_Address.with { addr in
                addr.value = ""
            }
            req.name = "UserName"
        }
        
        do {
            let res = try await client.getChallenge(challengeRequest)
            print(res.challenge)
        } catch {
            print(error)
        }
    }
    
}

