//
//  ViewController.swift
//  Nabeatsu
//
//  Created by nagata on 2017/06/19.
//  Copyright © 2017年 Life is Tech!. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var faceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func isAho() -> Bool {
        var checkNumber = number
        if number % 7 == 0 {
            return false
        }
        
        while checkNumber != 0 {
            if checkNumber % 10 == 7{
                return false
            }
            checkNumber /= 10
        }
        
        if number % 3 == 0 {
            return true
        }
        
        checkNumber = number
        while checkNumber != 0 {
            if checkNumber % 10 == 3{
                return true
            }
            checkNumber /= 10
        }
        
        return false
    }
    
    @IBAction func plusButton(){
        number = number + 1
        countLabel.text = String(number)
        
        if isAho(){
            
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        } else {
            
            faceLabel.text = "(゜o゜)"
        }
    }
    
    @IBAction func clear(){
        number = 0
        countLabel.text = String(number)
        
        faceLabel.text = "(゜o゜)"
    }


}

