//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var box11: UIView!
    @IBOutlet weak var box12: UIView!
    @IBOutlet weak var box13: UIView!
    @IBOutlet weak var box22: UIView!
    @IBOutlet weak var box31: UIView!
    @IBOutlet weak var box32: UIView!
    @IBOutlet weak var box33: UIView!
    @IBOutlet weak var result1: UILabel!
    @IBOutlet weak var result2: UILabel!
    @IBOutlet weak var result3: UILabel!
    @IBOutlet weak var result4: UILabel!
    @IBOutlet weak var result5: UILabel!
    @IBOutlet weak var result6: UILabel!
    var dieCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        dieCount += 1
        var dieNumber = randomDiceRoll()
        print("Number is: \(dieNumber)")
        dieRoll(dieRollNumber: dieNumber)
        if (dieCount % 7 == 0){
            dieNumber = 7
        }
        switch dieNumber {
        case 1 :
            box11.isHidden = true
            box12.isHidden = true
            box13.isHidden = true
            box22.isHidden = false
            box31.isHidden = true
            box32.isHidden = true
            box33.isHidden = true
        case 2 :
            box11.isHidden = false
            box12.isHidden = true
            box13.isHidden = true
            box22.isHidden = true
            box31.isHidden = true
            box32.isHidden = true
            box33.isHidden = false
        case 3 :
            box11.isHidden = false
            box12.isHidden = true
            box13.isHidden = true
            box22.isHidden = false
            box31.isHidden = true
            box32.isHidden = true
            box33.isHidden = false
        case 4 :
            box11.isHidden = false
            box12.isHidden = true
            box13.isHidden = false
            box22.isHidden = true
            box31.isHidden = false
            box32.isHidden = true
            box33.isHidden = false
        case 5 :
            box11.isHidden = false
            box12.isHidden = true
            box13.isHidden = false
            box22.isHidden = false
            box31.isHidden = false
            box32.isHidden = true
            box33.isHidden = false
        case 6 :
            box11.isHidden = false
            box12.isHidden = false
            box13.isHidden = false
            box22.isHidden = true
            box31.isHidden = false
            box32.isHidden = false
            box33.isHidden = false
        default :
            box11.isHidden = true
            box12.isHidden = true
            box13.isHidden = true
            box22.isHidden = true
            box31.isHidden = true
            box32.isHidden = true
            box33.isHidden = true
            }
        }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func dieRoll(dieRollNumber: Int){
        if result1.isHidden == true {
            result1.isHidden = false
            result1.text = String(dieRollNumber)
        } else if result2.isHidden == true {
            result2.isHidden = false
            result2.text = String(dieRollNumber)
        } else if result3.isHidden == true {
            result3.isHidden = false
            result3.text = String(dieRollNumber)
        } else if result4.isHidden == true {
            result4.isHidden = false
            result4.text = String(dieRollNumber)
        } else if result5.isHidden == true {
            result5.isHidden = false
            result5.text = String(dieRollNumber)
        } else if result6.isHidden == true {
            result6.isHidden = false
            result6.text = String(dieRollNumber)
        } else {
            box11.isHidden = true
            box12.isHidden = true
            box13.isHidden = true
            box22.isHidden = true
            box31.isHidden = true
            box32.isHidden = true
            box33.isHidden = true
            result1.isHidden = true
            result2.isHidden = true
            result3.isHidden = true
            result4.isHidden = true
            result5.isHidden = true
            result6.isHidden = true
        }
    }
}
