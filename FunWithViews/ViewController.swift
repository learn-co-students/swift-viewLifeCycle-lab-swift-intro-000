//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var die1: UIView!
    @IBOutlet weak var die2: UIView!
    @IBOutlet weak var die3: UIView!
    @IBOutlet weak var die4: UIView!
    @IBOutlet weak var die5: UIView!
    @IBOutlet weak var die6: UIView!
    @IBOutlet weak var die7: UIView!
    
    @IBOutlet weak var result1: UILabel!
    @IBOutlet weak var result2: UILabel!
    @IBOutlet weak var result3: UILabel!
    @IBOutlet weak var result4: UILabel!
    @IBOutlet weak var result5: UILabel!
    @IBOutlet weak var result6: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        die1.isHidden = true
        die2.isHidden = true
        die3.isHidden = true
        die4.isHidden = true
        die5.isHidden = true
        die6.isHidden = true
        die7.isHidden = true
        
        result1.isHidden = true
        result2.isHidden = true
        result3.isHidden = true
        result4.isHidden = true
        result5.isHidden = true
        result6.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        func randomDiceRoll() -> Int {
            return Int(arc4random_uniform(6) + 1)
        }
        
        var roll = randomDiceRoll()
        print("You rolled a \(roll)")
        
        die1.isHidden = true
        die2.isHidden = true
        die3.isHidden = true
        die4.isHidden = true
        die5.isHidden = true
        die6.isHidden = true
        die7.isHidden = true
        
        func updateDie(number: Int) {
            switch roll {
            case 1:
                die4.isHidden = false
            case 2:
                die1.isHidden = false
                die7.isHidden = false
            case 3:
                die1.isHidden = false
                die4.isHidden = false
                die7.isHidden = false
            case 4:
                die1.isHidden = false
                die2.isHidden = false
                die6.isHidden = false
                die7.isHidden = false
            case 5:
                die1.isHidden = false
                die2.isHidden = false
                die4.isHidden = false
                die6.isHidden = false
                die7.isHidden = false
            case 6:
                die1.isHidden = false
                die2.isHidden = false
                die3.isHidden = false
                die5.isHidden = false
                die6.isHidden = false
                die7.isHidden = false
            default:
                print("Error")
            }
        }
        
        func updateLabelWithRoll(number: Int) {
            let diceScore = String(number)
            
            if result1.isHidden {
                result1.text = diceScore
                result1.isHidden = false
            } else if result2.isHidden {
                result2.text = diceScore
                result2.isHidden = false
            } else if result3.isHidden {
                result3.text = diceScore
                result3.isHidden = false
            } else if result4.isHidden {
                result4.text = diceScore
                result4.isHidden = false
            } else if result5.isHidden {
                result5.text = diceScore
                result5.isHidden = false
            } else if result6.isHidden {
                result6.text = diceScore
                result6.isHidden = false
            } else if !result6.isHidden {
                result1.text = result2.text
                result2.text = result3.text
                result3.text = result4.text
                result4.text = result5.text
                result5.text = result6.text
                result6.text = diceScore
            }
        }
        
        updateDie(number: roll)
        updateLabelWithRoll(number: roll)
    }


}
