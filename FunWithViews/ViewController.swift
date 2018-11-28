//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dice1: UIView!
    @IBOutlet weak var dice2: UIView!
    @IBOutlet weak var dice3: UIView!
    @IBOutlet weak var dice4: UIView!
    @IBOutlet weak var dice5: UIView!
    @IBOutlet weak var dice6: UIView!
    @IBOutlet weak var dice7: UIView!
    @IBOutlet weak var roll1: UILabel!
    @IBOutlet weak var roll2: UILabel!
    @IBOutlet weak var roll3: UILabel!
    @IBOutlet weak var roll4: UILabel!
    @IBOutlet weak var roll5: UILabel!
    @IBOutlet weak var roll6: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dice1.isHidden = true
        dice2.isHidden = true
        dice3.isHidden = true
        dice4.isHidden = true
        dice5.isHidden = true
        dice6.isHidden = true
        dice7.isHidden = true
        roll1.isHidden = true
        roll2.isHidden = true
        roll3.isHidden = true
        roll4.isHidden = true
        roll5.isHidden = true
        roll6.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let x = randomDiceRoll();
        updateLabelWithRoll(roll: x)
        rearrangeDie(roll: x)
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func rearrangeDie(roll: Int) {
        switch roll {
        case 1:
            dice1.isHidden = true
            dice2.isHidden = true
            dice3.isHidden = true
            dice4.isHidden = false
            dice5.isHidden = true
            dice6.isHidden = true
            dice7.isHidden = true
        case 2:
            dice1.isHidden = true
            dice2.isHidden = false
            dice3.isHidden = true
            dice4.isHidden = true
            dice5.isHidden = true
            dice6.isHidden = false
            dice7.isHidden = true
        case 3:
            dice1.isHidden = true
            dice2.isHidden = true
            dice3.isHidden = false
            dice4.isHidden = false
            dice5.isHidden = false
            dice6.isHidden = true
            dice7.isHidden = true
        case 4:
            dice1.isHidden = false
            dice2.isHidden = true
            dice3.isHidden = false
            dice4.isHidden = true
            dice5.isHidden = false
            dice6.isHidden = true
            dice7.isHidden = false
        case 5:
            dice1.isHidden = false
            dice2.isHidden = true
            dice3.isHidden = false
            dice4.isHidden = false
            dice5.isHidden = false
            dice6.isHidden = true
            dice7.isHidden = false
        case 6:
            dice1.isHidden = false
            dice2.isHidden = false
            dice3.isHidden = false
            dice4.isHidden = true
            dice5.isHidden = false
            dice6.isHidden = false
            dice7.isHidden = false
        default:
            dice1.isHidden = true
            dice2.isHidden = true
            dice3.isHidden = true
            dice4.isHidden = true
            dice5.isHidden = true
            dice6.isHidden = true
            dice7.isHidden = true
        }
    }
    
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if roll1.isHidden {
            roll1.text = diceScore
            roll1.isHidden = false
        } else if roll2.isHidden {
            roll2.text = diceScore
            roll2.isHidden = false
        } else if roll3.isHidden {
            roll3.text = diceScore
            roll3.isHidden = false
        } else if roll4.isHidden {
            roll4.text = diceScore
            roll4.isHidden = false
        } else if roll5.isHidden {
            roll5.text = diceScore
            roll5.isHidden = false
        } else if roll6.isHidden {
            roll6.text = diceScore
            roll6.isHidden = false
        } else {
            roll1.text = diceScore
            roll1.isHidden = false
            roll2.isHidden = true
            roll3.isHidden = true
            roll4.isHidden = true
            roll5.isHidden = true
            roll6.isHidden = true
        }
    }
}
