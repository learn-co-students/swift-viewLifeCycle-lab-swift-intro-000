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
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        square1.isHidden = true
        square2.isHidden = true
        square3.isHidden = true
        square4.isHidden = true
        square5.isHidden = true
        square6.isHidden = true
        square7.isHidden = true
        
        labelOne.isHidden = true
        labelTwo.isHidden = true
        labelThree.isHidden = true
        labelFour.isHidden = true
        labelFive.isHidden = true
        labelSix.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        let roll = randomDiceRoll()
        updateLabelWithRoll(roll: roll)
        
        if roll == 1 {
            square1.isHidden = true
            square2.isHidden = true
            square3.isHidden = true
            square4.isHidden = false
            square5.isHidden = true
            square6.isHidden = true
            square7.isHidden = true
        }
        if roll == 2 {
            square1.isHidden = false
            square2.isHidden = true
            square3.isHidden = true
            square4.isHidden = true
            square5.isHidden = true
            square6.isHidden = true
            square7.isHidden = false
        }
        
        if roll == 3 {
            square1.isHidden = true
            square2.isHidden = false
            square3.isHidden = true
            square4.isHidden = false
            square5.isHidden = true
            square6.isHidden = false
            square7.isHidden = true
        }
        if roll == 4 {
            square1.isHidden = false
            square2.isHidden = false
            square3.isHidden = true
            square4.isHidden = true
            square5.isHidden = true
            square6.isHidden = false
            square7.isHidden = false
        }
        
        if roll == 5 {
            square1.isHidden = false
            square2.isHidden = false
            square3.isHidden = true
            square4.isHidden = false
            square5.isHidden = true
            square6.isHidden = false
            square7.isHidden = false
        }
        if roll == 6 {
            square1.isHidden = false
            square2.isHidden = false
            square3.isHidden = false
            square4.isHidden = true
            square5.isHidden = false
            square6.isHidden = false
            square7.isHidden = false
        }
        
        
 
        
        
        
        
        
        
    
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
        }
        
        
    }

}
