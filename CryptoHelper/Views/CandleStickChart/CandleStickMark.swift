//
//  CandleStickMark.swift
//  CryptoHelper
//
//  Created by Denis on 6/21/24.
//

import SwiftUI
import Charts

struct CandleStickMark: ChartContent {
    let timestamp: PlottableValue<Date>
    let openValue: PlottableValue<Double>
    let highValue: PlottableValue<Double>
    let lowValue: PlottableValue<Double>
    let closeValue: PlottableValue<Double>
    
    var body: some ChartContent {
        Plot {
            BarMark(
                x: timestamp,
                yStart: openValue,
                yEnd: closeValue,
                width: 4
            )
            
            BarMark(
                x: timestamp,
                yStart: highValue,
                yEnd: lowValue,
                width: 1
            )
        }
    }
}
