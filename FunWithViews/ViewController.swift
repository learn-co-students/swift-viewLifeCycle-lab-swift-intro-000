//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // black box outlets
    @IBOutlet weak var blackBox1: UIView!
    @IBOutlet weak var blackBox2: UIView!
    @IBOutlet weak var blackBox3: UIView!
    @IBOutlet weak var blackBox4: UIView!
    @IBOutlet weak var blackBox5: UIView!
    @IBOutlet weak var blackBox6: UIView!
    @IBOutlet weak var blackBox7: UIView!
    
    // label outlets
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // func for EZ reset of di face to hidden so each roll gets fresh start
        resetDiFace()
        
        // hide labels no func since only used once
        labelOne.isHidden = true
        labelTwo.isHidden = true
        labelThree.isHidden = true
        labelFour.isHidden = true
        labelFive.isHidden = true
        labelSix.isHidden = true
        
    }
    
   
   
    @IBAction func button(_ sender: Any) {
    
        var rollTheDice: Int
        rollTheDice = randomDiceRoll()
        
    updateLabelWithRoll(roll: rollTheDice)
    showDi(diValue: rollTheDice)
    
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
        
    }
    
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if labelOne.isHidden {
            labelOne.text = diceScore
            labelOne.isHidden = false
            
        } else if labelTwo.isHidden {
            labelTwo.text = diceScore
            labelTwo.isHidden = false
            
        } else if labelThree.isHidden {
            labelThree.text = diceScore
            labelThree.isHidden = false
            
        } else if labelFour.isHidden {
            labelFour.text = diceScore
            labelFour.isHidden = false
            
        } else if labelFive.isHidden {
            labelFive.text = diceScore
            labelFive.isHidden = false
            
        } else if labelSix.isHidden {
            labelSix.text = diceScore
            labelSix.isHidden = false
        } else {
            resetLabelRecorder()
        }

    }
        
    func showDi(diValue:Int) {
        resetDiFace()
    
    
        switch true {
        case diValue == 1:
            blackBox7.isHidden = false
        case diValue == 2:
            blackBox1.isHidden = false
            blackBox6.isHidden = false
        case diValue == 3:
            blackBox3.isHidden = false
            blackBox4.isHidden = false
            blackBox7.isHidden = false
        case diValue == 4:
            blackBox1.isHidden = false
            blackBox3.isHidden = false
            blackBox4.isHidden = false
            blackBox6.isHidden = false
        case diValue == 5:
            blackBox1.isHidden = false
            blackBox3.isHidden = false
            blackBox4.isHidden = false
            blackBox6.isHidden = false
            blackBox7.isHidden = false
        case diValue == 6:
            blackBox1.isHidden = false
            blackBox2.isHidden = false
            blackBox3.isHidden = false
            blackBox4.isHidden = false
            blackBox5.isHidden = false
            blackBox6.isHidden = false
        default:
            resetDiFace()
        }
    }
    
    // func for EZ reset of di face to hidden
    func resetDiFace() {
        blackBox1.isHidden = true
        blackBox2.isHidden = true
        blackBox3.isHidden = true
        blackBox4.isHidden = true
        blackBox5.isHidden = true
        blackBox6.isHidden = true
        blackBox7.isHidden = true
    }
    
    func resetLabelRecorder() {
        labelOne.isHidden = true
        labelTwo.isHidden = true
        labelThree.isHidden = true
        labelFour.isHidden = true
        labelFive.isHidden = true
        labelSix.isHidden = true
    }
}
        

        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    

       

        
        
