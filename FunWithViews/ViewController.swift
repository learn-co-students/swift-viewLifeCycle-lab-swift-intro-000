//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //black views of the die
    @IBOutlet weak var dice1: UIView!
    @IBOutlet weak var dice2: UIView!
    @IBOutlet weak var dice3: UIView!
    @IBOutlet weak var dice4: UIView!
    @IBOutlet weak var dice5: UIView!
    @IBOutlet weak var dice6: UIView!
    @IBOutlet weak var dice7: UIView!
    
    
    //labels for 6 rolls of the dice
    @IBOutlet weak var rollOneLabel: UILabel!
    @IBOutlet weak var rollTwoLabel: UILabel!
    @IBOutlet weak var rollThreeLabel: UILabel!
    @IBOutlet weak var rollFourLabel: UILabel!
    @IBOutlet weak var rollFiveLabel: UILabel!
    @IBOutlet weak var rollSixLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        dice1.isHidden = true
        dice2.isHidden = true
        dice3.isHidden = true
        dice4.isHidden = true
        dice5.isHidden = true
        dice6.isHidden = true
        dice7.isHidden = true
        
        rollOneLabel.isHidden = true
        rollTwoLabel.isHidden = true
        rollThreeLabel.isHidden = true
        rollFourLabel.isHidden = true
        rollFiveLabel.isHidden = true
        rollSixLabel.isHidden = true
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let dieNumberRoll = randomDiceRoll()
        
        //if they have already rolled 6 times, remove scores
        if rollSixLabel.isHidden == false {
            hideAllScores()
        }
        
        updateScore(dieNumber: String(dieNumberRoll))
        rearrangeDie(dieNumber: dieNumberRoll)
        
        
        
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
        
    }
    
    func rearrangeDie(dieNumber: Int){
        
        //hide all die squares so there is clean slate
        hideAllDieSquares()
        
        //display die squares needed
        switch dieNumber {
        case 1:
            dice4.isHidden = false
        case 2:
            dice1.isHidden = false
            dice7.isHidden = false
        case 3:
            dice1.isHidden = false
            dice4.isHidden = false
            dice7.isHidden = false
        case 4:
            dice1.isHidden = false
            dice3.isHidden = false
            dice5.isHidden = false
            dice7.isHidden = false
        case 5:
            dice1.isHidden = false
            dice3.isHidden = false
            dice4.isHidden = false
            dice5.isHidden = false
            dice7.isHidden = false
        case 6:
            dice1.isHidden = false
            dice2.isHidden = false
            dice3.isHidden = false
            dice5.isHidden = false
            dice6.isHidden = false
            dice7.isHidden = false
        default:
            print("We have a problem...")
        }
        
    }
    
    func hideAllDieSquares(){
       dice1.isHidden = true
        dice2.isHidden = true
        dice3.isHidden = true
        dice4.isHidden = true
        dice5.isHidden = true
        dice6.isHidden = true
        dice7.isHidden = true
    }
    
    func updateScore(dieNumber: String){
        if rollOneLabel.isHidden {
            rollOneLabel.text = dieNumber
            rollOneLabel.isHidden = false
        } else if rollTwoLabel.isHidden {
            rollTwoLabel.text = dieNumber
            rollTwoLabel.isHidden = false
        } else if rollThreeLabel.isHidden {
            rollThreeLabel.text = dieNumber
            rollThreeLabel.isHidden = false
        } else if rollFourLabel.isHidden {
            rollFourLabel.text = dieNumber
            rollFourLabel.isHidden = false
        } else if rollFiveLabel.isHidden {
            rollFiveLabel.text = dieNumber
            rollFiveLabel.isHidden = false
        } else {
            rollSixLabel.isHidden = false
            rollSixLabel.text = dieNumber
        }
    }
    
    func hideAllScores(){
        rollOneLabel.isHidden = true
        rollTwoLabel.isHidden = true
        rollThreeLabel.isHidden = true
        rollFourLabel.isHidden = true
        rollFiveLabel.isHidden = true
        rollSixLabel.isHidden = true
        
    }






}
    



    




