//
//  ViewController.swift
//  Calculator
//
//  Created by Laurent GAIDON on 29/11/2016.
//  Copyright © 2016 HINS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var userIsInTheMiddleOfTypingANumber = false
    
    @IBOutlet weak var display: UILabel!
    
    @IBAction func digitPressed(_ sender: UIButton) {
        if let digit = sender.currentTitle {
            if userIsInTheMiddleOfTypingANumber {
                display.text! += digit
            }else{
                display.text = digit
                userIsInTheMiddleOfTypingANumber = true
            }
        }
    }
    
    @IBAction func operationPressed(_ sender: UIButton) {
        display.text = String(M_PI)
        userIsInTheMiddleOfTypingANumber = false
    }
    
}

