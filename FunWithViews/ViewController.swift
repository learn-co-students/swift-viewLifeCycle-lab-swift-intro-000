//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var roll = randomDiceRoll
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!
    @IBOutlet weak var L1: UILabel!
    @IBOutlet weak var L2: UILabel!
    @IBOutlet weak var L3: UILabel!
    @IBOutlet weak var L4: UILabel!
    @IBOutlet weak var L5: UILabel!
    @IBOutlet weak var L6: UILabel!
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
       
        
        updateLabelWithRoll(roll: randomDiceRoll())
        rearrangeDie()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        view7.isHidden = true
        L1.isHidden = true
        L2.isHidden = true
        L3.isHidden = true
        L4.isHidden = true
        L5.isHidden = true
        L6.isHidden = true
        
    }
    

    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if L1.isHidden {
            L1.text = diceScore
            L1.isHidden = false
        } else if L2.isHidden {
            L2.text = diceScore
            L2.isHidden = false
        } else if L3.isHidden {
            L3.text = diceScore
            L3.isHidden = false
        } else if L4.isHidden {
            L4.text = diceScore
            L4.isHidden = false
        } else if L5.isHidden {
            L5.text = diceScore
            L5.isHidden = false
        } else if L6.isHidden {
            L6.text = diceScore
            L6.isHidden = false
        }
    }
    
    func rearrangeDie() {
        if L1.isHidden == false {
            view1.isHidden = false
            view2.isHidden = false
            view4.isHidden = false
            view6.isHidden = false
        } else if L6.isHidden == false {
            view1.isHidden = true
            view2.isHidden = true
            view3.isHidden = true
            view4.isHidden = true
            view5.isHidden = true
            view6.isHidden = true
            view7.isHidden = true
        }
    }
    
}
