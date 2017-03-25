//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dice1: UIView!
    @IBOutlet weak var dice2: UIView!
    @IBOutlet weak var dice3: UIView!
    @IBOutlet weak var dice4: UIView!
    @IBOutlet weak var dice5: UIView!
    @IBOutlet weak var dice6: UIView!
    @IBOutlet weak var dice7: UIView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    
    @IBOutlet weak var rollButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resetBoard()
        resetLabels()
        
        resetButton.isHidden = true
        
    }
    
    func resetBoard() {
        dice1.isHidden = true
        dice2.isHidden = true
        dice3.isHidden = true
        dice4.isHidden = true
        dice5.isHidden = true
        dice6.isHidden = true
        dice7.isHidden = true
    }
    
    func resetLabels() {
        label1.isHidden = true
        label2.isHidden = true
        label3.isHidden = true
        label4.isHidden = true
        label5.isHidden = true
        label6.isHidden = true
    }
    
    func updateLabelWithRoll(roll: Int) {
        
        let diceRoll = String(roll)
        
        if label1.isHidden {
            label1.text = diceRoll
            label1.isHidden = false
        } else if label2.isHidden {
            label2.text = diceRoll
            label2.isHidden = false
        } else if label3.isHidden {
            label3.text = diceRoll
            label3.isHidden = false
        } else if label4.isHidden {
            label4.text = diceRoll
            label4.isHidden = false
        } else if label5.isHidden {
            label5.text = diceRoll
            label5.isHidden = false
        } else {
            label6.text = diceRoll
            label6.isHidden = false
        }
        
    }
    
    func updateBoardWithRoll(roll: Int) {
        
        switch roll {
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
            return
        }
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        // Disable button from being clicked since we're out of rolls, show reset button
        if !label5.isHidden {
            rollButton.isHidden = true
            resetButton.isHidden = false
            return;
        }
        
        let rollValue: Int = randomDiceRoll()
        
        resetBoard()
        updateLabelWithRoll(roll: rollValue)
        updateBoardWithRoll(roll: rollValue)
        
    }
    
    
    @IBAction func resetButtonTapped(_ sender: Any) {
        resetBoard()
        resetLabels()
        resetButton.isHidden = true
        rollButton.isHidden = false
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
