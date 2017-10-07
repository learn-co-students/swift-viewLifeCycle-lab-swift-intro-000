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
        
        hideAllDice()
        
        redBox.isHidden = true
        orangeBox.isHidden = true
        yellowBox.isHidden = true
        greenBox.isHidden = true
        blueBox.isHidden = true
        purpleBox.isHidden = true
    }
    // IB Outlet: Dice
    @IBOutlet weak var diceOne: UIView!
    @IBOutlet weak var diceTwo: UIView!
    @IBOutlet weak var diceThree: UIView!
    @IBOutlet weak var diceFour: UIView!
    @IBOutlet weak var diceFive: UIView!
    @IBOutlet weak var diceSix: UIView!
    @IBOutlet weak var diceSeven: UIView!
    
    // IB Outlet: Colored Boxes
    @IBOutlet weak var redBox: UILabel!
    @IBOutlet weak var orangeBox: UILabel!
    @IBOutlet weak var yellowBox: UILabel!
    @IBOutlet weak var greenBox: UILabel!
    @IBOutlet weak var blueBox: UILabel!
    @IBOutlet weak var purpleBox: UILabel!
    
    
    
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {

        let diceScore = randomDiceRoll()
        rearrangeDie(diceScore: diceScore)
        updateScore(diceScore: diceScore)
    
    }

    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    //Hide dice and colored boxes
    func hideAllDice() {
        diceOne.isHidden = true
        diceTwo.isHidden = true
        diceThree.isHidden = true
        diceFour.isHidden = true
        diceFour.isHidden = true
        diceFive.isHidden = true
        diceSix.isHidden = true
        diceSeven.isHidden = true
    }
    
    
    
    // Rearrange Black Boxes after roll
    func rearrangeDie(diceScore: Int) {
        let diceScore = randomDiceRoll()
        
        
        if diceScore == 1 {
           hideAllDice()
            diceOne.isHidden = false
        } else if diceScore == 2 {
            hideAllDice()
            diceOne.isHidden = false
            diceTwo.isHidden = false
        } else if diceScore == 3 {
            hideAllDice()
            diceOne.isHidden = false
            diceFour.isHidden = false
            diceSeven.isHidden = false
        } else if diceScore == 4 {
            hideAllDice()
            diceOne.isHidden = false
            diceThree.isHidden = false
            diceSix.isHidden = false
            diceSeven.isHidden = false
        } else if diceScore == 5 {
            hideAllDice()
            diceOne.isHidden = false
            diceThree.isHidden = false
            diceFour.isHidden = false
            diceSix.isHidden = false
            diceSeven.isHidden = false
        } else if diceScore == 6 {
            hideAllDice()
            diceOne.isHidden = false
            diceTwo.isHidden = false
            diceThree.isHidden = false
            diceFive.isHidden = false
            diceSix.isHidden = false
            diceSeven.isHidden = false
        } else if diceScore == 7 {
            hideAllDice()
            diceOne.isHidden = false
            diceTwo.isHidden = false
            diceThree.isHidden = false
            diceFour.isHidden = false
            diceFive.isHidden = false
            diceSix.isHidden = false
            diceSeven.isHidden = false
        }
    }

    func updateScore(diceScore: Int) {
       let diceScore = String(diceScore)
        
        if redBox.isHidden {
            redBox.text = diceScore
            redBox.isHidden = false
        } else if orangeBox.isHidden {
            orangeBox.text = diceScore
            orangeBox.isHidden = false
        } else if yellowBox.isHidden {
            yellowBox.text = diceScore
            yellowBox.isHidden = false
        } else if greenBox.isHidden {
            greenBox.text = diceScore
            greenBox.isHidden = false
        } else if blueBox.isHidden {
            blueBox.text = diceScore
            blueBox.isHidden = false
        } else if purpleBox.isHidden {
            purpleBox.text = diceScore
            purpleBox.isHidden = false
        }
    }
    
    
} // ends class
