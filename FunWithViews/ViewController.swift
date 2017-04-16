//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentRoll: Int?
    
    
    // Current die display
    @IBOutlet weak var d1: UIView!
    @IBOutlet weak var d2: UIView!
    @IBOutlet weak var d3: UIView!
    @IBOutlet weak var d4: UIView!
    @IBOutlet weak var d5: UIView!
    @IBOutlet weak var d6: UIView!
    @IBOutlet weak var d7: UIView!
    
    // Die roll history
    @IBOutlet weak var r1: UILabel!
    @IBOutlet weak var r2: UILabel!
    @IBOutlet weak var r3: UILabel!
    @IBOutlet weak var r4: UILabel!
    @IBOutlet weak var r5: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        resetDisplay()
        resetHistory()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        updateDisplay(roll: randomDiceRoll())
        updateLabel(roll: currentRoll!)

    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    // Resets display to hidden
    func resetDisplay() {
        d1.isHidden = true
        d2.isHidden = true
        d3.isHidden = true
        d4.isHidden = true
        d5.isHidden = true
        d6.isHidden = true
        d7.isHidden = true
    }
    
    // Resets dice roll history to hidden
    func resetHistory() {
        r1.isHidden = true
        r2.isHidden = true
        r3.isHidden = true
        r4.isHidden = true
        r5.isHidden = true
    }
    
    // Update display when die is rolled
    func updateDisplay(roll: Int) {
        // Reset display
        resetDisplay()
        
        // Store current roll 
        currentRoll = roll
        
        switch roll {
        case 1:
            d1.isHidden = false
        case 2:
            d2.isHidden = false
            d7.isHidden = false
        case 3:
            d1.isHidden = false
            d3.isHidden = false
            d6.isHidden = false
        case 4:
            d2.isHidden = false
            d3.isHidden = false
            d6.isHidden = false
            d7.isHidden = false
        case 5:
            d1.isHidden = false
            d2.isHidden = false
            d3.isHidden = false
            d6.isHidden = false
            d7.isHidden = false
        case 6:
            d2.isHidden = false
            d3.isHidden = false
            d4.isHidden = false
            d5.isHidden = false
            d6.isHidden = false
            d7.isHidden = false
        default:
            print("No Roll")
        }
    }
    
    // Update label with roll
    func updateLabel(roll: Int) {
        let diceRoll = String(roll)
        
        if r1.isHidden {
            r1.text = diceRoll
            r1.backgroundColor = UIColor.randomColor()
            r1.isHidden = false
        } else if r2.isHidden {
            r2.text = diceRoll
            r2.backgroundColor = UIColor.randomColor()
            r2.isHidden = false
        } else if r3.isHidden {
            r3.text = diceRoll
            r3.backgroundColor = UIColor.randomColor()
            r3.isHidden = false
        } else if r4.isHidden {
            r4.text = diceRoll
            r4.backgroundColor = UIColor.randomColor()
            r4.isHidden = false
        } else if r5.isHidden {
            r5.text = diceRoll
            r5.backgroundColor = UIColor.randomColor()
            r5.isHidden = false
        } else {
            r1.text = r2.text
            r1.backgroundColor = r2.backgroundColor
            r2.text = r3.text
            r2.backgroundColor = r3.backgroundColor
            r3.text = r4.text
            r3.backgroundColor = r4.backgroundColor
            r4.text = r5.text
            r4.backgroundColor = r5.backgroundColor
            r5.text = diceRoll
            r5.backgroundColor = UIColor.randomColor()
        }
    }

}
