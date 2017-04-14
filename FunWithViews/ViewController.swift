//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //dice-squares
    //left-middle-right
    @IBOutlet weak var diceL1: UIView!
    @IBOutlet weak var diceL2: UIView!
    @IBOutlet weak var diceL3: UIView!
    
    @IBOutlet weak var diceM: UIView!
    
    @IBOutlet weak var diceR1: UIView!
    @IBOutlet weak var diceR2: UIView!
    @IBOutlet weak var diceR3: UIView!
    
    //color-labels
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceL1.isHidden = true
        diceL2.isHidden = true
        diceL3.isHidden = true
        diceM.isHidden = true
        diceR1.isHidden = true
        diceR2.isHidden = true
        diceR3.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let roll = randomDiceRoll()
        hideDice()
        updateScore(roll: roll)
        rearrangeDie(roll: roll)
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    // Updates the score
    func updateScore(roll: Int) {
        let diceScore = String(roll)
        
        if label1.isHidden {
            label1.text = diceScore
            label1.isHidden = false
        } else if label2.isHidden {
            label2.text = diceScore
            label2.isHidden = false
        } else if label3.isHidden {
            label3.text = diceScore
            label3.isHidden = false
        } else if label4.isHidden {
            label4.text = diceScore
            label4.isHidden = false
        } else if label5.isHidden {
            label5.text = diceScore
            label5.isHidden = false
        } else if label6.isHidden {
            label6.text = diceScore
            label6.isHidden = false
        } else {
            label1.text = diceScore
            label1.isHidden = false
            label2.isHidden = true
            label3.isHidden = true
            label4.isHidden = true
            label5.isHidden = true
            label6.isHidden = true
        }
        
        
    }
    
    
    func rearrangeDie(roll: Int) {
        switch roll {
        case 1:
            diceM.isHidden = false
        case 2:
            diceL2.isHidden = false
            diceR2.isHidden = false
        case 3:
            diceL1.isHidden = false
            diceM.isHidden = false
            diceR3.isHidden = false
        case 4:
            diceL1.isHidden = false
            diceL3.isHidden = false
            diceR1.isHidden = false
            diceR3.isHidden = false
        case 5:
            diceL1.isHidden = false
            diceL3.isHidden = false
            diceM.isHidden = false
            diceR1.isHidden = false
            diceR3.isHidden = false
        case 6:
            diceL1.isHidden = false
            diceL2.isHidden = false
            diceL3.isHidden = false
            diceR1.isHidden = false
            diceR2.isHidden = false
            diceR3.isHidden = false
        default:
            diceL1.isHidden = true
            diceL2.isHidden = true
            diceL3.isHidden = true
            diceM.isHidden = true
            diceR1.isHidden = true
            diceR2.isHidden = true
            diceR3.isHidden = true
        }
    }
    
    
    // Hides the dice views
    func hideDice() {
        diceL1.isHidden = true
        diceL2.isHidden = true
        diceL3.isHidden = true
        diceM.isHidden = true
        diceR1.isHidden = true
        diceR2.isHidden = true
        diceR3.isHidden = true
    }
}
