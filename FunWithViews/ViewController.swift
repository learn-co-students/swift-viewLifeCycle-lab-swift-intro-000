//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var blackBox1: UIView!
    @IBOutlet weak var blackBox2: UIView!
    @IBOutlet weak var blackBox3: UIView!
    @IBOutlet weak var blackBox4: UIView!
    @IBOutlet weak var blackBox5: UIView!
    @IBOutlet weak var blackBox6: UIView!
    @IBOutlet weak var blackBox7: UIView!
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var purpleView: UIView!
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    
    override func viewDidLoad() {
        blackBox1.isHidden = true
        blackBox2.isHidden = true
        blackBox3.isHidden = true
        blackBox4.isHidden = true
        blackBox5.isHidden = true
        blackBox6.isHidden = true
        blackBox7.isHidden = true
        
        redView.isHidden = true
        orangeView.isHidden = true
        yellowView.isHidden = true
        greenView.isHidden = true
        blueView.isHidden = true
        purpleView.isHidden = true
        
        
        super.viewDidLoad()
    }
  
    var order = 0
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        if order>5 {
        order -= 6
            redView.isHidden = true
            orangeView.isHidden = true
            yellowView.isHidden = true
            greenView.isHidden = true
            blueView.isHidden = true
            purpleView.isHidden = true
            
        }
        let roll = randomDiceRoll()
        order += 1
        updateLabelWithRoll(roll: roll)
        updateScore(order: order)
        rearrangeDie(roll: roll)
        
    }

    func rearrangeDie(roll: Int) {
        switch roll {
        case 1:
            blackBox1.isHidden = true
            blackBox2.isHidden = true
            blackBox3.isHidden = true
            blackBox4.isHidden = false
            blackBox5.isHidden = true
            blackBox6.isHidden = true
            blackBox7.isHidden = true
        case 2:
            blackBox1.isHidden = false
            blackBox2.isHidden = true
            blackBox3.isHidden = true
            blackBox4.isHidden = true
            blackBox5.isHidden = true
            blackBox6.isHidden = true
            blackBox7.isHidden = false
        case 3:
            blackBox1.isHidden = false
            blackBox2.isHidden = true
            blackBox3.isHidden = true
            blackBox4.isHidden = false
            blackBox5.isHidden = true
            blackBox6.isHidden = true
            blackBox7.isHidden = false
        case 4:
            blackBox1.isHidden = false
            blackBox2.isHidden = true
            blackBox3.isHidden = false
            blackBox4.isHidden = true
            blackBox5.isHidden = false
            blackBox6.isHidden = true
            blackBox7.isHidden = false
        case 5:
            blackBox1.isHidden = false
            blackBox2.isHidden = true
            blackBox3.isHidden = false
            blackBox4.isHidden = false
            blackBox5.isHidden = false
            blackBox6.isHidden = true
            blackBox7.isHidden = false
        case 6:
            blackBox1.isHidden = false
            blackBox2.isHidden = false
            blackBox3.isHidden = false
            blackBox4.isHidden = true
            blackBox5.isHidden = false
            blackBox6.isHidden = false
            blackBox7.isHidden = false
        default:
            blackBox1.isHidden = true
            blackBox2.isHidden = true
            blackBox3.isHidden = true
            blackBox4.isHidden = true
            blackBox5.isHidden = true
            blackBox6.isHidden = true
            blackBox7.isHidden = true
            
        }
    }
    
    func updateScore(order: Int) {
        
        switch order {
        case 1:
            redView.isHidden = false
        case 2:
            orangeView.isHidden = false
        case 3:
            yellowView.isHidden = false
        case 4:
            greenView.isHidden = false
        case 5:
            blueView.isHidden = false
        case 6:
            purpleView.isHidden = false
        default:
            redView.isHidden = false
        }
        
}

    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if redView.isHidden {
            labelOne.text = diceScore
            labelOne.isHidden = false
        } else if orangeView.isHidden {
            labelTwo.text = diceScore
            labelTwo.isHidden = false
        } else if yellowView.isHidden {
            labelThree.text = diceScore
            labelThree.isHidden = false
        } else if greenView.isHidden {
            labelFour.text = diceScore
            labelFour.isHidden = false
        } else if blueView.isHidden {
            labelFive.text = diceScore
            labelFive.isHidden = false
        } else if purpleView.isHidden {
            labelSix.text = diceScore
            labelSix.isHidden = false
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
