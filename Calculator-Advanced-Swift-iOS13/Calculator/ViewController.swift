//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    fileprivate var isFinishedTypingNumber: Bool = true
    
//    private var displayValue: Double {
//        get {
//            self.displayValue = displayLabel.text
//        }
//    }
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        //What should happen when a non-number button is pressed
        isFinishedTypingNumber = true
        guard let number = Double(displayLabel.text!) else {
            fatalError("Cannot convert display label text to Double")
        }
        if let calcValue = sender.currentTitle {
            if calcValue == "+/-" {
                displayLabel.text = "\(number * -1)"
            } else if calcValue == "AC" {
                displayLabel.text = "0"
            } else if calcValue == "%" {
                displayLabel.text = "\(number * 0.01)"
            }
            
        }
        
    
    }

    var lstNum:[String] = []
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //What should happen when a number is entered into the keypad
        
        if let numValue = sender.currentTitle {
            if isFinishedTypingNumber {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            }
            else {
                if numValue == "." {
                    guard let currentDisplayValue = Double(displayLabel.text!) else {
                        fatalError("Cannot convert display label text to a Double")
                        
                    }
                    let isInt = floor(currentDisplayValue) == currentDisplayValue
                    if !isInt {
                        return
                    }
                }
                displayLabel.text = displayLabel.text! + numValue
            }
        }
    }

}

