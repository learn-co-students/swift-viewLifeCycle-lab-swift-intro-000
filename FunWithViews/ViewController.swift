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
    
    @IBOutlet weak var score1: UILabel!
    @IBOutlet weak var score2: UILabel!
    @IBOutlet weak var score3: UILabel!
    @IBOutlet weak var score4: UILabel!
    @IBOutlet weak var score5: UILabel!
    @IBOutlet weak var score6: UILabel!
    
    @IBOutlet weak var resetButton: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dice1.isHidden = true
        dice2.isHidden = true
        dice3.isHidden = true
        dice4.isHidden = true
        dice5.isHidden = true
        dice6.isHidden = true
        dice7.isHidden = true
        
        score1.isHidden = true
        score2.isHidden = true
        score3.isHidden = true
        score4.isHidden = true
        score5.isHidden = true
        score6.isHidden = true
        
        resetButton.isHidden = true
        
    }
    
    var rollCount = 0
    
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        rollCount+=1
        
        dice1.isHidden = true
        dice2.isHidden = true
        dice3.isHidden = true
        dice4.isHidden = true
        dice5.isHidden = true
        dice6.isHidden = true
        dice7.isHidden = true
        resetButton.isHidden = true
        
        if rollCount < 7 {
            let roll = randomDiceRoll()
            updateLabelWithRoll(roll: roll)
            rearrangeDie(roll: roll)
            if rollCount == 6 {
                resetButton.isHidden = false
            }
            
        } else {
            rollCount = 0
            score1.isHidden = true
            score2.isHidden = true
            score3.isHidden = true
            score4.isHidden = true
            score5.isHidden = true
            score6.isHidden = true
        }
        
    }
    
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if score1.isHidden {
            score1.text = diceScore
            score1.isHidden = false
        } else if score2.isHidden {
            score2.text = diceScore
            score2.isHidden = false
        } else if score3.isHidden {
            score3.text = diceScore
            score3.isHidden = false
        } else if score4.isHidden {
            score4.text = diceScore
            score4.isHidden = false
        } else if score5.isHidden {
            score5.text = diceScore
            score5.isHidden = false
        } else if score6.isHidden {
            score6.text = diceScore
            score6.isHidden = false
        }
    }
    
    func rearrangeDie(roll:Int) {
        
        switch roll {
        case 1:
            dice1.isHidden = true
            dice2.isHidden = true
            dice3.isHidden = true
            dice4.isHidden = true
            dice5.isHidden = true
            dice6.isHidden = true
            dice7.isHidden = false
        case 2:
            dice1.isHidden = false
            dice2.isHidden = true
            dice3.isHidden = true
            dice4.isHidden = true
            dice5.isHidden = true
            dice6.isHidden = true
            dice7.isHidden = false
        case 3:
            dice1.isHidden = false
            dice2.isHidden = true
            dice3.isHidden = true
            dice4.isHidden = true
            dice5.isHidden = true
            dice6.isHidden = false
            dice7.isHidden = false
        case 4:
            dice1.isHidden = false
            dice2.isHidden = true
            dice3.isHidden = false
            dice4.isHidden = false
            dice5.isHidden = true
            dice6.isHidden = false
            dice7.isHidden = true
        case 5:
            dice1.isHidden = false
            dice2.isHidden = true
            dice3.isHidden = false
            dice4.isHidden = false
            dice5.isHidden = true
            dice6.isHidden = false
            dice7.isHidden = false
        case 6:
            dice1.isHidden = false
            dice2.isHidden = false
            dice3.isHidden = false
            dice4.isHidden = false
            dice5.isHidden = false
            dice6.isHidden = false
            dice7.isHidden = true
            
        default:
            return
            
        }
        
    }
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
