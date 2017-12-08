//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Creates all of the dice dots and labels
    @IBOutlet weak var dotOne: UIView!
    @IBOutlet weak var dotTwo: UIView!
    @IBOutlet weak var dotThree: UIView!
    @IBOutlet weak var dotFour: UIView!
    @IBOutlet weak var dotFive: UIView!
    @IBOutlet weak var dotSix: UIView!
    @IBOutlet weak var dotSeven: UIView!
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    
    // Hides all the labels when the view loads
    override func viewDidLoad() {
        super.viewDidLoad()
        dotOne.isHidden = true
        dotTwo.isHidden = true
        dotThree.isHidden = true
        dotFour.isHidden = true
        dotFive.isHidden = true
        dotSix.isHidden = true
        dotSeven.isHidden = true
        labelOne.isHidden = true
        labelTwo.isHidden = true
        labelThree.isHidden = true
        labelFour.isHidden = true
        labelFive.isHidden = true
        labelSix.isHidden = true
    }
    
    // What takes place when the dice button is tapped. Generate random number, hides and shows the appropriate dots, and updates the score labels
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let diceScore = randomDiceRoll()
        rearrangeDots(diceScore)
        updateLabel(diceScore)
    }
    
    // Hides dots so rearrange dots function starts off with a clean slate every time
    func hideDots() {
        dotOne.isHidden = true
        dotTwo.isHidden = true
        dotThree.isHidden = true
        dotFour.isHidden = true
        dotFive.isHidden = true
        dotSix.isHidden = true
        dotSeven.isHidden = true
    }
    
    func resetLabels() {
        labelOne.isHidden = true
        labelTwo.isHidden = true
        labelThree.isHidden = true
        labelFour.isHidden = true
        labelFive.isHidden = true
        labelSix.isHidden = true
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    // Rearranges the die dots
    func rearrangeDots(_ roll: Int) {
        hideDots()
        if roll == 1 {
            dotSeven.isHidden = false
        } else if roll == 2 {
            dotThree.isHidden = false
            dotFour.isHidden = false
        } else if roll == 3 {
            dotThree.isHidden = false
            dotSeven.isHidden = false
            dotFour.isHidden = false
        } else if roll == 4 {
            dotOne.isHidden = false
            dotThree.isHidden = false
            dotFour.isHidden = false
            dotSix.isHidden = false
        } else if roll == 5 {
            dotOne.isHidden = false
            dotThree.isHidden = false
            dotFour.isHidden = false
            dotSix.isHidden = false
            dotSeven.isHidden = false
        } else if roll == 6 {
            dotOne.isHidden = false
            dotTwo.isHidden = false
            dotThree.isHidden = false
            dotFour.isHidden = false
            dotFive.isHidden = false
            dotSix.isHidden = false
        }
        
    }
    
    // Updates labels with every roll
    func updateLabel(_ roll: Int) {
        // Creates a string contstant from the random integer that is passed through as an argument when this function is called in the Dice Roll IB Action. String is necessary to update the label.
        let score = String(roll)
        
        if labelOne.isHidden {
            labelOne.text = score
            labelOne.isHidden = false
        } else if labelTwo.isHidden {
            labelTwo.text = score
            labelTwo.isHidden = false
        } else if labelThree.isHidden {
            labelThree.text = score
            labelThree.isHidden = false
        } else if labelFour.isHidden {
            labelFour.text = score
            labelFour.isHidden = false
        } else if labelFive.isHidden {
            labelFive.text = score
            labelFive.isHidden = false
        } else if labelSix.isHidden {
            labelSix.text = score
            labelSix.isHidden = false
        } else {
            resetLabels()
            hideDots()
        }

    }
}
