//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var rollNumber: Int = 0

    @IBAction func dicePressed(_ sender: Any) {
    }
    
    @IBOutlet weak var diceMarkOne: UIView!
    @IBOutlet weak var diceMarkTwo: UIView!
    @IBOutlet weak var diceMarkThree: UIView!
    @IBOutlet weak var diceMarkFour: UIView!
    @IBOutlet weak var diceMarkFive: UIView!
    @IBOutlet weak var diceMarkSix: UIView!
    @IBOutlet weak var diceMarkSeven: UIView!
    @IBOutlet weak var rollOne: UILabel!
    @IBOutlet weak var rollTwo: UILabel!
    @IBOutlet weak var rollThree: UILabel!
    @IBOutlet weak var rollFour: UILabel!
    @IBOutlet weak var rollFive: UILabel!
    @IBOutlet weak var rollSix: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideDisplays()
    
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let currentRoll = randomDiceRoll()
        
        if rollSix.isHidden {
            updateDiceDisplay(roll: currentRoll)
            updateLabelWithRoll(roll: currentRoll)
        } else{
            hideDisplays()
            updateDiceDisplay(roll: currentRoll)
            updateLabelWithRoll(roll: currentRoll)
        }
        
        
        
        
    }
    
    
    //Hides all score boxes and dice display boxes
    func hideDisplays(){
        diceMarkOne.isHidden = true
        diceMarkTwo.isHidden = true
        diceMarkThree.isHidden = true
        diceMarkFour.isHidden = true
        diceMarkFive.isHidden = true
        diceMarkSix.isHidden = true
        diceMarkSeven.isHidden = true
        rollOne.isHidden = true
        rollTwo.isHidden = true
        rollThree.isHidden = true
        rollFour.isHidden = true
        rollFive.isHidden = true
        rollSix.isHidden = true
    }
    
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    //Updates user's score boxes
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
        } else if rollFour.isHidden{
            rollFour.text = diceScore
            rollFour.isHidden = false
        } else if rollFive.isHidden{
            rollFive.text = diceScore
            rollFive.isHidden = false
        } else if rollSix.isHidden{
            rollSix.text = diceScore
            rollSix.isHidden = false
        } else{
            
        }
        
    }
    
    //Updates user's current die roll display
    func updateDiceDisplay(roll: Int) {
        switch roll{
        case 1:
            diceMarkOne.isHidden = true
            diceMarkTwo.isHidden = true
            diceMarkThree.isHidden = true
            diceMarkFour.isHidden = false
            diceMarkFive.isHidden = true
            diceMarkSix.isHidden = true
            diceMarkSeven.isHidden = true
        case 2:
            diceMarkOne.isHidden = false
            diceMarkTwo.isHidden = true
            diceMarkThree.isHidden = true
            diceMarkFour.isHidden = true
            diceMarkFive.isHidden = true
            diceMarkSix.isHidden = true
            diceMarkSeven.isHidden = false
        case 3:
            diceMarkOne.isHidden = false
            diceMarkTwo.isHidden = true
            diceMarkThree.isHidden = true
            diceMarkFour.isHidden = false
            diceMarkFive.isHidden = true
            diceMarkSix.isHidden = true
            diceMarkSeven.isHidden = false
        case 4:
            diceMarkOne.isHidden = false
            diceMarkTwo.isHidden = false
            diceMarkThree.isHidden = true
            diceMarkFour.isHidden = true
            diceMarkFive.isHidden = true
            diceMarkSix.isHidden = false
            diceMarkSeven.isHidden = false
        case 5:
            diceMarkOne.isHidden = false
            diceMarkTwo.isHidden = false
            diceMarkThree.isHidden = true
            diceMarkFour.isHidden = false
            diceMarkFive.isHidden = true
            diceMarkSix.isHidden = false
            diceMarkSeven.isHidden = false
        case 6:
            diceMarkOne.isHidden = false
            diceMarkTwo.isHidden = false
            diceMarkThree.isHidden = false
            diceMarkFour.isHidden = true
            diceMarkFive.isHidden = false
            diceMarkSix.isHidden = false
            diceMarkSeven.isHidden = false
        default:
            diceMarkOne.isHidden = true
            diceMarkTwo.isHidden = true
            diceMarkThree.isHidden = true
            diceMarkFour.isHidden = true
            diceMarkFive.isHidden = true
            diceMarkSix.isHidden = true
            diceMarkSeven.isHidden = true
        }
    }

}
