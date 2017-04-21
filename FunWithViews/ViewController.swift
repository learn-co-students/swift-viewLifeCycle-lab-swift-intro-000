//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pipOne: UIView!
    @IBOutlet weak var pipTwo: UIView!
    @IBOutlet weak var pipThree: UIView!
    @IBOutlet weak var pipFour: UIView!
    @IBOutlet weak var pipFive: UIView!
    @IBOutlet weak var pipSix: UIView!
    @IBOutlet weak var pipSeven: UIView!
    
    @IBOutlet weak var rollOne: UILabel!
    @IBOutlet weak var rollTwo: UILabel!
    @IBOutlet weak var rollThree: UILabel!
    @IBOutlet weak var rollFour: UILabel!
    @IBOutlet weak var rollFive: UILabel!
    @IBOutlet weak var rollSix: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        hideAllPips()
        hideAllRolls()
    }
    
    // Set iteration to control when to loop back to first roll
    var currentRoll = 1
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        let roll = randomDiceRoll()
        
        if currentRoll > 6 {
            hideAllRolls()
            hideAllPips()
            
            currentRoll = 1
        } else {
            showValue(roll: roll)
            showPips(roll: roll)
            
            currentRoll += 1
        }
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    // Show the pips corresponding to the dice roll
    func showPips(roll: Int) {
        hideAllPips()
        
        switch roll {
        case 1:
            pipFour.isHidden = false
        case 2:
            pipOne.isHidden = false
            pipSeven.isHidden = false
        case 3:
            pipOne.isHidden = false
            pipFour.isHidden = false
            pipSeven.isHidden = false
        case 4:
            pipOne.isHidden = false
            pipTwo.isHidden = false
            pipSix.isHidden = false
            pipSeven.isHidden = false
        case 5:
            pipOne.isHidden = false
            pipTwo.isHidden = false
            pipFour.isHidden = false
            pipSix.isHidden = false
            pipSeven.isHidden = false
        case 6:
            pipOne.isHidden = false
            pipTwo.isHidden = false
            pipThree.isHidden = false
            pipFive.isHidden = false
            pipSix.isHidden = false
            pipSeven.isHidden = false
        default:
            print("Something went wrong")
        }
    }
    
    // Hide all pips
    func hideAllPips() {
        pipOne.isHidden = true
        pipTwo.isHidden = true
        pipThree.isHidden = true
        pipFour.isHidden = true
        pipFive.isHidden = true
        pipSix.isHidden = true
        pipSeven.isHidden = true
    }
    
    // Hide all roll value labels
    func hideAllRolls() {
        rollOne.isHidden = true
        rollTwo.isHidden = true
        rollThree.isHidden = true
        rollFour.isHidden = true
        rollFive.isHidden = true
        rollSix.isHidden = true
    }
    
    // Show value of roll
    func showValue(roll: Int) {
        let rollValue = String(roll)
        
        if rollOne.isHidden {
            rollOne.text = rollValue
            rollOne.isHidden = false
        } else if rollTwo.isHidden {
            rollTwo.text = rollValue
            rollTwo.isHidden = false
        } else if rollThree.isHidden {
            rollThree.text = rollValue
            rollThree.isHidden = false
        } else if rollFour.isHidden {
            rollFour.text = rollValue
            rollFour.isHidden = false
        } else if rollFive.isHidden {
            rollFive.text = rollValue
            rollFive.isHidden = false
        } else if rollSix.isHidden {
            rollSix.text = rollValue
            rollSix.isHidden = false
        } else {
            hideAllRolls()
        }
    }

}
