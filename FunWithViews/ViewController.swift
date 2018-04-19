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
    @IBOutlet weak var mid: UIView!
    @IBOutlet weak var topRight: UIView!
    @IBOutlet weak var midRight: UIView!
    @IBOutlet weak var botRight: UIView!
    
    @IBOutlet weak var firstRoll: UILabel!
    @IBOutlet weak var secondRoll: UILabel!
    @IBOutlet weak var thirdRoll: UILabel!
    @IBOutlet weak var fourthRoll: UILabel!
    @IBOutlet weak var fifthRoll: UILabel!
    @IBOutlet weak var sixthRoll: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topLeft.isHidden = true
        midLeft.isHidden = true
        botLeft.isHidden = true
        mid.isHidden = true
        topRight.isHidden = true
        midRight.isHidden = true
        botRight.isHidden = true
        firstRoll.isHidden = true
        secondRoll.isHidden = true
        thirdRoll.isHidden = true
        fourthRoll.isHidden = true
        fifthRoll.isHidden = true
        sixthRoll.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let roller = randomDiceRoll()
        filledScreen()
        rearrangeDie(roller)
        updateLabelWithRoll(roller)
    }
    
    // Updates the black squares to the layout of the roll on the die
    func rearrangeDie(_ dieRoll: Int) {
        switch dieRoll {
        case 1:
            topLeft.isHidden = true
            midLeft.isHidden = true
            botLeft.isHidden = true
            mid.isHidden = false
            topRight.isHidden = true
            midRight.isHidden = true
            botRight.isHidden = true
        case 2:
            topLeft.isHidden = false
            midLeft.isHidden = true
            botLeft.isHidden = true
            mid.isHidden = true
            topRight.isHidden = true
            midRight.isHidden = true
            botRight.isHidden = false
        case 3:
            topLeft.isHidden = true
            midLeft.isHidden = true
            botLeft.isHidden = false
            mid.isHidden = false
            topRight.isHidden = false
            midRight.isHidden = true
            botRight.isHidden = true
        case 4:
            topLeft.isHidden = false
            midLeft.isHidden = true
            botLeft.isHidden = false
            mid.isHidden = true
            topRight.isHidden = false
            midRight.isHidden = true
            botRight.isHidden = false
        case 5:
            topLeft.isHidden = false
            midLeft.isHidden = true
            botLeft.isHidden = false
            mid.isHidden = false
            topRight.isHidden = false
            midRight.isHidden = true
            botRight.isHidden = false
        case 6:
            topLeft.isHidden = false
            topRight.isHidden = false
            botLeft.isHidden = false
            botRight.isHidden = false
            midLeft.isHidden = false
            midRight.isHidden = false
        default:
            topLeft.isHidden = true
            midLeft.isHidden = true
            botLeft.isHidden = true
            mid.isHidden = true
            topRight.isHidden = true
            midRight.isHidden = true
            botRight.isHidden = true
        }
    }
    
    // Updates the labels from left to right
    func updateLabelWithRoll(_ roll: Int) {
        
        let diceScore = String(roll)
        
        if firstRoll.isHidden {
            firstRoll.text = diceScore
            firstRoll.isHidden = false
        }
        else if secondRoll.isHidden {
            secondRoll.text = diceScore
            secondRoll.isHidden = false
        }
        else if thirdRoll.isHidden {
            thirdRoll.text = diceScore
            thirdRoll.isHidden = false
        }
        else if fourthRoll.isHidden {
            fourthRoll.text = diceScore
            fourthRoll.isHidden = false
        }
        else if fifthRoll.isHidden {
            fifthRoll.text = diceScore
            fifthRoll.isHidden = false
        }
        else if sixthRoll.isHidden {
            sixthRoll.text = diceScore
            sixthRoll.isHidden = false
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

    // Resets the view
    func filledScreen() {
        if sixthRoll.isHidden == false {
            firstRoll.isHidden = true
            secondRoll.isHidden = true
            thirdRoll.isHidden = true
            fourthRoll.isHidden = true
            fifthRoll.isHidden = true
            sixthRoll.isHidden = true
        }
    }
    
    
}
