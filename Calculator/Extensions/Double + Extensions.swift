//
//  Double + Extensions.swift
//  Calculator
//
//  Created by Сергей Смирнов on 22.10.2022.
//

import Foundation

extension Double {
    
    var stringWithOutZeroFraction: String {
        truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
}
