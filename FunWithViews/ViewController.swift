//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dieRoll1: UILabel!
    @IBOutlet weak var dieRoll2: UILabel!
    @IBOutlet weak var dieRoll3: UILabel!
    @IBOutlet weak var dieRoll4: UILabel!
    @IBOutlet weak var dieRoll5: UILabel!
    @IBOutlet weak var dieRoll6: UILabel!
    @IBOutlet weak var rollsFinished: UILabel!
    
    @IBOutlet weak var die1: UIView!
    @IBOutlet weak var die2: UIView!
    @IBOutlet weak var die3: UIView!
    @IBOutlet weak var die4: UIView!
    @IBOutlet weak var die5: UIView!
    @IBOutlet weak var die6: UIView!
    @IBOutlet weak var die7: UIView!
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    
    var timesRolled = 0
    
    @IBAction func tappedRollTheDie(_ sender: UIButton) {
        
        timesRolled += 1
        
        let randomRoll = randomDiceRoll()
        let updated = updateScore(roll: randomRoll)
        if timesRolled <= 6 {
            rearrangeDie(score: updated)
        } else {
            rollsFinished.text = "That's a wrap!  All 6 rolls are completed"
        }
    }
    override func viewDidLoad() {
        die1.isHidden = true
        die2.isHidden = true
        die3.isHidden = true
        die4.isHidden = true
        die5.isHidden = true
        die6.isHidden = true
        die7.isHidden = true
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        super.viewDidLoad()
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    // Updates label with each roll
    func updateScore(roll: Int) -> String {
        
        let diceScore = String(roll)
        
        if view1.isHidden {
            dieRoll1.text = diceScore
            view1.isHidden = false
        } else if view2.isHidden {
            dieRoll2.text = diceScore
            view2.isHidden = false
        } else if view3.isHidden {
            dieRoll3.text = diceScore
            view3.isHidden = false
        } else if view4.isHidden {
            dieRoll4.text = diceScore
            view4.isHidden = false
        } else if view5.isHidden {
            dieRoll5.text = diceScore
            view5.isHidden = false
        } else if view6.isHidden {
            dieRoll6.text = diceScore
            view6.isHidden = false
        }
        return diceScore
    }
    
    // Rearrange the Black Die
    func rearrangeDie(score: String) {
        
        // Reset all Die to hidden mode
        die1.isHidden = true
        die2.isHidden = true
        die3.isHidden = true
        die4.isHidden = true
        die5.isHidden = true
        die6.isHidden = true
        die7.isHidden = true
        
        if score == "1" {
            die4.isHidden = false
        } else if score == "2" {
            die3.isHidden = false
            die5.isHidden = false
        } else if score == "3" {
            die3.isHidden = false
            die4.isHidden = false
            die5.isHidden = false
        } else if score == "4" {
            die1.isHidden = false
            die3.isHidden = false
            die5.isHidden = false
            die7.isHidden = false
        } else if score == "5" {
            die1.isHidden = false
            die3.isHidden = false
            die4.isHidden = false
            die5.isHidden = false
            die7.isHidden = false
        } else if score == "6" {
            die1.isHidden = false
            die2.isHidden = false
            die3.isHidden = false
            die5.isHidden = false
            die6.isHidden = false
            die7.isHidden = false
        }
    }

}
