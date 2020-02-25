//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by APPLE on 2/25/2 R.
//  Copyright © 2 Reiwa London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    private var number: Double?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    func calculate(_ symbol: String) -> Double? {
        if let num = number {
            if symbol == "+/-" {
                return num * -1
            } else if symbol == "AC" {
                return  0
            } else if symbol == "%" {
                return num * 0.01
            }
        }
        return nil
    }
}
