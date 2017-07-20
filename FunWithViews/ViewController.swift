//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dice1: UILabel!
    @IBOutlet weak var dice2: UILabel!
    @IBOutlet weak var dice3: UILabel!
    @IBOutlet weak var dice4: UILabel!
    @IBOutlet weak var dice5: UILabel!
    @IBOutlet weak var dice6: UILabel!
    @IBOutlet weak var dice7: UILabel!
    
    @IBOutlet weak var score1: UILabel!
    @IBOutlet weak var score2: UILabel!
    @IBOutlet weak var score3: UILabel!
    @IBOutlet weak var score4: UILabel!
    @IBOutlet weak var score5: UILabel!
    @IBOutlet weak var score6: UILabel!
    
    
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
    }
    
    
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
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
    
    func rearrangeDie(number: Int) {
    switch number {
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
        dice2.isHidden = true
    dice3.isHidden = false
        dice4.isHidden = true
    dice5.isHidden = false
        dice6.isHidden = true
        dice7.isHidden = true
    case 3:
    dice1.isHidden = false
    dice2.isHidden = true
    dice3.isHidden = true
    dice4.isHidden = false
    dice5.isHidden = true
    dice6.isHidden = true
    dice7.isHidden = false
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
    dice3.isHidden = false
    dice4.isHidden = false
    dice5.isHidden = false
    dice7.isHidden = false
        dice2.isHidden = true
        dice6.isHidden = true
    case 6:
    dice1.isHidden = false
    dice2.isHidden = false
    dice3.isHidden = false
    dice5.isHidden = false
    dice6.isHidden = false
    dice7.isHidden = false
        dice4.isHidden = true
    default:
    break
    }
    }

    func result(number: Int) {
        let randomeNumber = randomDiceRoll()
        updateLabelWithRoll(roll: randomeNumber)
        rearrangeDie(number: randomeNumber)
            }
    
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        
        let randomeNumber = randomDiceRoll()
        
        result(number: randomeNumber)
        
}

}
