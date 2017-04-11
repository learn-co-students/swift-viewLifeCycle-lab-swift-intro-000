//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var dot1: UIView!
    @IBOutlet weak var dot2: UIView!
    @IBOutlet weak var dot3: UIView!
    @IBOutlet weak var dot4: UIView!
    @IBOutlet weak var dot5: UIView!
    @IBOutlet weak var dot6: UIView!
    @IBOutlet weak var dot7: UIView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    
    override func viewDidLoad() {
        dot1.isHidden = true
        dot2.isHidden = true
        dot3.isHidden = true
        dot4.isHidden = true
        dot5.isHidden = true
        dot6.isHidden = true
        dot7.isHidden = true
        label1.isHidden = true
        label2.isHidden = true
        label3.isHidden = true
        label4.isHidden = true
        label5.isHidden = true
        label6.isHidden = true
        
        super.viewDidLoad()
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

    func updateLabelWithRoll(_ roll: Int) {
        let diceScore = String(roll)
        
        if label1.isHidden {
            label1.text = diceScore
            label1.isHidden = false
        } else if label2.isHidden {
            label2.text = diceScore
            label2.isHidden = false
        } else if label3.isHidden {
            label3.text = diceScore
            label3.isHidden = false
        } else if label4.isHidden {
            label4.text = diceScore
            label4.isHidden = false
        } else if label5.isHidden {
            label5.text = diceScore
            label5.isHidden = false
        } else if label6.isHidden {
            label6.text = diceScore
            label6.isHidden = false
        }
    }
    
    func showDots(_ roll: Int) {
        switch roll {
            case 1:
                dot1.isHidden = true
                dot2.isHidden = true
                dot3.isHidden = true
                dot5.isHidden = true
                dot6.isHidden = true
                dot7.isHidden = true
                dot4.isHidden = false
            case 2:
                dot2.isHidden = true
                dot3.isHidden = true
                dot4.isHidden = true
                dot5.isHidden = true
                dot6.isHidden = true
                dot1.isHidden = false
                dot7.isHidden = false
            case 3:
                dot1.isHidden = true
                dot2.isHidden = true
                dot6.isHidden = true
                dot7.isHidden = true
                dot3.isHidden = false
                dot4.isHidden = false
                dot5.isHidden = false
            case 4:
                dot2.isHidden = true
                dot4.isHidden = true
                dot6.isHidden = true
                dot1.isHidden = false
                dot3.isHidden = false
                dot5.isHidden = false
                dot7.isHidden = false
            case 5:
                dot2.isHidden = true
                dot6.isHidden = true
                dot1.isHidden = false
                dot3.isHidden = false
                dot4.isHidden = false
                dot5.isHidden = false
                dot7.isHidden = false
            case 6:
                dot4.isHidden = true
                dot1.isHidden = false
                dot2.isHidden = false
                dot3.isHidden = false
                dot5.isHidden = false
                dot6.isHidden = false
                dot7.isHidden = false
        default:
            dot1.isHidden = true
            dot2.isHidden = true
            dot3.isHidden = true
            dot4.isHidden = true
            dot5.isHidden = true
            dot6.isHidden = true
            dot7.isHidden = true
        }
    }
    
    func reset() {
        dot1.isHidden = true
        dot2.isHidden = true
        dot3.isHidden = true
        dot4.isHidden = true
        dot5.isHidden = true
        dot6.isHidden = true
        dot7.isHidden = true
        label1.isHidden = true
        label2.isHidden = true
        label3.isHidden = true
        label4.isHidden = true
        label5.isHidden = true
        label6.isHidden = true
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let theRoll = randomDiceRoll()
        if label6.isHidden == true {
            showDots(theRoll)
            updateLabelWithRoll(theRoll)
        } else {
            reset()
        }
    }
    
}
    

