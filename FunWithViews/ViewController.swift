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
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let x = randomDiceRoll();
        updateLabelWithRoll(roll: x)
        rearrangeDie(roll: x)
    }
    
        func randomDiceRoll() -> Int {
            return Int(arc4random_uniform(6) + 1)
        }
        
        func rearrangeDie (roll: Int) {
            switch roll {
            case 1:
                viewOne.isHidden = true
                viewTwo.isHidden = true
                viewThree.isHidden = true
                viewFour.isHidden = false
                viewFive.isHidden = true
                viewSix.isHidden = true
                viewSeven.isHidden = true
            case 2:
                viewOne.isHidden = true
                viewTwo.isHidden = true
                viewThree.isHidden = false
                viewFour.isHidden = true
                viewFive.isHidden = false
                viewSix.isHidden = true
                viewSeven.isHidden = true
            case 3:
                viewOne.isHidden = true
                viewTwo.isHidden = true
                viewThree.isHidden = false
                viewFour.isHidden = false
                viewFive.isHidden = false
                viewSix.isHidden = true
                viewSeven.isHidden = true
            case 4:
                viewOne.isHidden = false
                viewTwo.isHidden = true
                viewThree.isHidden = false
                viewFour.isHidden = true
                viewFive.isHidden = false
                viewSix.isHidden = true
                viewSeven.isHidden = false
            case 5:
                viewOne.isHidden = false
                viewTwo.isHidden = true
                viewThree.isHidden = false
                viewFour.isHidden = false
                viewFive.isHidden = false
                viewSix.isHidden = true
                viewSeven.isHidden = false
            case 6:
                viewOne.isHidden = false
                viewTwo.isHidden = false
                viewThree.isHidden = false
                viewFour.isHidden = true
                viewFive.isHidden = false
                viewSix.isHidden = false
                viewSeven.isHidden = false
            default:
                viewOne.isHidden = true
                viewTwo.isHidden = true
                viewThree.isHidden = true
                viewFour.isHidden = true
                viewFive.isHidden = true
                viewSix.isHidden = true
                viewSeven.isHidden = true
            }
        }
        // Shows the result of each successive roll in the labels.  First the red label shows the result of the first roll.  After the next roll, the red label remains showing the result of the first roll, and the orange label shows the result of the second roll.
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
                labelOne.text = diceScore
                labelOne.isHidden = false
                labelTwo.isHidden = true
                labelThree.isHidden = true
                labelFour.isHidden = true
                labelFive.isHidden = true
                labelSix.isHidden = true
            }
        }
    }

