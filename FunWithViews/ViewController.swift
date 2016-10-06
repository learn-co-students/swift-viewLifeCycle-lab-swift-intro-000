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
        hideDots()
        hideLabels()
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let roll = randomDiceRoll()
        updateLabelWithRoll(roll: roll)
        updateDotsWithRoll(roll: roll)
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

    @IBOutlet weak var topLeftDot: UIView!
    @IBOutlet weak var topRightDot: UIView!
    @IBOutlet weak var middleLeftDot: UIView!
    @IBOutlet weak var centerDot: UIView!
    @IBOutlet weak var middleRightDot: UIView!
    @IBOutlet weak var bottomLeftDot: UIView!
    @IBOutlet weak var bottomRightDot: UIView!
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    
    func hideDots() {
        topLeftDot.isHidden = true
        topRightDot.isHidden = true
        middleLeftDot.isHidden = true
        centerDot.isHidden = true
        middleRightDot.isHidden = true
        bottomLeftDot.isHidden = true
        bottomRightDot.isHidden = true
    }
    
    func hideLabels() {
        labelOne.isHidden = true
        labelTwo.isHidden = true
        labelThree.isHidden = true
        labelFour.isHidden = true
        labelFive.isHidden = true
        labelSix.isHidden = true
    }
    
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
        } else if labelSix.isHidden{
            labelSix.text = diceScore
            labelSix.isHidden = false
        } else {
            hideLabels()
            labelOne.text = diceScore
            labelOne.isHidden = false
        }
    }
    
    func updateDotsWithRoll(roll: Int) {
        hideDots()
        switch roll {
        case 1:
            centerDot.isHidden = false
        case 2:
            topLeftDot.isHidden = false
            bottomRightDot.isHidden = false
        case 3:
            topLeftDot.isHidden = false
            centerDot.isHidden = false
            bottomRightDot.isHidden = false
        case 4:
            topLeftDot.isHidden = false
            topRightDot.isHidden = false
            bottomLeftDot.isHidden = false
            bottomRightDot.isHidden = false
        case 5:
            topLeftDot.isHidden = false
            topRightDot.isHidden = false
            bottomLeftDot.isHidden = false
            bottomRightDot.isHidden = false
            centerDot.isHidden = false
        default:
            topLeftDot.isHidden = false
            topRightDot.isHidden = false
            bottomLeftDot.isHidden = false
            bottomRightDot.isHidden = false
            middleLeftDot.isHidden = false
            middleRightDot.isHidden = false
        }
  
    }
}
