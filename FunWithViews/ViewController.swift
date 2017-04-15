//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceM: UIView!
    
    @IBOutlet weak var diceL1: UIView!
    @IBOutlet weak var diceL2: UIView!
    @IBOutlet weak var diceL3: UIView!
    
    @IBOutlet weak var diceR1: UIView!
    @IBOutlet weak var diceR2: UIView!
    @IBOutlet weak var diceR3: UIView!
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideLabel()
        hideDice()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let roll = randomDiceRoll()
        updateLabelWithRoll(roll: roll)
        rearrangeDie(roll: roll)
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    /**
     * Show hide the dice
     */
    func rearrangeDie(roll: Int) {
        hideDice()
        switch roll {
        case 1:
            diceM.isHidden = false
        case 2:
            diceL1.isHidden = false
            diceR3.isHidden = false
        case 3:
            diceL1.isHidden = false
            diceM.isHidden = false
            diceR3.isHidden = false
        case 4:
            diceL1.isHidden = false
            diceL3.isHidden = false
            diceR1.isHidden = false
            diceR3.isHidden = false
        case 5:
            diceL1.isHidden = false
            diceL3.isHidden = false
            diceM.isHidden = false
            diceR1.isHidden = false
            diceR3.isHidden = false
        default:
            diceL1.isHidden = false
            diceL2.isHidden = false
            diceL3.isHidden = false
            diceR1.isHidden = false
            diceR2.isHidden = false
            diceR3.isHidden = false
        }
    }
    
    /**
     * Update label value when roll the dice
     * @return void
     */
    func updateLabelWithRoll(roll: Int) {
        let diceScore = String(roll)
        
        if labelOne.isHidden {
            labelOne.text = diceScore
            labelOne.isHidden = false
        } else if labelTwo.isHidden {
            labelTwo.text = diceScore
            labelTwo.isHidden = false
        } else if labelThree.isHidden {
            labelThree.text = diceScore
            labelThree.isHidden = false
        } else if labelFour.isHidden {
            labelFour.text = diceScore
            labelFour.isHidden = false
        } else if labelFive.isHidden {
            labelFive.text = diceScore
            labelFive.isHidden = false
        } else if labelSix.isHidden {
            labelSix.text = diceScore
            labelSix.isHidden = false
        } else {
            hideLabel()
            labelOne.text = diceScore
            labelOne.isHidden = false
        }
    }
    
    /**
     * Hide label dice result
     */
    func hideLabel() {
        labelOne.isHidden = true
        labelTwo.isHidden = true
        labelThree.isHidden = true
        labelFour.isHidden = true
        labelFive.isHidden = true
        labelSix.isHidden = true
    }
    
    /**
     * Hide view dice
     */
    func hideDice() {
        diceM.isHidden = true
        diceL1.isHidden = true
        diceL2.isHidden = true
        diceL3.isHidden = true
        diceR1.isHidden = true
        diceR2.isHidden = true
        diceR3.isHidden = true
    }

}
