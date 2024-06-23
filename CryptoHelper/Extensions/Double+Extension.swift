//
//  NumberFormatter.swift
//  CryptoHelper
//
//  Created by Denis on 6/21/24.
//

import Foundation
import SwiftUI

extension Double {
    func formatPriceNumber() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = self < 1 ? 6 : 2
        
        let NSNumber = NSNumber(value: self)
        let formattedValue = formatter.string(from: NSNumber) ?? ""
        
        return "$ " + formattedValue
    }
}
