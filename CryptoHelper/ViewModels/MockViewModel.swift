//
//  MockViewModel.swift
//  CryptoHelper
//
//  Created by Denis on 6/23/24.
//

import Foundation
import metamask_ios_sdk

final class MockViewModel: ObservableObject {
    let coins: [Coin] = [
        .init(
            name: "LUBE",
            price: 0.000028834,
            code: "LUBE/USD",
            imageUrl: "https://raw.githubusercontent.com/layer-3/clearsync/master/networks/icons/lube-64x64.png",
            priceMoviment: .up
        )
    ]
    
    func clearStockPricesHistory() {}
    func connectToCryptoAPI() {}
    func addFirstCoins() {}
    
    
    func connect() {
        
    }
    func signMessage() {
//        PackERC6492Sig(<#T##factoryAddress: UnsafeMutablePointer<CChar>!##UnsafeMutablePointer<CChar>!#>, <#T##factoryCalldata: UnsafeMutablePointer<CChar>!##UnsafeMutablePointer<CChar>!#>, <#T##sig: UnsafeMutablePointer<CChar>!##UnsafeMutablePointer<CChar>!#>)
        
    }
}
