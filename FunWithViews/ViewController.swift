//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstRoll: UILabel!
    
    @IBOutlet weak var secondRoll: UILabel!
    
    @IBOutlet weak var thirdRoll: UILabel!
    
    @IBOutlet weak var fourthRoll: UILabel!
    
    @IBOutlet weak var fifthRoll: UILabel!
    
    @IBOutlet weak var sixthRoll: UILabel!
    
    @IBOutlet weak var squareOne: UIView!
    
    @IBOutlet weak var squareTwo: UIView!
    
    @IBOutlet weak var squareThree: UIView!
    
    @IBOutlet weak var squareFour: UIView!
    
    @IBOutlet weak var squareFive: UIView!
    
    @IBOutlet weak var squareSix: UIView!
    
    @IBOutlet weak var squareSeven: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // labels displaying history of rolls
        
        firstRoll.isHidden = true
        secondRoll.isHidden = true
        thirdRoll.isHidden = true
        fourthRoll.isHidden = true
        fifthRoll.isHidden = true
        sixthRoll.isHidden = true
        
        // views to display the current roll
        
        squareOne.isHidden = true
        squareTwo.isHidden = true
        squareThree.isHidden = true
        squareFour.isHidden = true
        squareFive.isHidden = true
        squareSix.isHidden = true
        squareSeven.isHidden = true
    }
    
    var numberOfRolls = 0
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        numberOfRolls += 1
        
        let roll = randomDiceRoll()
        displayDice(roll: roll)
        updateLabelWithRoll(roll: roll)
        clearLabels()
    }
    
    func displayDice(roll: Int) {
        
        switch roll {
        case 1:
            squareOne.isHidden = true
            squareTwo.isHidden = true
            squareThree.isHidden = true
            squareFour.isHidden = false
            squareFive.isHidden = true
            squareSix.isHidden = true
            squareSeven.isHidden = true
        case 2:
            squareOne.isHidden = true
            squareTwo.isHidden = false
            squareThree.isHidden = true
            squareFour.isHidden = true
            squareFive.isHidden = true
            squareSix.isHidden = false
            squareSeven.isHidden = true
        case 3:
            squareOne.isHidden = false
            squareTwo.isHidden = true
            squareThree.isHidden = true
            squareFour.isHidden = false
            squareFive.isHidden = true
            squareSix.isHidden = true
            squareSeven.isHidden = false
        case 4:
            squareOne.isHidden = false
            squareTwo.isHidden = false
            squareThree.isHidden = true
            squareFour.isHidden = true
            squareFive.isHidden = true
            squareSix.isHidden = false
            squareSeven.isHidden = false
        case 5:
            squareOne.isHidden = false
            squareTwo.isHidden = false
            squareThree.isHidden = true
            squareFour.isHidden = false
            squareFive.isHidden = true
            squareSix.isHidden = false
            squareSeven.isHidden = false
        default:
            squareOne.isHidden = false
            squareTwo.isHidden = false
            squareThree.isHidden = false
            squareFour.isHidden = true
            squareFive.isHidden = false
            squareSix.isHidden = false
            squareSeven.isHidden = false
        }
    }
    
    func updateLabelWithRoll(roll: Int) {
        
        let diceRoll = String(roll)
        
        if firstRoll.isHidden {
            firstRoll.text = diceRoll
            firstRoll.isHidden = false
        } else if secondRoll.isHidden {
            secondRoll.text = diceRoll
            secondRoll.isHidden = false
        } else if thirdRoll.isHidden {
            thirdRoll.text = diceRoll
            thirdRoll.isHidden = false
        } else if fourthRoll.isHidden {
            fourthRoll.text = diceRoll
            fourthRoll.isHidden = false
        } else if fifthRoll.isHidden {
            fifthRoll.text = diceRoll
            fifthRoll.isHidden = false
        } else if sixthRoll.isHidden {
            sixthRoll.text = diceRoll
            sixthRoll.isHidden = false
        }
        
    }
    
    func clearLabels() {
        if numberOfRolls > 6 {
            
            numberOfRolls = 0
            
            firstRoll.isHidden = true
            secondRoll.isHidden = true
            thirdRoll.isHidden = true
            fourthRoll.isHidden = true
            fifthRoll.isHidden = true
            sixthRoll.isHidden = true
            
            squareOne.isHidden = true
            squareTwo.isHidden = true
            squareThree.isHidden = true
            squareFour.isHidden = true
            squareFive.isHidden = true
            squareSix.isHidden = true
            squareSeven.isHidden = true
            
        }
    }
   
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
