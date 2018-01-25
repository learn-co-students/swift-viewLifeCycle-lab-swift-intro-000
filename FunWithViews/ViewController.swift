//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLeft: UIView!
    @IBOutlet weak var midLeft: UIView!
    @IBOutlet weak var botLeft: UIView!
    @IBOutlet weak var midMid: UIView!
    @IBOutlet weak var topRight: UIView!
    @IBOutlet weak var midRight: UIView!
    @IBOutlet weak var botRight: UIView!
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!
    @IBOutlet weak var fifthLabel: UILabel!
    @IBOutlet weak var sixthLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topLeft.isHidden = true
        midLeft.isHidden = true
        botLeft.isHidden = true
        midMid.isHidden = true
        topRight.isHidden = true
        midRight.isHidden = true
        botRight.isHidden = true
        firstLabel.isHidden = true
        secondLabel.isHidden = true
        thirdLabel.isHidden = true
        fourthLabel.isHidden = true
        fifthLabel.isHidden = true
        sixthLabel.isHidden = true
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if firstLabel.isHidden {
            firstLabel.text = diceScore
            firstLabel.isHidden = false
        } else if secondLabel.isHidden {
            secondLabel.text = diceScore
            secondLabel.isHidden = false
        } else if thirdLabel.isHidden {
            thirdLabel.text = diceScore
            thirdLabel.isHidden = false
        } else if fourthLabel.isHidden {
            fourthLabel.text = diceScore
            fourthLabel.isHidden = false
        } else if fifthLabel.isHidden {
            fifthLabel.text = diceScore
            fifthLabel.isHidden = false
        } else if sixthLabel.isHidden {
            sixthLabel.text = diceScore
            sixthLabel.isHidden = false
        }
        
    }
    
    func rearrangeDie(roll: Int) {
        switch roll {
        case 1:
            midMid.isHidden = false
        case 2:
            topLeft.isHidden = false
            botRight.isHidden = false
        case 3:
            botLeft.isHidden = false
            midMid.isHidden = false
            topRight.isHidden = false
        case 4:
            topLeft.isHidden = false
            botLeft.isHidden = false
            topRight.isHidden = false
            botRight.isHidden = false
        case 5:
            topLeft.isHidden = false
            botLeft.isHidden = false
            topRight.isHidden = false
            botRight.isHidden = false
            midMid.isHidden = false
        default:
            topLeft.isHidden = false
            midLeft.isHidden = false
            botLeft.isHidden = false
            topRight.isHidden = false
            midRight.isHidden = false
            botRight.isHidden = false
        }
    }
    
    func resetRolls () {
        if firstLabel.isHidden == false && secondLabel.isHidden == false && thirdLabel.isHidden == false && fourthLabel.isHidden == false && fifthLabel.isHidden == false && sixthLabel.isHidden == false {
            firstLabel.isHidden = true
            secondLabel.isHidden = true
            thirdLabel.isHidden = true
            fourthLabel.isHidden = true
            fifthLabel.isHidden = true
            sixthLabel.isHidden = true
        }
    }
    
    func resetDie () {
        topLeft.isHidden = true
        midLeft.isHidden = true
        botLeft.isHidden = true
        midMid.isHidden = true
        topRight.isHidden = true
        midRight.isHidden = true
        botRight.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let diceRoll = randomDiceRoll()
        resetRolls()
        resetDie()
        updateLabelWithRoll(roll: diceRoll)
        rearrangeDie(roll: diceRoll)
    }
    
    

}
