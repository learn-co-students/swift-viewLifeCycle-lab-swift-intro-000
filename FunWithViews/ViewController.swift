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
        hideViews()
        hideLabels()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        let theRoll = randomDiceRoll()
        updateLabelWithRoll(roll: theRoll)
        rearrangeDie(roll: theRoll)
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    // Hides black view squares initially
    func hideViews() {
        view0.isHidden = true
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
    }
    
    //Hides labels
    func hideLabels() {
        labelZero.isHidden = true
        labelOne.isHidden = true
        labelTwo.isHidden = true
        labelThree.isHidden = true
        labelFour.isHidden = true
        labelFive.isHidden = true
    }
    
    // Shows result of most recent roll.  black views represent dots on die.
    func rearrangeDie (roll: Int) {
        switch roll {
        case 1:
            view0.isHidden = true
            view1.isHidden = true
            view2.isHidden = true
            view3.isHidden = false
            view4.isHidden = true
            view5.isHidden = true
            view6.isHidden = true
        case 2:
            view0.isHidden = true
            view1.isHidden = true
            view2.isHidden = false
            view3.isHidden = true
            view4.isHidden = false
            view5.isHidden = true
            view6.isHidden = true
        case 3:
            view0.isHidden = true
            view1.isHidden = true
            view2.isHidden = false
            view3.isHidden = false
            view4.isHidden = false
            view5.isHidden = true
            view6.isHidden = true
        case 4:
            view0.isHidden = false
            view1.isHidden = true
            view2.isHidden = false
            view3.isHidden = true
            view4.isHidden = false
            view5.isHidden = true
            view6.isHidden = false
        case 5:
            view0.isHidden = false
            view1.isHidden = true
            view2.isHidden = false
            view3.isHidden = false
            view4.isHidden = false
            view5.isHidden = true
            view6.isHidden = false
        case 6:
            view0.isHidden = false
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = true
            view4.isHidden = false
            view5.isHidden = false
            view6.isHidden = false
        default:
            break
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
        }
    }
}

