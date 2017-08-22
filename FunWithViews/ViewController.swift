//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Dice1: UIView!
    @IBOutlet weak var Dice2: UIView!
    @IBOutlet weak var Dice3: UIView!
    @IBOutlet weak var Dice4: UIView!
    @IBOutlet weak var Dice5: UIView!
    @IBOutlet weak var Dice6: UIView!
    @IBOutlet weak var Dice7: UIView!
    
    @IBOutlet weak var TrialBox1: UIView!
    @IBOutlet weak var Trial1: UILabel!
    
    @IBOutlet weak var TrialBox2: UIView!
    @IBOutlet weak var Trial2: UILabel!
    
    @IBOutlet weak var TrialBox3: UIView!
    @IBOutlet weak var Trial3: UILabel!
    
    @IBOutlet weak var TrialBox4: UIView!
    @IBOutlet weak var Trial4: UILabel!
    
    @IBOutlet weak var TrialBox5: UIView!
    @IBOutlet weak var Trial5: UILabel!
    
    @IBOutlet weak var TrialBox6: UIView!
    @IBOutlet weak var Trial6: UILabel!
    
    func diceHide() {
        
        Dice1.isHidden = true
        Dice2.isHidden = true
        Dice3.isHidden = true
        Dice4.isHidden = true
        Dice5.isHidden = true
        Dice6.isHidden = true
        Dice7.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        diceHide()
        
        TrialBox1.isHidden = true
        TrialBox2.isHidden = true
        TrialBox3.isHidden = true
        TrialBox4.isHidden = true
        TrialBox5.isHidden = true
        TrialBox6.isHidden = true
        
        Trial1.isHidden = true
        Trial2.isHidden = true
        Trial3.isHidden = true
        Trial4.isHidden = true
        Trial5.isHidden = true
        Trial6.isHidden = true
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        let diceScoreA = randomDiceRoll()
        rearrangeDice(diceScore: diceScoreA)
        updateScores(diceScore: diceScoreA)
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func rearrangeDice(diceScore: Int){
        
        diceHide()
        
        if diceScore == 1 {
            Dice4.isHidden = false
          
        } else if diceScore == 2 {
            Dice1.isHidden = false
            Dice7.isHidden = false
           
        } else if diceScore == 3 {
            Dice3.isHidden = false
            Dice4.isHidden = false
            Dice5.isHidden = false
         
        } else if diceScore == 4 {
            Dice1.isHidden = false
            Dice3.isHidden = false
            Dice5.isHidden = false
            Dice7.isHidden = false
        
        } else if diceScore == 5 {
            Dice1.isHidden = false
            Dice7.isHidden = false
            Dice3.isHidden = false
            Dice4.isHidden = false
            Dice5.isHidden = false
    
            
        } else if diceScore == 6 {
            Dice1.isHidden = false
            Dice2.isHidden = false
            Dice3.isHidden = false
            Dice5.isHidden = false
            Dice6.isHidden = false
            Dice7.isHidden = false
          
        }
        
        
    }
    func updateScores(diceScore: Int){
        
        if Trial1.isHidden {
            TrialBox1.isHidden = false
            Trial1.isHidden = false
            Trial1.text = String(diceScore)
        } else if Trial2.isHidden {
            TrialBox2.isHidden = false
            Trial2.isHidden = false
            Trial2.text = String(diceScore)
        } else if Trial3.isHidden {
            TrialBox3.isHidden = false
            Trial3.isHidden = false
            Trial3.text = String(diceScore)
        }  else if Trial4.isHidden {
            TrialBox4.isHidden = false
            Trial4.isHidden = false
            Trial4.text = String(diceScore)
        }
        else if Trial5.isHidden {
            TrialBox5.isHidden = false
            Trial5.isHidden = false
            Trial5.text = String(diceScore)
        }
        else if Trial6.isHidden {
            TrialBox6.isHidden = false
            Trial6.isHidden = false
            Trial6.text = String(diceScore)
        } else {
            
            viewDidLoad()
        }
        
    }
}

