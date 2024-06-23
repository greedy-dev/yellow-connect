//
//  WalletManager.swift
//  CryptoHelper
//
//  Created by Denis on 6/22/24.
//

import Foundation
import WalletConnectSwift

final class WalletManager: ClientDelegate {
    let client: Client
    
    init() {
        self.client = Client(delegate: self)
    }
    
    func client(_ client: WalletConnectSwift.Client, didFailToConnect url: WalletConnectSwift.WCURL) {
        <#code#>
    }
    
    func client(_ client: WalletConnectSwift.Client, didConnect url: WalletConnectSwift.WCURL) {
        <#code#>
    }
    
    func client(_ client: WalletConnectSwift.Client, didConnect session: WalletConnectSwift.Session) {
        
        try? client.personal_sign(url: session.url, message: "Hi there!", account: session.walletInfo!.accounts[0]) {
            [weak self] response in
            
        }
    }
    
    func client(_ client: WalletConnectSwift.Client, didDisconnect session: WalletConnectSwift.Session) {
        <#code#>
    }
    
    func client(_ client: WalletConnectSwift.Client, didUpdate session: WalletConnectSwift.Session) {
        <#code#>
    }
}
