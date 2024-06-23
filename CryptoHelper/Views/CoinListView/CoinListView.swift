//
//  ContentView.swift
//  CryptoHelper
//
//  Created by Denis on 6/21/24.
//

import SwiftUI
import RealmSwift
import CryptoAPI

struct CoinListView: View {
//    @StateObject var viewModel = CoinsViewModel()
    @StateObject var viewModel = MockViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                List() {
                    ForEach(viewModel.coins) { coin in
                        CoinRowView(coin: coin)
                    }
                }
                .listStyle(.plain)
                .onAppear {
                    viewModel.addFirstCoins()
                    UITableView.appearance().showsVerticalScrollIndicator = false
                }
                .task {
                    let api = CryptoAPI()
                    try? await api.run()
                }
//                .onReceive(viewModel.timer, perform: { _ in
//                    viewModel.connectToCryptoAPI()
//                })
            }
            .navigationTitle("Market")
            .clipShape(Rectangle())
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication
            .didBecomeActiveNotification), perform: { _ in
                viewModel.clearStockPricesHistory()
            })
    }
}

struct CoinListView_Previews: PreviewProvider {
    static var previews: some View {
        CoinListView()
    }
}
