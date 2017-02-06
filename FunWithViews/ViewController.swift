//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var roll1: UILabel!
    @IBOutlet weak var roll2: UILabel!
    @IBOutlet weak var roll3: UILabel!
    @IBOutlet weak var roll4: UILabel!
    @IBOutlet weak var roll5: UILabel!
    @IBOutlet weak var roll6: UILabel!
    
    @IBOutlet weak var topLeft: UIView!
    @IBOutlet weak var topRight: UIView!
    @IBOutlet weak var middleLeft: UIView!
    @IBOutlet weak var middle: UIView!
    @IBOutlet weak var middleRight: UIView!
    @IBOutlet weak var bottomLeft: UIView!
    @IBOutlet weak var bottomRight: UIView!
    
    @IBOutlet weak var label1: UIView!
    @IBOutlet weak var label2: UIView!
    @IBOutlet weak var label3: UIView!
    @IBOutlet weak var label4: UIView!
    @IBOutlet weak var label5: UIView!
    @IBOutlet weak var label6: UIView!
    
    var numberOfRolls = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideDice()
        hideScores()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        hideDice()
        numberOfRolls += 1
        if numberOfRolls > 6 {
            hideScores()
            numberOfRolls = 1
        }
        let roll = randomDiceRoll()
        showDice(dice: roll)
        showScore(dice: roll)
        
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    // Hide all dice objects
    func hideDice(){
        topLeft.isHidden = true
        topRight.isHidden = true
        middleLeft.isHidden = true
        middle.isHidden = true
        middleRight.isHidden = true
        bottomLeft.isHidden = true
        bottomRight.isHidden = true
    }
    
    // Hide all score boxes
    func hideScores(){
        //roll1.isHidden = true
        //roll2.isHidden = true
        //roll3.isHidden = true
        //roll4.isHidden = true
        //roll5.isHidden = true
        //roll6.isHidden = true
        label1.isHidden = true
        label2.isHidden = true
        label3.isHidden = true
        label4.isHidden = true
        label5.isHidden = true
        label6.isHidden = true
    }
    
    func showDice(dice: Int){
        switch dice {
        case 1: middle.isHidden = false
            
        case 2:
            topLeft.isHidden = false
            bottomRight.isHidden = false
            
        case 3:
            topLeft.isHidden = false
            middle.isHidden = false
            bottomRight.isHidden = false
            
        case 4:
            topLeft.isHidden = false
            topRight.isHidden = false
            bottomLeft.isHidden = false
            bottomRight.isHidden = false
            
        case 5:
            topLeft.isHidden = false
            topRight.isHidden = false
            middle.isHidden = false
            bottomLeft.isHidden = false
            bottomRight.isHidden = false
            
        case 6:
            topLeft.isHidden = false
            middleLeft.isHidden = false
            topRight.isHidden = false
            middleRight.isHidden = false
            bottomLeft.isHidden = false
            bottomRight.isHidden = false
            
        default:
            return
        }
    }
    
    func showScore(dice: Int){
        switch numberOfRolls {
        case 1:
            roll1.text = String(dice)
            label1.isHidden = false
            
        case 2:
            roll2.text = String(dice)
            label2.isHidden = false
            
        case 3:
            roll3.text = String(dice)
            label3.isHidden = false
            
        case 4:
            roll4.text = String(dice)
            label4.isHidden = false
            
        case 5:
            roll5.text = String(dice)
            label5.isHidden = false
            
        case 6:
            roll6.text = String(dice)
            label6.isHidden = false
            
        default: return
        }
    }

}
