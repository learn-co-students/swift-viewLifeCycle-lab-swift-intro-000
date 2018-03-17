//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var box1: UIView!
    @IBOutlet weak var box2: UIView!
    @IBOutlet weak var box3: UIView!
    @IBOutlet weak var box4: UIView!
    @IBOutlet weak var box5: UIView!
    @IBOutlet weak var box6: UIView!
    @IBOutlet weak var box7: UIView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        box1.isHidden = true
        box2.isHidden = true
        box3.isHidden = true
        box4.isHidden = true
        box5.isHidden = true
        box6.isHidden = true
        box7.isHidden = true
        label1.isHidden = true
        label2.isHidden = true
        label3.isHidden = true
        label4.isHidden = true
        label5.isHidden = true
        label6.isHidden = true
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    
    func updateLabelWithRoll(roll: Int) {
        
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
        }else if label4.isHidden {
            label4.text = diceScore
            label4.isHidden = false
        }else if label5.isHidden {
            label5.text = diceScore
            label5.isHidden = false
        }else if label6.isHidden {
            label6.text = diceScore
            label6.isHidden = false
        }
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        updateLabelWithRoll(roll: randomDiceRoll())
        
    }
    
    
    
}

