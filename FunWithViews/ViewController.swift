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
    
    @IBOutlet weak var viewOne: UIView!
    
    @IBOutlet weak var viewTwo: UIView!
    
    @IBOutlet weak var viewThree: UIView!
    
    @IBOutlet weak var viewFour: UIView!
    
    @IBOutlet weak var viewFive: UIView!
    
    @IBOutlet weak var viewSix: UIView!
    
    @IBOutlet weak var viewSeven: UIView!
    
    @IBOutlet weak var labelOne: UIView!
    
    @IBOutlet weak var labelTwo: UIView!
    
    @IBOutlet weak var labelThree: UIView!
    
    @IBOutlet weak var labelFour: UIView!
    
    @IBOutlet weak var labelFive: UIView!
    
    @IBOutlet weak var labelSix: UIView!
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func hideViews() {
        viewOne.isHidden = true
        viewTwo.isHidden = true
        viewThree.isHidden = true
        viewFour.isHidden = true
        viewFive.isHidden = true
        viewSix.isHidden = true
        viewSeven.isHidden = true
    }
    
    func hideLabels() {
        labelOne.isHidden = true
        labelTwo.isHidden = true
        labelThree.isHidden = true
        labelFour.isHidden = true
        labelFive.isHidden = true
        labelSix.isHidden = true
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
            break
        }
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
        } else if labelSix.isHidden {
            labelSix.text = diceScore
            labelSix.isHidden = false
        }
    }
}
