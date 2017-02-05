//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewOne: UIView!
    @IBOutlet weak var viewTwo: UIView!
    @IBOutlet weak var viewThree: UIView!
    @IBOutlet weak var viewFour: UIView!
    @IBOutlet weak var viewFive: UIView!
    @IBOutlet weak var viewSix: UIView!
    @IBOutlet weak var viewSeven: UIView!
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewOne.isHidden = true
        viewTwo.isHidden = true
        viewThree.isHidden = true
        viewFour.isHidden = true
        viewFive.isHidden = true
        viewSix.isHidden = true
        viewSeven.isHidden = true
        labelOne.isHidden = true
        labelTwo.isHidden = true
        labelThree.isHidden = true
        labelFour.isHidden = true
        labelFive.isHidden = true
        labelSix.isHidden = true
    }
    
    var updateScore = 0
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        updateScore += 1
        
        if updateScore < 7 {
            let callNumber = randomDiceRoll()
            upadateLabelWithRoll(roll: callNumber)
            rearrangDie(roll: callNumber)
            
        } else {
            updateScore = 1
            labelOne.isHidden = true
            labelTwo.isHidden = true
            labelThree.isHidden = true
            labelFour.isHidden = true
            labelFive.isHidden = true
            labelSix.isHidden = true
            let callNumber = randomDiceRoll()
            upadateLabelWithRoll(roll: callNumber)
            rearrangDie(roll: callNumber)
        }
        
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func upadateLabelWithRoll(roll: Int) {
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
        }
    }
    
    func rearrangDie(roll: Int) {
        
        viewOne.isHidden = true
        viewTwo.isHidden = true
        viewThree.isHidden = true
        viewFour.isHidden = true
        viewFive.isHidden = true
        viewSix.isHidden = true
        viewSeven.isHidden = true
        
        if roll == 1 {
            viewFive.isHidden = false
        } else if roll == 2 {
            viewOne.isHidden = false
            viewSeven.isHidden = false
        } else if roll == 3 {
            viewThree.isHidden = false
            viewFive.isHidden = false
            viewFour.isHidden = false
        } else if roll == 4 {
            viewOne.isHidden = false
            viewThree.isHidden = false
            viewFour.isHidden = false
            viewSeven.isHidden = false
        } else if roll == 5 {
            viewOne.isHidden = false
            viewThree.isHidden = false
            viewFour.isHidden = false
            viewFive.isHidden = false
            viewSeven.isHidden = false
        } else if roll == 6 {
            viewOne.isHidden = false
            viewTwo.isHidden = false
            viewThree.isHidden = false
            viewFour.isHidden = false
            viewSix.isHidden = false
            viewSeven.isHidden = false
        }
    }

}
