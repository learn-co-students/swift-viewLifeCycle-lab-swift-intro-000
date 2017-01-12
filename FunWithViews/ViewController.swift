//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dieTopLeft: UIView!
    @IBOutlet weak var dieMidLeft: UIView!
    @IBOutlet weak var dieBottomLeft: UIView!
    @IBOutlet weak var dieMiddle: UIView!
    @IBOutlet weak var dieTopRight: UIView!
    @IBOutlet weak var dieMidRight: UIView!
    @IBOutlet weak var dieBottomRight: UIView!
    
    @IBOutlet weak var roll1Red: UIView!
    @IBOutlet weak var roll2Orange: UIView!
    @IBOutlet weak var roll3Yellow: UIView!
    @IBOutlet weak var roll4Green: UIView!
    @IBOutlet weak var roll5Blue: UIView!
    @IBOutlet weak var rollt6Purple: UIView!
    
    @IBOutlet weak var roll1Label: UILabel!
    @IBOutlet weak var roll2label: UILabel!
    @IBOutlet weak var roll3Label: UILabel!
    @IBOutlet weak var roll4label: UILabel!
    @IBOutlet weak var roll5Label: UILabel!
    @IBOutlet weak var roll6label: UILabel!
    
    
    var rollCount = 0
    var valueRoll = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideRollLabels()
        hideDiceRoll()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        //reset roll labels
        if rollCount == 0 {
            hideRollLabels()
        }
        //reset dice roll views
        hideDiceRoll()
        rollCount += 1
        valueRoll = randomDiceRoll()
        
        updateDieViewWithRoll(roll: valueRoll)
        updateLabelWithRoll(roll: valueRoll)
        
        //keep count 0-5 (which turns into 1-6 at start of function)
        rollCount = rollCount%6
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func hideDiceRoll() {
        dieMiddle.isHidden = true
        dieMidLeft.isHidden = true
        dieMidRight.isHidden = true
        dieTopLeft.isHidden = true
        dieTopRight.isHidden = true
        dieBottomLeft.isHidden = true
        dieBottomRight.isHidden = true
    }
    
    func hideRollLabels() {
        roll1Label.isHidden = true
        roll1Red.isHidden = true
        roll2label.isHidden = true
        roll2Orange.isHidden = true
        roll3Label.isHidden = true
        roll3Yellow.isHidden = true
        roll4label.isHidden = true
        roll4Green.isHidden = true
        roll5Label.isHidden = true
        roll5Blue.isHidden = true
        roll6label.isHidden = true
        rollt6Purple.isHidden = true
    }
    
    func updateDieViewWithRoll(roll: Int) {
        
        switch roll {
        case 1:
            dieMiddle.isHidden = false
        case 2:
            dieTopLeft.isHidden = false
            dieBottomRight.isHidden = false
        case 3:
            dieTopLeft.isHidden = false
            dieMiddle.isHidden = false
            dieBottomRight.isHidden = false
        case 4:
            dieTopLeft.isHidden = false
            dieTopRight.isHidden = false
            dieBottomRight.isHidden = false
            dieBottomLeft.isHidden = false
        case 5:
            dieTopLeft.isHidden = false
            dieTopRight.isHidden = false
            dieBottomRight.isHidden = false
            dieBottomLeft.isHidden = false
            dieMiddle.isHidden = false
        default:
            dieTopLeft.isHidden = false
            dieTopRight.isHidden = false
            dieBottomRight.isHidden = false
            dieBottomLeft.isHidden = false
            dieMidRight.isHidden = false
            dieMidLeft.isHidden = false
        }
    }
    
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if roll1Label.isHidden {
            roll1Label.text = diceScore
            roll1Label.isHidden = false
            roll1Red.isHidden = false
        } else if roll2label.isHidden {
            roll2label.text = diceScore
            roll2label.isHidden = false
            roll2Orange.isHidden = false
        } else if roll3Label.isHidden {
            roll3Label.text = diceScore
            roll3Label.isHidden = false
            roll3Yellow.isHidden = false
        } else if roll4label.isHidden {
            roll4label.text = diceScore
            roll4label.isHidden = false
            roll4Green.isHidden = false
        } else if roll5Label.isHidden {
            roll5Label.text = diceScore
            roll5Label.isHidden = false
            roll5Blue.isHidden = false
        } else if roll6label.isHidden {
            roll6label.text = diceScore
            roll6label.isHidden = false
            rollt6Purple.isHidden = false
        }
        
    }

}
