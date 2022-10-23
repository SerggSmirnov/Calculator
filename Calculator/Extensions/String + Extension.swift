//
//  String + Extension.swift
//  Calculator
//
//  Created by Сергей Смирнов on 22.10.2022.
//

import Foundation

extension String {
    var stringWithComma: String {
        self.contains(".") ? self.replacingOccurrences(of: ".", with: ",") : self
    }
}
