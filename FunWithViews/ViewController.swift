//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideDots()
        hideLables()
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        
    }
    
    
    
    @IBOutlet weak var dot1: UIView!
    @IBOutlet weak var dot2: UIView!
    @IBOutlet weak var dot3: UIView!
    @IBOutlet weak var dot4: UIView!
    @IBOutlet weak var dot5: UIView!
    @IBOutlet weak var dot6: UIView!
    @IBOutlet weak var dot7: UIView!
    @IBOutlet weak var lab1: UILabel!
    @IBOutlet weak var lab2: UILabel!
    @IBOutlet weak var lab3: UILabel!
    @IBOutlet weak var lab4: UILabel!
    @IBOutlet weak var lab5: UILabel!
    @IBOutlet weak var lab6: UILabel!
    
    @IBAction func diceRoll(_ sender: Any) {
        hideDots()
        if lab6.isHidden == false{
            hideLables()
        }
        let x = randomDiceRoll()
        switch x {
        case 1:
            dot4.isHidden = false
        case 2:
            dot3.isHidden = false
            dot5.isHidden = false
        case 3:
            dot3.isHidden = false
            dot5.isHidden = false
            dot4.isHidden = false
        case 4:
            dot1.isHidden = false
            dot3.isHidden = false
            dot5.isHidden = false
            dot7.isHidden = false
        case 5:
            dot1.isHidden = false
            dot3.isHidden = false
            dot5.isHidden = false
            dot7.isHidden = false
            dot4.isHidden = false
        case 6:
            dot1.isHidden = false
            dot3.isHidden = false
            dot5.isHidden = false
            dot7.isHidden = false
            dot2.isHidden = false
            dot6.isHidden = false
        default:
            hideDots()
        }
        updateLabelWithRoll(roll: x)
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func hideDots() {
        dot1.isHidden = true
        dot2.isHidden = true
        dot3.isHidden = true
        dot4.isHidden = true
        dot5.isHidden = true
        dot6.isHidden = true
        dot7.isHidden = true
    }
    func hideLables() {
        lab1.isHidden = true
        lab2.isHidden = true
        lab3.isHidden = true
        lab4.isHidden = true
        lab5.isHidden = true
        lab6.isHidden = true
    }
    
    func updateLabelWithRoll(roll: Int) {
        let diceScore = String(roll)
        
        if lab1.isHidden {
            lab1.text = diceScore
            lab1.isHidden = false
        } else if lab2.isHidden {
            lab2.text = diceScore
            lab2.isHidden = false
        } else if lab3.isHidden {
            lab3.text = diceScore
            lab3.isHidden = false
        } else if lab4.isHidden {
            lab4.text = diceScore
            lab4.isHidden = false
        } else if lab5.isHidden {
            lab5.text = diceScore
            lab5.isHidden = false
        } else if lab6.isHidden {
            lab6.text = diceScore
            lab6.isHidden = false
        }
    }
    
}
