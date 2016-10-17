//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var view1: UIView!
    
    
    
    @IBOutlet weak var view2: UIView!
    
    
    @IBOutlet weak var view3: UIView!
    
    
    @IBOutlet weak var view4: UIView!
    
    
    @IBOutlet weak var view5: UIView!
    
  
    
    @IBOutlet weak var view6: UIView!

    @IBOutlet weak var view7: UIView!
    
    @IBOutlet weak var die1: UIView!
    
    @IBOutlet weak var die2: UIView!
    
    @IBOutlet weak var die3: UIView!
    
    
    @IBOutlet weak var die4: UIView!
    
    @IBOutlet weak var die5: UIView!
    
    
    @IBOutlet weak var die6: UIView!
    
    
    override func viewDidLoad() {
        
        
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        view7.isHidden = true
        die1.isHidden = true
        die2.isHidden = true
        die3.isHidden = true
        die4.isHidden = true
        die5.isHidden = true
        die6.isHidden = true
        

    
        
        super.viewDidLoad()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        func updateLabelWithRoll(roll: Int) {
            
            let diceScore = String(roll)
            
            if labelOne.ishidden {
                labelOne.text = diceScore
                labelOne.hidden = false
            } else if labelTwo.hidden {
                labelTwo.text = diceScore
                labelTwo.hidden = false
            } else if labelThree.hidden {
                labelThree.text = diceScore
                labelThree.hidden = false
            }
            else if labelFour.hidden {
                labelFour.text = diceScore
                labelFour.hidden = false
            }
            else if labelFive.hidden {
                labelFive.text = diceScore
                labelFive.hidden = false
            } else  labelSix.hidden {
                labelSix.text = diceScore
                labelSix.hidden = false
            }
        
    }
    
    
    
    
    }
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    
    
    
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
