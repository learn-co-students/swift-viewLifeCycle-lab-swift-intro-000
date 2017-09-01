//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    


  
    @IBOutlet weak var bg6: UIView!
    @IBOutlet weak var bg5: UIView!
    @IBOutlet weak var bg4: UIView!
    @IBOutlet weak var bg3: UIView!
    @IBOutlet weak var bg2: UIView!
    @IBOutlet weak var bg1: UIView!

    @IBOutlet weak var die6: UIView!
    @IBOutlet weak var die5: UIView!
    @IBOutlet weak var die4: UIView!
    @IBOutlet weak var die3: UIView!
    @IBOutlet weak var die2: UIView!
    @IBOutlet weak var die1: UIView!
    
  
    
    @IBAction func rollDice(_ sender: Any) {
        var roll: Int = randomDiceRoll()
        updateLabelWithRoll(roll: roll)
        //update the dies in one method
        //update the scores in another method
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        
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
        }else if labelFive.isHidden {
            labelFive.text = diceScore
            labelFive.isHidden = false
        }else if labelSix.isHidden {
            labelSix.text = diceScore
            labelSix.isHidden = false
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(UInt32(6)) + 1)
    }

}
