//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vc1: UIView!
    @IBOutlet weak var vc2: UIView!
    @IBOutlet weak var vc3: UIView!
    @IBOutlet weak var vc4: UIView!
    @IBOutlet weak var vc5: UIView!
    @IBOutlet weak var vc6: UIView!
    @IBOutlet weak var vc7: UIView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vc1.isHidden = true
        vc2.isHidden = true
        vc3.isHidden = true
        vc4.isHidden = true
        vc5.isHidden = true
        vc6.isHidden = true
        vc7.isHidden = true
        label1.isHidden = true
        label2.isHidden = true
        label3.isHidden = true
        label4.isHidden = true
        label5.isHidden = true
        label6.isHidden = true
    }
    
    @IBAction func btDice2(_ sender: Any) {
        var diceNo: Int
        diceNo = randomDiceRoll()
        updateLabelWithRoll(roll: diceNo)
        rearrangeDie(roll: diceNo)
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
        } else if label4.isHidden {
            label4.text = diceScore
            label4.isHidden = false
        } else if label5.isHidden {
            label5.text = diceScore
            label5.isHidden = false
        } else if label6.isHidden {
            label6.text = diceScore
            label6.isHidden = false
        } else {
            label1.text = diceScore
            label2.isHidden = true
            label3.isHidden = true
            label4.isHidden = true
            label5.isHidden = true
            label6.isHidden = true
        }
        
    }
   
    func rearrangeDie(roll: Int){
        vc1.isHidden = true
        vc2.isHidden = true
        vc3.isHidden = true
        vc4.isHidden = true
        vc5.isHidden = true
        vc6.isHidden = true
        vc7.isHidden = true
        
        switch roll {
        case 1:
            vc1.isHidden = false
        case 2:
            vc1.isHidden = false
            vc7.isHidden = false
        case 3:
            vc1.isHidden = false
            vc3.isHidden = false
            vc6.isHidden = false
        case 4:
            vc1.isHidden = false
            vc2.isHidden = false
            vc6.isHidden = false
            vc7.isHidden = false
        case 5:
            vc1.isHidden = false
            vc2.isHidden = false
            vc4.isHidden = false
            vc6.isHidden = false
            vc7.isHidden = false
        case 6:
            vc1.isHidden = false
            vc2.isHidden = false
            vc3.isHidden = false
            vc5.isHidden = false
            vc6.isHidden = false
            vc7.isHidden = false
        default:
            vc1.isHidden = true
            vc2.isHidden = true
            vc3.isHidden = true
            vc4.isHidden = true
            vc5.isHidden = true
            vc6.isHidden = true
            vc7.isHidden = true
        }
        
    }
    
}
