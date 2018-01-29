//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var square1: UIView!
    @IBOutlet weak var square2: UIView!
    @IBOutlet weak var square3: UIView!
    @IBOutlet weak var square4: UIView!
    @IBOutlet weak var square5: UIView!
    @IBOutlet weak var square6: UIView!
    @IBOutlet weak var square7: UIView!
    @IBOutlet weak var score1: UILabel!
    @IBOutlet weak var score2: UILabel!
    @IBOutlet weak var score3: UILabel!
    @IBOutlet weak var score4: UILabel!
    @IBOutlet weak var score5: UILabel!
    @IBOutlet weak var score6: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        square1.isHidden = true
        square2.isHidden = true
        square3.isHidden = true
        square4.isHidden = true
        square5.isHidden = true
        square6.isHidden = true
        square7.isHidden = true
        score1.isHidden = true
        score2.isHidden = true
        score3.isHidden = true
        score4.isHidden = true
        score5.isHidden = true
        score6.isHidden = true
    }
    
    @IBAction func diceRoller(_ sender: Any) {
        let rolledNumber = randomDiceRoll()
        updateDiceView(roll: rolledNumber)
        updateLabelWithRoll(roll: rolledNumber)
    }
    
    func updateDiceView(roll: Int) {
        switch roll {
        case 1:
            square1.isHidden = true
            square2.isHidden = true
            square3.isHidden = true
            square4.isHidden = false
            square5.isHidden = true
            square6.isHidden = true
            square7.isHidden = true
        case 2:
            square1.isHidden = true
            square2.isHidden = false
            square3.isHidden = true
            square4.isHidden = true
            square5.isHidden = true
            square6.isHidden = false
            square7.isHidden = true
        case 3:
            square1.isHidden = true
            square2.isHidden = false
            square3.isHidden = true
            square4.isHidden = false
            square5.isHidden = true
            square6.isHidden = false
            square7.isHidden = true
        case 4:
            square1.isHidden = false
            square2.isHidden = false
            square3.isHidden = true
            square4.isHidden = true
            square5.isHidden = true
            square6.isHidden = false
            square7.isHidden = false
        case 5:
            square1.isHidden = false
            square2.isHidden = false
            square3.isHidden = true
            square4.isHidden = false
            square5.isHidden = true
            square6.isHidden = false
            square7.isHidden = false
        case 6:
            square1.isHidden = false
            square2.isHidden = false
            square3.isHidden = false
            square4.isHidden = true
            square5.isHidden = false
            square6.isHidden = false
            square7.isHidden = false
        default:
            square1.isHidden = true
            square2.isHidden = true
            square3.isHidden = true
            square4.isHidden = true
            square5.isHidden = true
            square6.isHidden = true
            square7.isHidden = true
        }
    }
    
    func updateLabelWithRoll(roll: Int) {
        let diceScore = String(roll)
        
        if score1.isHidden {
            score1.text = diceScore
            score1.isHidden = false
        } else if score2.isHidden {
            score2.text = diceScore
            score2.isHidden = false
        } else if score2.isHidden {
            score2.text = diceScore
            score2.isHidden = false
        } else if score3.isHidden {
            score3.text = diceScore
            score3.isHidden = false
        } else if score4.isHidden {
            score4.text = diceScore
            score4.isHidden = false
        } else if score5.isHidden {
            score5.text = diceScore
            score5.isHidden = false
        } else if score6.isHidden {
            score6.text = diceScore
            score6.isHidden = false
        } else {
            score2.isHidden = true
            score3.isHidden = true
            score4.isHidden = true
            score5.isHidden = true
            score6.isHidden = true
            score1.text = diceScore
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
