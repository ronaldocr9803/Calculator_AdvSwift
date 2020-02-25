//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by APPLE on 2/25/2 R.
//  Copyright © 2 Reiwa London App Brewery. All rights reserved.
//

import Foundation

class CalculatorLogic {
    
    var number: Double
    init(number: Double) {
        self.number = number
    }
    
    func calculate(_ symbol: String) -> Double? {
        if symbol == "+/-" {
           return number * -1
        } else if symbol == "AC" {
            return  0
        } else if symbol == "%" {
            return number * 0.01
        }
        return nil
    }
}
