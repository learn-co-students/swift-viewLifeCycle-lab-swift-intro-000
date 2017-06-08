//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Dice representation views
    @IBOutlet weak var topLeft: UIView!
    @IBOutlet weak var topRight: UIView!
    @IBOutlet weak var middleLeft: UIView!
    @IBOutlet weak var middle: UIView!
    @IBOutlet weak var middleRight: UIView!
    @IBOutlet weak var bottomLeft: UIView!
    @IBOutlet weak var bottomRight: UIView!
    
    // Roll views
    @IBOutlet weak var firstRoll: UIView!
    @IBOutlet weak var secondRoll: UIView!
    @IBOutlet weak var thirdRoll: UIView!
    @IBOutlet weak var fourthRoll: UIView!
    @IBOutlet weak var fifthRoll: UIView!
    @IBOutlet weak var sixthRoll: UIView!
    
    // Dice labels
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    
    var diceRoll = 0
    
    // Hides all dice representations
    func hideDiceRep() {
        topLeft.isHidden = true
        middleLeft.isHidden = true
        bottomLeft.isHidden = true
        middle.isHidden = true
        topRight.isHidden = true
        middleRight.isHidden = true
        bottomRight.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideDiceRep()
        firstRoll.isHidden = true
        secondRoll.isHidden = true
        thirdRoll.isHidden = true
        fourthRoll.isHidden = true
        fifthRoll.isHidden = true
        sixthRoll.isHidden = true
    }
    
    func updateLabelWithRoll(roll: Int) {
        let diceScore = String(roll)
        
        if(diceRoll == 1) {
            labelOne.isHidden = false
            labelOne.text = diceScore
        }else if(diceRoll == 2) {
            labelTwo.isHidden = false
            labelTwo.text = diceScore
        }else if(diceRoll == 3) {
            labelThree.isHidden = false
            labelThree.text = diceScore
        }else if(diceRoll == 4) {
            labelFour.isHidden = false
            labelFour.text = diceScore
        }else if(diceRoll == 5) {
            labelFive.isHidden = false
            labelFive.text = diceScore
        }else if(diceRoll == 6) {
            labelSix.isHidden = false
            labelSix.text = diceScore
        }else if(diceRoll == 7) {
            labelOne.isHidden = true
            labelTwo.isHidden = true
            labelThree.isHidden = true
            labelFour.isHidden = true
            labelFive.isHidden = true
            labelSix.isHidden = true
        }
    }
    
    func diceScoreDisplay(score: Int) {
        if(diceRoll == 1){
            firstRoll.isHidden = false
        }else if(diceRoll == 2){
            secondRoll.isHidden = false
        }else if(diceRoll == 3){
            thirdRoll.isHidden = false
        }else if(diceRoll == 4){
            fourthRoll.isHidden = false
        }else if(diceRoll == 5){
            fifthRoll.isHidden = false
        }else if(diceRoll == 6){
            sixthRoll.isHidden = false
        }else if(diceRoll == 7){
            firstRoll.isHidden = true
            secondRoll.isHidden = true
            thirdRoll.isHidden = true
            fourthRoll.isHidden = true
            fifthRoll.isHidden = true
            sixthRoll.isHidden = true
        }
    }
    
    // Dice button action
    @IBAction func dieButtonTapped(_ sender: Any) {
        diceRoll+=1
        let diceScore = randomDiceRoll()
        print("Dice roll = ", diceRoll)
        print("Dice score = ", diceScore)
        
        diceScoreDisplay(score: diceScore)
        updateLabelWithRoll(roll: diceScore)
        
        if(diceRoll > 6){
            diceRoll = 0
            hideDiceRep()
        } else {
            hideDiceRep()
        
            switch diceScore{
            case 1: middle.isHidden = false
            case 2: topLeft.isHidden = false
                    bottomRight.isHidden = false
            case 3: topLeft.isHidden = false
                    middle.isHidden = false
                    bottomRight.isHidden = false
            case 4: topLeft.isHidden = false
                    bottomLeft.isHidden = false
                    topRight.isHidden = false
                    bottomRight.isHidden = false
            case 5: topLeft.isHidden = false
                    bottomLeft.isHidden = false
                    middle.isHidden = false
                    topRight.isHidden = false
                    bottomRight.isHidden = false
            case 6: topLeft.isHidden = false
                    middleLeft.isHidden = false
                    bottomLeft.isHidden = false
                    middle.isHidden = false
                    topRight.isHidden = false
                    middleRight.isHidden = false
                    bottomRight.isHidden = false
            default: middle.isHidden = true
                    topLeft.isHidden = true
                    middleLeft.isHidden = true
                    bottomLeft.isHidden = true
                    topRight.isHidden = true
                    middleRight.isHidden = true
                    bottomRight.isHidden = true
            }
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
}
