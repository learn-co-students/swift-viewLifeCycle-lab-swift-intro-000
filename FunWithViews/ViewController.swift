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
        
        diceLabel1.isHidden = true
        diceLabel2.isHidden = true
        diceLabel3.isHidden = true
        diceLabel4.isHidden = true
        diceLabel5.isHidden = true
        diceLabel6.isHidden = true
        diceLabel7.isHidden = true
        
        score1.isHidden = true
        score2.isHidden = true
        score3.isHidden = true
        score4.isHidden = true
        score5.isHidden = true
        score6.isHidden = true
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        func updateLabelWithRoll(roll: Int) -> Int {
            let diceScore = String(roll)
            
            if score1.isHidden {
                score1.text = diceScore
                score1.isHidden = false
                return roll
            } else if score2.isHidden {
                score2.text = diceScore
                score2.isHidden = false
                return roll
            } else if score3.isHidden {
                score3.text = diceScore
                score3.isHidden = false
                return roll
            } else if score4.isHidden {
                score4.text = diceScore
                score4.isHidden = false
                return roll
            } else if score5.isHidden {
                score5.text = diceScore
                score5.isHidden = false
                return roll
            } else if score6.isHidden {
                score6.text = diceScore
                score6.isHidden = false
                return roll
            } else {
                score1.text = "G"
                score2.text = "AM"
                score3.text = "E"
                score4.text = "O"
                score5.text = "VE"
                score6.text = "R"
                diceLabel1.isHidden = true
                diceLabel2.isHidden = true
                diceLabel3.isHidden = true
                diceLabel4.isHidden = true
                diceLabel5.isHidden = true
                diceLabel6.isHidden = true
                diceLabel7.isHidden = true

                return 7
            }
            
        }
        
        func rearrangeDie(roll: Int) {
            if roll == 1 {
                diceLabel1.isHidden = true
                diceLabel2.isHidden = true
                diceLabel3.isHidden = true
                diceLabel4.isHidden = false
                diceLabel5.isHidden = true
                diceLabel6.isHidden = true
                diceLabel7.isHidden = true
            } else if roll == 2 {
                diceLabel1.isHidden = false
                diceLabel2.isHidden = true
                diceLabel3.isHidden = true
                diceLabel4.isHidden = true
                diceLabel5.isHidden = true
                diceLabel6.isHidden = true
                diceLabel7.isHidden = false
            } else if roll == 3 {
                diceLabel1.isHidden = true
                diceLabel2.isHidden = false
                diceLabel3.isHidden = true
                diceLabel4.isHidden = false
                diceLabel5.isHidden = true
                diceLabel6.isHidden = false
                diceLabel7.isHidden = true
            } else if roll == 4 {
                diceLabel1.isHidden = false
                diceLabel2.isHidden = false
                diceLabel3.isHidden = true
                diceLabel4.isHidden = true
                diceLabel5.isHidden = true
                diceLabel6.isHidden = false
                diceLabel7.isHidden = false
            } else if roll == 5 {
                diceLabel1.isHidden = false
                diceLabel2.isHidden = false
                diceLabel3.isHidden = true
                diceLabel4.isHidden = false
                diceLabel5.isHidden = true
                diceLabel6.isHidden = false
                diceLabel7.isHidden = false
            } else if roll == 6 {
                diceLabel1.isHidden = false
                diceLabel2.isHidden = false
                diceLabel3.isHidden = false
                diceLabel4.isHidden = true
                diceLabel5.isHidden = false
                diceLabel6.isHidden = false
                diceLabel7.isHidden = false
            } else if roll == 7 {
                diceLabel1.isHidden = true
                diceLabel2.isHidden = true
                diceLabel3.isHidden = true
                diceLabel4.isHidden = true
                diceLabel5.isHidden = true
                diceLabel6.isHidden = true
                diceLabel7.isHidden = true
            }
        }
        
    let roll = updateLabelWithRoll(roll: randomDiceRoll())
        rearrangeDie(roll: roll)
    
        
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    @IBOutlet weak var diceLabel1: UIImageView!
    @IBOutlet weak var diceLabel2: UIImageView!
    @IBOutlet weak var diceLabel3: UIImageView!
    @IBOutlet weak var diceLabel4: UIImageView!
    @IBOutlet weak var diceLabel5: UIImageView!
    @IBOutlet weak var diceLabel6: UIImageView!
    @IBOutlet weak var diceLabel7: UIImageView!
    
    @IBOutlet weak var score1: UILabel!
    @IBOutlet weak var score2: UILabel!
    @IBOutlet weak var score3: UILabel!
    @IBOutlet weak var score4: UILabel!
    @IBOutlet weak var score5: UILabel!
    @IBOutlet weak var score6: UILabel!


}
