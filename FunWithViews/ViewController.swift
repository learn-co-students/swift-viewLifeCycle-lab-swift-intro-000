//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//declare variables here:

    @IBOutlet weak var diePos1: UIView!
    
    @IBOutlet weak var diePos2: UIView!
    
    @IBOutlet weak var diePos3: UIView!
    
    @IBOutlet weak var diePos4: UIView!
    
    @IBOutlet weak var diePos5: UIView!
    
    @IBOutlet weak var diePos6: UIView!
    
    @IBOutlet weak var diePos7: UIView!
    
    @IBOutlet weak var dieLabel1: UILabel!
    @IBOutlet weak var boxLabel1: UIView!
    @IBOutlet weak var dieLabel2: UILabel!
    @IBOutlet weak var boxLabel2: UIView!
    @IBOutlet weak var dieLabel3: UILabel!
    @IBOutlet weak var boxLabel3: UIView!
    @IBOutlet weak var dieLabel4: UILabel!
    @IBOutlet weak var boxLabel4: UIView!
    @IBOutlet weak var dieLabel5: UILabel!
    
    @IBOutlet weak var boxLabel5: UIView!
    @IBOutlet weak var dieLabel6: UILabel!
    @IBOutlet weak var boxLabel6: UIView!
    
    
    

//write functions here:
    
    //hides all dice positions
    func hideAllDie() {
        diePos1.isHidden = true
        diePos2.isHidden = true
        diePos3.isHidden = true
        diePos4.isHidden = true
        diePos5.isHidden = true
        diePos6.isHidden = true
        diePos7.isHidden = true
    }
    
    func hideLabels() {
        dieLabel1.isHidden = true
        dieLabel2.isHidden = true
        dieLabel3.isHidden = true
        dieLabel4.isHidden = true
        dieLabel5.isHidden = true
        dieLabel6.isHidden = true
        boxLabel1.isHidden = true
        boxLabel2.isHidden = true
        boxLabel3.isHidden = true
        boxLabel4.isHidden = true
        boxLabel5.isHidden = true
        boxLabel6.isHidden = true
    }
    
    func arrangeDie(roll:Int) {
        switch roll {
        case 1:
            diePos4.isHidden = false
        case 2:
            diePos1.isHidden = false
            diePos7.isHidden = false
        case 3:
            diePos1.isHidden = false
            diePos4.isHidden = false
            diePos7.isHidden = false
        case 4:
            diePos1.isHidden = false
            diePos2.isHidden = false
            diePos6.isHidden = false
            diePos7.isHidden = false
        case 5:
            diePos1.isHidden = false
            diePos2.isHidden = false
            diePos4.isHidden = false
            diePos6.isHidden = false
            diePos7.isHidden = false
        case 6:
            diePos1.isHidden = false
            diePos2.isHidden = false
            diePos3.isHidden = false
            diePos5.isHidden = false
            diePos6.isHidden = false
            diePos7.isHidden = false
        default:
            hideAllDie()
        }
    }
    
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if dieLabel1.isHidden {
            dieLabel1.text = diceScore
            dieLabel1.isHidden = false
            boxLabel1.isHidden = false
        } else if dieLabel2.isHidden {
            dieLabel2.text = diceScore
            dieLabel2.isHidden = false
            boxLabel2.isHidden = false
        } else if dieLabel3.isHidden {
            dieLabel3.text = diceScore
            dieLabel3.isHidden = false
            boxLabel3.isHidden = false
        } else if dieLabel4.isHidden {
            dieLabel4.text = diceScore
            dieLabel4.isHidden = false
            boxLabel4.isHidden = false
        } else if dieLabel5.isHidden {
            dieLabel5.text = diceScore
            dieLabel5.isHidden = false
            boxLabel5.isHidden = false
        } else if dieLabel6.isHidden {
            dieLabel6.text = diceScore
            dieLabel6.isHidden = false
            boxLabel6.isHidden = false
        } else {
            hideLabels()
            dieLabel1.text = diceScore
            dieLabel1.isHidden = false
            boxLabel1.isHidden = false
        }

    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideAllDie()
        hideLabels()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let roll = randomDiceRoll()
        hideAllDie()
        arrangeDie(roll: roll)
        updateLabelWithRoll(roll: roll)

    }

}
