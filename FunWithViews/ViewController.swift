//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var final: UILabel!
    
    @IBOutlet weak var die1: UIView!
    
    @IBOutlet weak var die2: UIView!
    
    @IBOutlet weak var die3: UIView!
    
    @IBOutlet weak var die4: UIView!
    
    @IBOutlet weak var die5: UIView!
    
    @IBOutlet weak var die6: UIView!
    
    @IBOutlet weak var die7: UIView!
    
    @IBOutlet weak var first: UILabel!
    
    @IBOutlet weak var second: UILabel!
    
    @IBOutlet weak var third: UILabel!
    
    @IBOutlet weak var fourth: UILabel!
    
    @IBOutlet weak var fifth: UILabel!
    
    @IBOutlet weak var sixth: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let score:Int = randomDiceRoll()
        updateLabelWithRoll(roll: score)
        updateDie(score: score)
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    //updates label
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if first.isHidden {
            first.text = diceScore
            first.isHidden = false
        } else if second.isHidden {
            second.text = diceScore
            second.isHidden = false
        } else if third.isHidden {
            third.text = diceScore
            third.isHidden = false
        } else if fourth.isHidden {
            fourth.text = diceScore
            fourth.isHidden = false
        } else if fifth.isHidden {
            fifth.text = diceScore
            fifth.isHidden = false
        } else if sixth.isHidden {
            sixth.text = diceScore
            sixth.isHidden = false
        } else {
            first.text = diceScore
            second.text = " "
            second.isHidden = true
            third.text = " "
            third.isHidden = true
            fourth.text = " "
            fourth.isHidden = true
            fifth.text = " "
            fifth.isHidden = true
            sixth.text = " "
            sixth.isHidden = true
        }
        
    }
    
    //rearanges the die 
    func updateDie(score: Int){
        die1.isHidden = true
        die2.isHidden = true
        die3.isHidden = true
        die4.isHidden = true
        die5.isHidden = true
        die6.isHidden = true
        die7.isHidden = true
        
        switch score{
        case 1:
            die4.isHidden = false
        case 2:
            die1.isHidden = false
            die7.isHidden = false
        case 3:
            die1.isHidden = false
            die4.isHidden = false
            die7.isHidden = false
        case 4:
            die1.isHidden = false
            die3.isHidden = false
            die5.isHidden = false
            die7.isHidden = false
        case 5:
            die1.isHidden = false
            die3.isHidden = false
            die5.isHidden = false
            die7.isHidden = false
            die4.isHidden = false
        case 6:
            die1.isHidden = false
            die3.isHidden = false
            die5.isHidden = false
            die7.isHidden = false
            die2.isHidden = false
            die6.isHidden = false
        default:
            print("dice error")
        }
        
    }

}
