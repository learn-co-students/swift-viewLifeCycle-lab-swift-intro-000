//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var LeftCorner: UIView!
    
    @IBOutlet weak var RightCorner: UIView!
    
    @IBOutlet weak var LeftMiddle: UIView!
    
    @IBOutlet weak var LeftBottom: UIView!
    
    @IBOutlet weak var Middle: UIView!
    
    @IBOutlet weak var RightMiddle: UIView!
    
    @IBOutlet weak var RightBottom: UIView!
    
    @IBOutlet weak var labelOne: UILabel!
    
    @IBOutlet weak var labelTwo: UILabel!
    
    @IBOutlet weak var labelThree: UILabel!
    
    @IBOutlet weak var labelFour: UILabel!
    
    @IBOutlet weak var labelFive: UILabel!
    
    @IBOutlet weak var labelSix: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LeftCorner.isHidden = true
        LeftMiddle.isHidden = true
        LeftBottom.isHidden = true
        RightCorner.isHidden = true
        RightMiddle.isHidden = true
        RightBottom.isHidden = true
        Middle.isHidden = true
        labelOne.isHidden = true
        labelTwo.isHidden = true
        labelThree.isHidden = true
        labelFour.isHidden = true
        labelFive.isHidden = true
        labelSix.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        //generate random number
        let roll = randomDiceRoll()
        showBoxes(roll: roll)
        updateLabelWithRoll(roll: roll)
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
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
        }
        else if labelSix.isHidden {
            labelSix.text = diceScore
            labelSix.isHidden = false
        }
    }
    func showBoxes(roll: Int) {
        switch roll {
        case 1:
            LeftCorner.isHidden = true
            LeftMiddle.isHidden = true
            LeftBottom.isHidden = true
            RightCorner.isHidden = true
            RightMiddle.isHidden = true
            RightBottom.isHidden = true
            Middle.isHidden = false
        case 2:
            LeftCorner.isHidden = true
            LeftMiddle.isHidden = true
            LeftBottom.isHidden = false
            RightCorner.isHidden = false
            RightMiddle.isHidden = true
            RightBottom.isHidden = true
            Middle.isHidden = true
        case 3:
            LeftCorner.isHidden = true
            LeftMiddle.isHidden = true
            LeftBottom.isHidden = false
            RightCorner.isHidden = false
            RightMiddle.isHidden = true
            RightBottom.isHidden = true
            Middle.isHidden = false
        case 4:
            LeftCorner.isHidden = false
            LeftMiddle.isHidden = true
            LeftBottom.isHidden = false
            RightCorner.isHidden = false
            RightMiddle.isHidden = true
            RightBottom.isHidden = false
            Middle.isHidden = true
        case 5:
            LeftCorner.isHidden = false
            LeftMiddle.isHidden = true
            LeftBottom.isHidden = false
            RightCorner.isHidden = false
            RightMiddle.isHidden = true
            RightBottom.isHidden = false
            Middle.isHidden = false
        default:
            LeftCorner.isHidden = false
            LeftMiddle.isHidden = false
            LeftBottom.isHidden = false
            RightCorner.isHidden = false
            RightMiddle.isHidden = false
            RightBottom.isHidden = false
            Middle.isHidden = true
        }
    }


}
