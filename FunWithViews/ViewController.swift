//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceOne: UIView!
    @IBOutlet weak var diceTwo: UIView!
    @IBOutlet weak var diceThree: UIView!
    @IBOutlet weak var diceFour: UIView!
    @IBOutlet weak var diceFive: UIView!
    @IBOutlet weak var diceSix: UIView!
    @IBOutlet weak var diceSeven: UIView!
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceOne.isHidden = true
        diceTwo.isHidden = true
        diceThree.isHidden = true
        diceFour.isHidden = true
        diceFive.isHidden = true
        diceSix.isHidden = true
        diceSeven.isHidden = true
        
        labelOne.text = " "
        labelOne.isHidden = true
        labelTwo.text = " "
        labelTwo.isHidden = true
        labelThree.text = " "
        labelThree.isHidden = true
        labelFour.text = " "
        labelFour.isHidden = true
        labelFive.text = " "
        labelFive.isHidden = true
        labelSix.text = " "
        labelSix.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        switch randomDiceRoll() {
        case 1:
            diceOne.isHidden = true
            diceTwo.isHidden = true
            diceThree.isHidden = true
            diceFour.isHidden = true
            diceFive.isHidden = true
            diceSix.isHidden = true
            diceSeven.isHidden = false
            updateLabelWithRoll(roll: 1)
        case 2:
            diceOne.isHidden = false
            diceOne.isHidden = true
            diceTwo.isHidden = true
            diceThree.isHidden = true
            diceFour.isHidden = true
            diceFive.isHidden = true
            diceSix.isHidden = false
            updateLabelWithRoll(roll: 2)
        case 3:
            diceOne.isHidden = false
            diceTwo.isHidden = true
            diceThree.isHidden = true
            diceFour.isHidden = true
            diceFive.isHidden = true
            diceSeven.isHidden = false
            diceSix.isHidden = false
            updateLabelWithRoll(roll: 3)
        case 4:
            diceOne.isHidden = false
            diceTwo.isHidden = true
            diceThree.isHidden = false
            diceFour.isHidden = false
            diceFive.isHidden = true
            diceSix.isHidden = false
            diceSeven.isHidden = true
            updateLabelWithRoll(roll: 4)
        case 5:
            diceOne.isHidden = false
            diceTwo.isHidden = true
            diceThree.isHidden = false
            diceFour.isHidden = false
            diceFive.isHidden = true
            diceSix.isHidden = false
            diceSeven.isHidden = false
            updateLabelWithRoll(roll: 5)
        default:
            diceOne.isHidden = false
            diceTwo.isHidden = false
            diceThree.isHidden = false
            diceFour.isHidden = false
            diceFive.isHidden = false
            diceSix.isHidden = false
            diceSeven.isHidden = true
            updateLabelWithRoll(roll: 6)
        }
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6))
    }
    
    func updateLabelWithRoll(roll: Int) {
        let diceScore = String(roll)
        if labelOne.isHidden == true {
            labelOne.text = diceScore
            labelOne.isHidden = false
            print(diceScore)
        } else if labelTwo.isHidden == true {
            labelTwo.text = diceScore
            labelTwo.isHidden = false
            print(diceScore)
        } else if labelThree.isHidden == true {
            labelThree.text = diceScore
            labelThree.isHidden = false
            print(diceScore)
        } else if labelFour.isHidden == true {
            labelFour.text = diceScore
            labelFour.isHidden = false
            print(diceScore)
        } else if labelFive.isHidden == true {
            labelFive.text = diceScore
            labelFive.isHidden = false
            print(diceScore)
        } else if labelSix.isHidden == true {
            labelSix.text = diceScore
            labelSix.isHidden = false
            labelOne.isHidden = true
            labelTwo.isHidden = true
            labelThree.isHidden = true
            labelFour.isHidden = true
            labelFive.isHidden = true
            print(diceScore)
        } 
    }
}
