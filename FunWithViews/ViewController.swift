//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   

    @IBOutlet weak var Die1: UIView!
    @IBOutlet weak var Die2: UIView!
    @IBOutlet weak var Die3: UIView!
    @IBOutlet weak var Die4: UIView!
    @IBOutlet weak var Die5: UIView!
    @IBOutlet weak var Die6: UIView!
    @IBOutlet weak var Die7: UIView!
    
    @IBOutlet weak var correctNumber: UILabel!
    
    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var l2: UILabel!
    @IBOutlet weak var l3: UILabel!
    @IBOutlet weak var l4: UILabel!
    @IBOutlet weak var l5: UILabel!
    @IBOutlet weak var l6: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Die1.isHidden = true
        Die2.isHidden = true
        Die3.isHidden = true
        Die4.isHidden = true
        Die5.isHidden = true
        Die6.isHidden = true
        Die7.isHidden = true
    }

    

    
    var diceRoll = 0
    var count = 0
    
    @IBAction func DieTap(_ sender: Any) {
        Die1.isHidden = true
        Die2.isHidden = true
        Die3.isHidden = true
        Die4.isHidden = true
        Die5.isHidden = true
        Die6.isHidden = true
        Die7.isHidden = true
        diceRoll = randomDiceRoll()
        print(diceRoll)
        switch diceRoll {
        case 1:
            Die4.isHidden = false
        case 2:
            Die1.isHidden = false
            Die7.isHidden = false
        case 3:
            Die3.isHidden = false
            Die4.isHidden = false
            Die5.isHidden = false
        case 4:
            Die1.isHidden = false
            Die3.isHidden = false
            Die5.isHidden = false
            Die7.isHidden = false
        case 5:
            Die1.isHidden = false
            Die3.isHidden = false
            Die4.isHidden = false
            Die5.isHidden = false
            Die7.isHidden = false
        case 6:
            Die1.isHidden = false
            Die2.isHidden = false
            Die3.isHidden = false
            Die5.isHidden = false
            Die6.isHidden = false
            Die7.isHidden = false
        default:
            print("invalid value")
        }
        count += 1
        updateDisplay(counter: count)
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func updateDisplay(counter: Int) {
        switch count {
        case 1:
            l1.text = String(diceRoll)
            l1.isHidden = false
        case 2:
            l2.text = String(diceRoll)
            l2.isHidden = false
        case 3:
            l3.text = String(diceRoll)
            l3.isHidden = false
        case 4:
            l4.text = String(diceRoll)
            l4.isHidden = false
        case 5:
            l5.text = String(diceRoll)
            l5.isHidden = false
        case 6:
            l6.text = String(diceRoll)
            l6.isHidden = false
        default:
            count = 1
            l1.text = String(diceRoll)
            l1.isHidden = false
            l2.isHidden = true
            l3.isHidden = true
            l4.isHidden = true
            l5.isHidden = true
            l6.isHidden = true
        }
    }
    
}
