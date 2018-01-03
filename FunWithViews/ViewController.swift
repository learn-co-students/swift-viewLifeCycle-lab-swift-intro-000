//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topLeft: UIView!
    
    @IBOutlet weak var midLeft: UIView!
    
    @IBOutlet weak var lowLeft: UIView!
    
    @IBOutlet weak var topRight: UIView!
    
    @IBOutlet weak var midRight: UIView!
    
    @IBOutlet weak var lowRight: UIView!
    
    @IBOutlet weak var middle: UIView!
    
    @IBOutlet weak var dice1: UILabel!
    
    @IBOutlet weak var dice1box: UIView!
    @IBOutlet weak var dice2: UILabel!
    
    @IBOutlet weak var dice2box: UIView!
    @IBOutlet weak var dice3: UILabel!
    
    @IBOutlet weak var dice3box: UIView!
    @IBOutlet weak var dice4: UILabel!
    
    @IBOutlet weak var dice4box: UIView!
    @IBOutlet weak var dice5: UILabel!
    
    @IBOutlet weak var dice5box: UIView!
    @IBOutlet weak var dice6: UILabel!
    
    @IBOutlet weak var dice6box: UIView!
    
    func diceHide() {
        topLeft.isHidden = true
        midLeft.isHidden = true
        lowLeft.isHidden = true
        topRight.isHidden = true
        midRight.isHidden = true
        lowRight.isHidden = true
        middle.isHidden = true
    }
    
    @IBAction func diceButton(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    
    
        diceHide()
    
        dice1box.isHidden = true
        dice2box.isHidden = true
        dice3box.isHidden = true
        dice4box.isHidden = true
        dice5box.isHidden = true
    
        dice1.isHidden = true
        dice2.isHidden = true
        dice3.isHidden = true
        dice4.isHidden = true
        dice5.isHidden = true
        dice6.isHidden = true
    
    }
        
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
    
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

    func rearrangeDice(diceScore: Int) {
        
        diceHide()
        
        if diceScore == 1{
            middle.isHidden = false
        } else if diceScore == 2 {
            topLeft.isHidden = false
            middle.isHidden = false
        } else if diceScore == 3 {
            midLeft.isHidden = false
            middle.isHidden = false
            midRight.isHidden = false
        } else if diceScore == 4 {
            topLeft.isHidden = false
            topRight.isHidden = false
            lowLeft.isHidden = false
            lowRight.isHidden = false
        } else if diceScore == 5 {
            topLeft.isHidden = false
            topRight.isHidden = false
            lowLeft.isHidden = false
            lowRight.isHidden = false
            middle.isHidden = false
        } else if diceScore == 6 {
            topLeft.isHidden = false
            topRight.isHidden = false
            lowLeft.isHidden = false
            lowRight.isHidden = false
            midLeft.isHidden = false
            midRight.isHidden = false
        }
    }
    
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if dice1.isHidden {
            dice1.text = diceScore
            dice1.isHidden = false
        } else if dice2.isHidden {
            dice2.text = diceScore
            dice2.isHidden = false
        } else if dice3.isHidden {
            dice3.text = diceScore
            dice3.isHidden = false
        } else if dice4.isHidden {
            dice4.text = diceScore
            dice4.isHidden = false
        } else if dice5.isHidden {
            dice5.text = diceScore
            dice5.isHidden = false
        } else if dice6.isHidden {
            dice6.text = diceScore
            dice6.isHidden = false
        } else {
            
            viewDidLoad()
        }
        
    }
}

