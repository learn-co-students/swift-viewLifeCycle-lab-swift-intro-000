//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceTwo: UIView!
    @IBOutlet weak var diceOne: UIView!
    @IBOutlet weak var diceThree: UIView!
    @IBOutlet weak var diceFour: UIView!
    @IBOutlet weak var diceFive: UIView!
    @IBOutlet weak var diceSix: UIView!
    @IBOutlet weak var diceSeven: UIView!
    
    
    @IBOutlet weak var roundOne: UILabel!
    @IBOutlet weak var roundTwo: UILabel!
    @IBOutlet weak var roundThree: UILabel!
    @IBOutlet weak var roundFour: UILabel!
    @IBOutlet weak var roundFive: UILabel!
    @IBOutlet weak var roundSix: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceOne.isHidden = true
        diceTwo.isHidden = true
        diceThree.isHidden = true
        diceFour.isHidden = true
        diceFive.isHidden = true
        diceSix.isHidden = true
        diceSeven.isHidden = true
        
        roundOne.isHidden = true
        roundTwo.isHidden = true
        roundThree.isHidden = true
        roundFour.isHidden = true
        roundFive.isHidden = true
        roundSix.isHidden = true
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        let rolledDice =  randomDiceRoll()
        updateLabelWithRoll(roll: rolledDice)
        updateDice(roll: rolledDice)
        resetProgram()
        
        
    }
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

    func updateLabelWithRoll(roll:Int) {
        let diceScore = String(roll)
       
        if roundOne.isHidden {
            roundOne.text = diceScore
            roundOne.isHidden = false
        } else if roundTwo.isHidden {
            roundTwo.text = diceScore
            roundTwo.isHidden = false
        } else if roundThree.isHidden{
            roundThree.text = diceScore
            roundThree.isHidden = false
        } else if roundFour.isHidden{
            roundFour.text = diceScore
            roundFour.isHidden = false
        } else if roundFive.isHidden{
            roundFive.text = diceScore
            roundFive.isHidden = false
        } else if roundSix.isHidden {
            roundSix.text = diceScore
            roundSix.isHidden = false
        }
    }
    func updateDice(roll : Int){
        switch roll {
        case 1:
            diceOne.isHidden = true
            diceTwo.isHidden = true
            diceThree.isHidden = true
            diceFour.isHidden = false
            diceFive.isHidden = true
            diceSix.isHidden = true
            diceSeven.isHidden = true
        case 2:
            diceOne.isHidden = false
            diceTwo.isHidden = true
            diceThree.isHidden = true
            diceFour.isHidden = true
            diceFive.isHidden = true
            diceSix.isHidden = true
            diceSeven.isHidden = false
        case 3:
            diceOne.isHidden = false
            diceTwo.isHidden = true
            diceThree.isHidden = true
            diceFour.isHidden = false
            diceFive.isHidden = true
            diceSix.isHidden = true
            diceSeven.isHidden = false
        case 4:
            diceOne.isHidden = false
            diceTwo.isHidden = true
            diceThree.isHidden = false
            diceFour.isHidden = true
            diceFive.isHidden = false
            diceSix.isHidden = true
            diceSeven.isHidden = false
        case 5:
            diceOne.isHidden = false
            diceTwo.isHidden = true
            diceThree.isHidden = false
            diceFour.isHidden = false
            diceFive.isHidden = false
            diceSix.isHidden = true
            diceSeven.isHidden = false
        case 6:
            diceOne.isHidden = false
            diceTwo.isHidden = false
            diceThree.isHidden = false
            diceFour.isHidden = true
            diceFive.isHidden = false
            diceSix.isHidden = false
            diceSeven.isHidden = false
        default:
            diceOne.isHidden = true
            diceTwo.isHidden = true
            diceThree.isHidden = true
            diceFour.isHidden = true
            diceFive.isHidden = true
            diceSix.isHidden = true
            diceSeven.isHidden = true
        }
    }
    func resetProgram () {
    if roundSix.isHidden == false{
  
    diceOne.isHidden = true
    diceTwo.isHidden = true
    diceThree.isHidden = true
    diceFour.isHidden = true
    diceFive.isHidden = true
    diceSix.isHidden = true
    diceSeven.isHidden = true
    
    roundOne.isHidden = true
    roundTwo.isHidden = true
    roundThree.isHidden = true
    roundFour.isHidden = true
    roundFive.isHidden = true
    roundSix.isHidden = true
    
    }
    }
    
}
