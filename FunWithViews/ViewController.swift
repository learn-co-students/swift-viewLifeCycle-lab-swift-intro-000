//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewDieOne: UIView!
    @IBOutlet weak var viewDieTwo: UIView!
    @IBOutlet weak var viewDieThree: UIView!
    @IBOutlet weak var viewDieFour: UIView!
    @IBOutlet weak var viewDieFive: UIView!
    @IBOutlet weak var viewDieSix: UIView!
    @IBOutlet weak var viewDieSeven: UIView!
    
    @IBOutlet weak var textDieRollOneLabel: UILabel!
    @IBOutlet weak var textDieRollTwoLabel: UILabel!
    @IBOutlet weak var textDieRollThreeLabel: UILabel!
    @IBOutlet weak var textDieRollFourLabel: UILabel!
    @IBOutlet weak var textDieRollFiveLabel: UILabel!
    @IBOutlet weak var textDieRollSixLabel: UILabel!
    
    var numberOfRolls = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewDieOne.isHidden = true
        viewDieTwo.isHidden = true
        viewDieThree.isHidden = true
        viewDieFour.isHidden = true
        viewDieFive.isHidden = true
        viewDieSix.isHidden = true
        viewDieSeven.isHidden = true
        
        textDieRollOneLabel.isHidden = true
        textDieRollTwoLabel.isHidden = true
        textDieRollThreeLabel.isHidden = true
        textDieRollFourLabel.isHidden = true
        textDieRollFiveLabel.isHidden = true
        textDieRollSixLabel.isHidden = true
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let dieScore = randomDiceRoll()
        
        if(numberOfRolls <= 6) {
           clearDie()
           updateLabelWithRoll(roll: dieScore)
           rearrangeDie(roll: dieScore)
           numberOfRolls += 1
        } else {
            numberOfRolls = 1
            viewDidLoad()
        }
    }
   
    
    
    func updateLabelWithRoll(roll: Int) {
        let dieScore = String(roll)
        
        if textDieRollOneLabel.isHidden {
            textDieRollOneLabel.text = dieScore
            textDieRollOneLabel.isHidden = false
        } else if textDieRollTwoLabel.isHidden {
            textDieRollTwoLabel.text = dieScore
            textDieRollTwoLabel.isHidden = false
        } else if textDieRollThreeLabel.isHidden {
            textDieRollThreeLabel.text = dieScore
            textDieRollThreeLabel.isHidden = false
        } else if textDieRollFourLabel.isHidden {
            textDieRollFourLabel.text = dieScore
            textDieRollFourLabel.isHidden = false
        } else if textDieRollFiveLabel.isHidden {
            textDieRollFiveLabel.text = dieScore
            textDieRollFiveLabel.isHidden = false
        } else if textDieRollSixLabel.isHidden {
            textDieRollSixLabel.text = dieScore
            textDieRollSixLabel.isHidden = false
        }
    }
    
    func clearDie() {
        viewDieOne.isHidden = true
        viewDieTwo.isHidden = true
        viewDieThree.isHidden = true
        viewDieFour.isHidden = true
        viewDieFive.isHidden = true
        viewDieSix.isHidden = true
        viewDieSeven.isHidden = true
        
    
    }
    
    
    func rearrangeDie(roll: Int) {
        let dieScore = String(roll)
        
        switch dieScore {
        case "1":
            viewDieFour.isHidden = false
        case "2":
            viewDieThree.isHidden = false
            viewDieTwo.isHidden = false
        case "3":
            viewDieSix.isHidden = false
            viewDieFour.isHidden = false
            viewDieTwo.isHidden = false
        case "4":
            viewDieOne.isHidden = false
            viewDieTwo.isHidden = false
            viewDieSix.isHidden = false
            viewDieSeven.isHidden = false
        case "5":
            viewDieOne.isHidden = false
            viewDieTwo.isHidden = false
            viewDieSix.isHidden = false
            viewDieSeven.isHidden = false
            viewDieFour.isHidden = false
        case "6":
            viewDieOne.isHidden = false
            viewDieTwo.isHidden = false
            viewDieSix.isHidden = false
            viewDieSeven.isHidden = false
            viewDieFive.isHidden = false
            viewDieThree.isHidden = false
        default:
            clearDie()
        }
        
    }
  
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
