//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        hideDot()
        hideLabel()
    }
    
    @IBOutlet weak var dice1: UILabel!
    @IBOutlet weak var dice2: UILabel!
    @IBOutlet weak var dice3: UILabel!
    @IBOutlet weak var dice4: UILabel!
    @IBOutlet weak var dice5: UILabel!
    @IBOutlet weak var dice6: UILabel!
    
    @IBOutlet weak var dot1: UIView!
    @IBOutlet weak var dot2: UIView!
    @IBOutlet weak var dot3: UIView!
    @IBOutlet weak var dot4: UIView!
    @IBOutlet weak var dot5: UIView!
    @IBOutlet weak var dot6: UIView!
    @IBOutlet weak var dot7: UIView!
    
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
    }
    
    
    @IBAction func diceRoll(_ sender: UIButton) {
        hideDot()
        if dice6.isHidden == false {
            hideLabel()
        }
        
        let x = randomDiceRoll()
        switch x {
            case 1:
                dot4.isHidden = false
            case 2:
                dot3.isHidden = false
                dot5.isHidden = false
            case 3:
                dot3.isHidden = false
                dot4.isHidden = false
                dot5.isHidden = false
            case 4:
                dot1.isHidden = false
                dot3.isHidden = false
                dot5.isHidden = false
                dot7.isHidden = false
            case 5:
                dot1.isHidden = false
                dot3.isHidden = false
                dot4.isHidden = false
                dot5.isHidden = false
                dot7.isHidden = false
            case 6:
                dot1.isHidden = false
                dot2.isHidden = false
                dot3.isHidden = false
                dot5.isHidden = false
                dot6.isHidden = false
                dot7.isHidden = false
            default:
                hideDot()
        }
    
        updateLabelWithRoll(roll: x)
    
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func hideLabel() {
        dice1.isHidden = true
        dice2.isHidden = true
        dice3.isHidden = true
        dice4.isHidden = true
        dice5.isHidden = true
        dice6.isHidden = true
        
    }

    func hideDot() {
        dot1.isHidden = true
        dot2.isHidden = true
        dot3.isHidden = true
        dot4.isHidden = true
        dot5.isHidden = true
        dot6.isHidden = true
        dot7.isHidden = true
    }
    
    func updateLabelWithRoll(roll: Int) {
        let diceRoll = String(roll)
        
        if dice1.isHidden {
            dice1.text = diceRoll
            dice1.isHidden = false
        }
        else if dice2.isHidden {
            dice2.text = diceRoll
            dice2.isHidden = false
        }
        else if dice3.isHidden {
            dice3.text = diceRoll
            dice3.isHidden = false
        }
        else if dice4.isHidden {
            dice4.text = diceRoll
            dice4.isHidden = false
        }
        else if dice5.isHidden {
            dice5.text = diceRoll
            dice5.isHidden = false
        }
        else if dice6.isHidden {
            dice6.text = diceRoll
            dice6.isHidden = false
        }
    }
    
}
