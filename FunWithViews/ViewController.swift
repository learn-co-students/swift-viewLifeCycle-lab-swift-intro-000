//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dice1: UIView?
    @IBOutlet weak var dice2: UIView?
    @IBOutlet weak var dice3: UIView?
    @IBOutlet weak var dice4: UIView?
    @IBOutlet weak var dice5: UIView?
    @IBOutlet weak var dice6: UIView?
    @IBOutlet weak var dice7: UIView?

    @IBOutlet weak var score1: UILabel?
    @IBOutlet weak var score2: UILabel?
    @IBOutlet weak var score3: UILabel?
    @IBOutlet weak var score4: UILabel?
    @IBOutlet weak var score5: UILabel?
    @IBOutlet weak var score6: UILabel?

    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resetDice()
        resetScore()
        
    }
    
    func resetDice() {
        for v: UIView in self.view.subviews {
            if v.tag == 11 {
                v.isHidden = true
            }
        }
    }
    func resetScore() {
        for v: UIView in self.view.subviews {
            if v.tag == 10 {
                v.isHidden = true
            }
        }
    }

    
    
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let score = randomDiceRoll()
        resetDice()
        updateViews(score: score)
    }
    
    func updateViews(score: Int) {
        rearrangeDie(roll: score)
        updateLabelWithRoll(roll: score)
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

    
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if score1!.isHidden {
            score1?.text = diceScore
            score1?.isHidden = false
        } else if score2!.isHidden {
            score2?.text = diceScore
            score2?.isHidden = false
        } else if score3!.isHidden {
            score3?.text = diceScore
            score3?.isHidden = false
        } else if (score4?.isHidden)! {
            score4?.text = diceScore
            score4?.isHidden = false
        } else if (score5?.isHidden)! {
            score5?.text = diceScore
            score5?.isHidden = false
        } else if (score6?.isHidden)! {
            score6?.text = diceScore
            score6?.isHidden = false
        } else {
            resetDice()
            resetScore()
            updateViews(score: roll)
        }
        
        // .. and so on
    }
    
    func rearrangeDie(roll: Int) {
        
        switch roll {
        case 1:
            dice4?.isHidden = false
        case 2:
            dice1?.isHidden = false
            dice7?.isHidden = false
        case 3:
            dice2?.isHidden = false
            dice4?.isHidden = false
            dice6?.isHidden = false
        case 4:
            dice1?.isHidden = false
            dice2?.isHidden = false
            dice6?.isHidden = false
            dice7?.isHidden = false

        case 5:
            dice4?.isHidden = false
            dice1?.isHidden = false
            dice2?.isHidden = false
            dice6?.isHidden = false
            dice7?.isHidden = false
        case 6:
            dice6?.isHidden = false
            dice3?.isHidden = false
            dice1?.isHidden = false
            dice2?.isHidden = false
            dice5?.isHidden = false
            dice7?.isHidden = false
        default: break
            
        }
    }
   
   
}
