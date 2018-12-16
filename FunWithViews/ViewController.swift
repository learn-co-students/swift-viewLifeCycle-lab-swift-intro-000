//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dieOne: UIView!
    @IBOutlet weak var dieTwo: UIView!
    @IBOutlet weak var dieThree: UIView!
    @IBOutlet weak var dieFour: UIView!
    @IBOutlet weak var dieFive: UIView!
    @IBOutlet weak var dieSix: UIView!
    @IBOutlet weak var dieSeven: UIView!
    @IBOutlet weak var dieEight: UIView!
    @IBOutlet weak var dieNine: UIView!
    
    
    @IBOutlet weak var rollOne: UILabel!
    @IBOutlet weak var rollTwo: UILabel!
    @IBOutlet weak var rollThree: UILabel!
    @IBOutlet weak var rollFour: UILabel!
    @IBOutlet weak var rollFive: UILabel!
    @IBOutlet weak var rollSix: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dieOne.isHidden = true
        dieTwo.isHidden = true
        dieThree.isHidden = true
        dieFour.isHidden = true
        dieFive.isHidden = true
        dieSix.isHidden = true
        dieSeven.isHidden = true
        dieEight.isHidden = true
        dieNine.isHidden = true
        
        rollOne.isHidden = true
        rollTwo.isHidden = true
        rollThree.isHidden = true
        rollFour.isHidden = true
        rollFive.isHidden = true
        rollSix.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        if rollSix.isHidden == false {
            clearDie()
            clearLabels()
            var roll = randomDiceRoll()
            updateLabelWithRoll(roll: roll)
            dieRolled(roll: roll)
        } else {
            var roll = randomDiceRoll()
            updateLabelWithRoll(roll: roll)
            dieRolled(roll: roll)
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if rollOne.isHidden {
            rollOne.text = diceScore
            rollOne.isHidden = false
        } else if rollTwo.isHidden {
            rollTwo.text = diceScore
            rollTwo.isHidden = false
        } else if rollThree.isHidden {
            rollThree.text = diceScore
            rollThree.isHidden = false
        } else if rollFour.isHidden {
            rollFour.text = diceScore
            rollFour.isHidden = false
        } else if rollFive.isHidden {
            rollFive.text = diceScore
            rollFive.isHidden = false
        } else if rollSix.isHidden {
            rollSix.text = diceScore
            rollSix.isHidden = false
        }
    }
    
    func dieRolled(roll: Int) {
        clearDie()
        switch roll {
        case 1:
            dieFive.isHidden = false
        case 2:
            dieOne.isHidden = false
            dieNine.isHidden = false
        case 3:
            dieThree.isHidden = false
            dieFive.isHidden = false
            dieSeven.isHidden = false
        case 4:
            dieOne.isHidden = false
            dieThree.isHidden = false
            dieSeven.isHidden = false
            dieNine.isHidden = false
        case 5:
            dieOne.isHidden = false
            dieThree.isHidden = false
            dieFive.isHidden = false
            dieSeven.isHidden = false
            dieNine.isHidden = false
        case 6:
            dieOne.isHidden = false
            dieThree.isHidden = false
            dieFour.isHidden = false
            dieSix.isHidden = false
            dieSeven.isHidden = false
            dieNine.isHidden = false
        default:
            clearDie()
        }
    }
    
    func clearDie() {
        dieOne.isHidden = true
        dieTwo.isHidden = true
        dieThree.isHidden = true
        dieFour.isHidden = true
        dieFive.isHidden = true
        dieSix.isHidden = true
        dieSeven.isHidden = true
        dieEight.isHidden = true
        dieNine.isHidden = true
    }
    
    func clearLabels() {
        rollOne.isHidden = true
        rollTwo.isHidden = true
        rollThree.isHidden = true
        rollFour.isHidden = true
        rollFive.isHidden = true
        rollSix.isHidden = true
    }
}
