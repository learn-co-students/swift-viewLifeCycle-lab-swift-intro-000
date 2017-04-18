//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var block_1: UIView!
    @IBOutlet weak var block_2: UIView!
    @IBOutlet weak var block_3: UIView!
    @IBOutlet weak var block_4: UIView!
    @IBOutlet weak var block_5: UIView!
    @IBOutlet weak var block_6: UIView!
    @IBOutlet weak var block_7: UIView!
    @IBOutlet weak var result_1: UILabel!
    @IBOutlet weak var result_2: UILabel!
    @IBOutlet weak var result_3: UILabel!
    @IBOutlet weak var result_4: UILabel!
    @IBOutlet weak var result_5: UILabel!
    @IBOutlet weak var result_6: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        block_1.isHidden = true
        block_2.isHidden = true
        block_3.isHidden = true
        block_4.isHidden = true
        block_5.isHidden = true
        block_6.isHidden = true
        block_7.isHidden = true
        result_1.isHidden = true
        result_2.isHidden = true
        result_3.isHidden = true
        result_4.isHidden = true
        result_5.isHidden = true
        result_6.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        displayBlocks(roll: randomDiceRoll())
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func resetBlocks() {
        block_1.isHidden = true
        block_2.isHidden = true
        block_3.isHidden = true
        block_4.isHidden = true
        block_5.isHidden = true
        block_6.isHidden = true
        block_7.isHidden = true
    }
    
    func resetScores() {
        result_1.isHidden = true
        result_2.isHidden = true
        result_3.isHidden = true
        result_4.isHidden = true
        result_5.isHidden = true
        result_6.isHidden = true
    }
    
    func diceScore(score: Int) {
        let scoreStr = String(score)
        if result_1.isHidden {
            result_1.isHidden = false
            result_1.text = scoreStr
        } else if result_2.isHidden {
            result_2.isHidden = false
            result_2.text = scoreStr
        } else if result_3.isHidden {
            result_3.isHidden = false
            result_3.text = scoreStr
        } else if result_4.isHidden {
            result_4.isHidden = false
            result_4.text = scoreStr
        } else if result_5.isHidden {
            result_5.isHidden = false
            result_5.text = scoreStr
        } else if result_6.isHidden {
            result_6.isHidden = false
            result_6.text = scoreStr
        } else {
            print("Game over")
        }
    }
    
    func displayBlocks(roll: Int) {
        
        diceScore(score: roll)
        
        resetBlocks()
        
        switch roll {
            
        case 1:
            block_4.isHidden = false
        case 2:
            block_2.isHidden = false
            block_6.isHidden = false
        case 3:
            block_2.isHidden = false
            block_4.isHidden = false
            block_6.isHidden = false
        case 4:
            block_1.isHidden = false
            block_3.isHidden = false
            block_5.isHidden = false
            block_7.isHidden = false
        case 5:
            block_1.isHidden = false
            block_3.isHidden = false
            block_4.isHidden = false
            block_5.isHidden = false
            block_7.isHidden = false
        case 6:
            block_1.isHidden = false
            block_2.isHidden = false
            block_3.isHidden = false
            block_5.isHidden = false
            block_6.isHidden = false
            block_7.isHidden = false
        default:
            print("ERR")
            
        }
    }
    
}
