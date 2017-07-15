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
    }
    
    
    @IBOutlet weak var diceOne: UIView!
    @IBOutlet weak var diceTwo: UIView!
    @IBOutlet weak var diceThree: UIView!
    @IBOutlet weak var diceFour: UIView!
    @IBOutlet weak var diceFive: UIView!
    @IBOutlet weak var diceSix: UIView!
    @IBOutlet weak var diceSeven: UIView!


    @IBOutlet weak var scoreOne: UILabel!
    @IBOutlet weak var scoreTwo: UILabel!
    @IBOutlet weak var scoreThree: UILabel!
    @IBOutlet weak var scoreFour: UILabel!
    @IBOutlet weak var scoreFive: UILabel!
    @IBOutlet weak var scoreSix: UILabel!

    
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        //print(diceScore)
        
        if scoreOne.isHidden {
            scoreOne.text = diceScore
            scoreOne.isHidden = false
        } else if scoreTwo.isHidden {
            scoreTwo.text = diceScore
            scoreTwo.isHidden = false
        } else if scoreThree.isHidden {
            scoreThree.text = diceScore
            scoreThree.isHidden = false
        } else if scoreFour.isHidden {
            scoreFour.text = diceScore
            scoreFour.isHidden = false
        } else if scoreFive.isHidden {
            scoreFive.text = diceScore
            scoreFive.isHidden = false
        } else if scoreSix.isHidden {
            scoreSix.text = diceScore
            scoreSix.isHidden = false
        }

    }
    
    func resetDiceView() {
        
        diceOne.isHidden = true
        diceTwo.isHidden = true
        diceThree.isHidden = true
        diceFour.isHidden = true
        diceFive.isHidden = true
        diceSix.isHidden = true
        diceSeven.isHidden = true
        
    }
    
    func resetScoreView() {
       
        scoreOne.isHidden = true
        scoreTwo.isHidden = true
        scoreThree.isHidden = true
        scoreFour.isHidden = true
        scoreFive.isHidden = true
        scoreSix.isHidden = true
       
    }
    
    func displayDiceRoll(roll: Int) {
        
        resetDiceView()
        
        if roll==1 {
            diceFour.isHidden = false
        } else if roll==2 {
            diceOne.isHidden = false
            diceSeven.isHidden = false
        } else if roll==3 {
            diceOne.isHidden = false
            diceFour.isHidden = false
            diceSeven.isHidden = false
        } else if roll==4 {
            diceOne.isHidden = false
            diceThree.isHidden = false
            diceFive.isHidden = false
            diceSeven.isHidden = false
        } else if roll==5 {
            diceOne.isHidden = false
            diceThree.isHidden = false
            diceFour.isHidden = false
            diceFive.isHidden = false
            diceSeven.isHidden = false
        } else if roll==6 {
            diceOne.isHidden = false
            diceTwo.isHidden = false
            diceThree.isHidden = false
            diceFive.isHidden = false
            diceSix.isHidden = false
            diceSeven.isHidden = false
        }

    }
        

    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        let diceRoll: Int = randomDiceRoll()
        
        if scoreSix.isHidden {

            updateLabelWithRoll(roll: diceRoll)
            //print("Button pushed")
            displayDiceRoll(roll: diceRoll)
            
        } else {
            
            resetDiceView()
            resetScoreView()
            updateLabelWithRoll(roll: diceRoll)
            displayDiceRoll(roll: diceRoll)
            
        }
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
