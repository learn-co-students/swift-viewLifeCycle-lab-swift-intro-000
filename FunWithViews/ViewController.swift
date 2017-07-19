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
    }
    
    @IBOutlet weak var one: UIView!
    @IBOutlet weak var two: UIView!
    @IBOutlet weak var three: UIView!
    @IBOutlet weak var four: UIView!
    @IBOutlet weak var five: UIView!
    @IBOutlet weak var six: UIView!
    @IBOutlet weak var seven: UIView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    
    var diceRoll = 0
    var count = 0
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        one.isHidden = true
        two.isHidden = true
        three.isHidden = true
        four.isHidden = true
        five.isHidden = true
        six.isHidden = true
        seven.isHidden = true
        diceRoll = randomDiceRoll()
        print(diceRoll)
        switch diceRoll {
        case 1:
            four.isHidden = false
        case 2:
            one.isHidden = false
            seven.isHidden = false
        case 3:
            one.isHidden = false
            four.isHidden = false
            seven.isHidden = false
        case 4:
            one.isHidden = false
            three.isHidden = false
            five.isHidden = false
            seven.isHidden = false
        case 5:
            one.isHidden = false
            three.isHidden = false
            four.isHidden = false
            five.isHidden = false
            seven.isHidden = false
        case 6:
            one.isHidden = false
            two.isHidden = false
            three.isHidden = false
            five.isHidden = false
            six.isHidden = false
            seven.isHidden = false
        default:
            print("invalid value")
        }
        count += 1
        updateDisplay(counter: count)
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func updateDisplay(counter: Int) {
        switch count {
        case 1:
            label1.text = String(diceRoll)
            label1.isHidden = false
        case 2:
            label2.text = String(diceRoll)
            label2.isHidden = false
        case 3:
            label3.text = String(diceRoll)
            label3.isHidden = false
        case 4:
            label4.text = String(diceRoll)
            label4.isHidden = false
        case 5:
            label5.text = String(diceRoll)
            label5.isHidden = false
        case 6:
            label6.text = String(diceRoll)
            label6.isHidden = false
        default:
            count = 1
            label1.text = String(diceRoll)
            label1.isHidden = false
            label2.isHidden = true
            label3.isHidden = true
            label4.isHidden = true
            label5.isHidden = true
            label6.isHidden = true
        }
    }

}
