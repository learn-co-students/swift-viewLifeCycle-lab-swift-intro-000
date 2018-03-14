//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var block1: UIView!
    @IBOutlet weak var block2: UIView!
    @IBOutlet weak var block3: UIView!
    @IBOutlet weak var block4: UIView!
    @IBOutlet weak var block5: UIView!
    @IBOutlet weak var block6: UIView!
    @IBOutlet weak var block7: UIView!
    @IBOutlet weak var block8: UIView!
    @IBOutlet weak var block9: UIView!
    
    @IBOutlet weak var result1: UILabel!
    @IBOutlet weak var result2: UILabel!
    @IBOutlet weak var result3: UILabel!
    @IBOutlet weak var result4: UILabel!
    @IBOutlet weak var result5: UILabel!
    @IBOutlet weak var result6: UILabel!
    
    
    var currentRole : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        currentRole = randomDiceRoll()
        diceReset()
        diceBlocks(number: currentRole)
        resultTracker(result: currentRole)
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func diceBlocks(number: Int) {
        switch number {
        case 1:
            block5.isHidden = false
        case 2:
            block3.isHidden = false
            block7.isHidden = false
        case 3:
            block3.isHidden = false
            block5.isHidden = false
            block7.isHidden = false
        case 4:
            block1.isHidden = false
            block3.isHidden = false
            block7.isHidden = false
            block9.isHidden = false
        case 5:
            block1.isHidden = false
            block3.isHidden = false
            block5.isHidden = false
            block7.isHidden = false
            block9.isHidden = false
        case 6:
            block1.isHidden = false
            block3.isHidden = false
            block4.isHidden = false
            block6.isHidden = false
            block7.isHidden = false
            block9.isHidden = false
        default:
            break
        }
    }
    
    func diceReset() {
        block1.isHidden = true
        block2.isHidden = true
        block3.isHidden = true
        block4.isHidden = true
        block5.isHidden = true
        block6.isHidden = true
        block7.isHidden = true
        block8.isHidden = true
        block9.isHidden = true

    }
    
    func resultTracker(result : Int) {
        if result1.isHidden {
            result1.text = String(currentRole)
            result1.isHidden = false
        } else if result2.isHidden {
            result2.text = String(currentRole)
            result2.isHidden = false
        } else if result3.isHidden {
            result3.text = String(currentRole)
            result3.isHidden = false
        } else if result4.isHidden {
            result4.text = String(currentRole)
            result4.isHidden = false
        } else if result5.isHidden {
            result5.text = String(currentRole)
            result5.isHidden = false
        } else if result6.isHidden {
            result6.text = String(currentRole)
            result6.isHidden = false
        } else {
            result1.text = String(currentRole)
            result2.isHidden = true
            result3.isHidden = true
            result4.isHidden = true
            result5.isHidden = true
            result6.isHidden = true
        }
    }
}
