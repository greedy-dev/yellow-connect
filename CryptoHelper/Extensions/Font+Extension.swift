//
//  EventFonts.swift
//  CryptoHelper
//
//  Created by Denis on 6/21/24.
//

import SwiftUI

extension Font {
    struct Event {
        let name = Font.system(size: 14, weight: .regular, design: .default)
        let code = Font.system(size: 14, weight: .regular, design: .default)
        let price = Font.system(size: 14, weight: .regular, design: .default)
        let minMaxPriceLabel = Font.system(size: 14, weight: .regular, design: .default)
        let minMaxPrice = Font.system(size: 14, weight: .regular, design: .default)
    }
    
    static let event = Event()
}
