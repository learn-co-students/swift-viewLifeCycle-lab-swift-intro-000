//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var box1: UIView!
    @IBOutlet weak var box2: UIView!
    @IBOutlet weak var box3: UIView!
    @IBOutlet weak var box4: UIView!
    @IBOutlet weak var box5: UIView!
    @IBOutlet weak var box6: UIView!
    @IBOutlet weak var box7: UIView!
    
    @IBOutlet weak var score1: UILabel!
    @IBOutlet weak var score2: UILabel!
    @IBOutlet weak var score3: UILabel!
    @IBOutlet weak var score4: UILabel!
    @IBOutlet weak var score5: UILabel!
    @IBOutlet weak var score6: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        box1.isHidden = true
        box2.isHidden = true
        box3.isHidden = true
        box4.isHidden = true
        box5.isHidden = true
        box6.isHidden = true
        box7.isHidden = true
        
        score1.isHidden = true
        score2.isHidden = true
        score3.isHidden = true
        score4.isHidden = true
        score5.isHidden = true
        score6.isHidden = true        
    }
    

    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        func updateLabelWithRoll(roll: Int) {
            showDice(roll: 0)
            let diceScore = String(roll)
            
            if score1.isHidden {
                score1.text = diceScore
                score1.isHidden = false
                showDice(roll: roll)
            } else if score2.isHidden {
                score2.text = diceScore
                score2.isHidden = false
                showDice(roll: roll)
            } else if score3.isHidden {
                score3.text = diceScore
                score3.isHidden = false
                showDice(roll: roll)
            } else if score4.isHidden {
                score4.text = diceScore
                score4.isHidden = false
                showDice(roll: roll)
            } else if score5.isHidden {
                score5.text = diceScore
                score5.isHidden = false
                showDice(roll: roll)
            } else if score6.isHidden {
                score6.text = diceScore
                score6.isHidden = false
                showDice(roll: roll)
            } else {
                resetScore()
                showDice(roll: 0)
            }
            
    }
        
        // Returns back a random Int (1, 2, 3, 4, 5, or 6)
        func randomDiceRoll() -> Int {
            return Int(arc4random_uniform(6) + 1)
        }
        
        func resetScore(){
            score1.isHidden = true
            score1.text = "0"
            score2.isHidden = true
            score2.text = "0"
            score3.isHidden = true
            score3.text = "0"
            score4.isHidden = true
            score4.text = "0"
            score5.isHidden = true
            score5.text = "0"
            score6.isHidden = true
            score6.text = "0"
        }
        
        func showDice(roll:Int) {
            switch roll {
            case 1:
                box4.isHidden = false
            case 2:
                box1.isHidden = false
                box7.isHidden = false
            case 3:
                box1.isHidden = false
                box4.isHidden = false
                box7.isHidden = false
            case 4:
                box1.isHidden = false
                box2.isHidden = false
                box6.isHidden = false
                box7.isHidden = false
            case 5:
                box1.isHidden = false
                box2.isHidden = false
                box4.isHidden = false
                box6.isHidden = false
                box7.isHidden = false
            case 6:
                box1.isHidden = false
                box2.isHidden = false
                box3.isHidden = false
                box5.isHidden = false
                box6.isHidden = false
                box7.isHidden = false
            default:
                box1.isHidden = true
                box2.isHidden = true
                box3.isHidden = true
                box4.isHidden = true
                box5.isHidden = true
                box6.isHidden = true
                box7.isHidden = true
            }
        }
        
        updateLabelWithRoll(roll: randomDiceRoll())

}
}
