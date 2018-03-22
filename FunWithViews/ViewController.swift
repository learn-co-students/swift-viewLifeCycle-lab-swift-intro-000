//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dView1: UIView!
    @IBOutlet weak var dView2: UIView!
    @IBOutlet weak var dView3: UIView!
    @IBOutlet weak var dView4: UIView!
    @IBOutlet weak var dView5: UIView!
    @IBOutlet weak var dView6: UIView!
    @IBOutlet weak var dView7: UIView!
    @IBOutlet weak var pastDice1: UIView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var pastDice2: UIView!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var pastDice3: UIView!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var pastDice4: UIView!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var pastDice5: UIView!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var pastDice6: UIView!
    @IBOutlet weak var label6: UILabel!
    
    
    var pastDice = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideDice()
        hidePastDice()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        if(pastDice == 6) {
            hidePastDice()
            pastDice = 0
        }
        
        hideDice()
        let diceNum = randomDiceRoll()
        showDice(dice: diceNum)
        showPastDice(dice: diceNum)
        pastDice += 1
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func showDice (dice: Int) {
        
        switch dice {
        case 1:
            dView4.isHidden = false
            break
        case 2:
            dView3.isHidden = false
            dView5.isHidden = false
            break
        case 3:
            dView3.isHidden = false
            dView4.isHidden = false
            dView5.isHidden = false
            break
        case 4:
            dView1.isHidden = false
            dView3.isHidden = false
            dView5.isHidden = false
            dView7.isHidden = false
            break
        case 5:
            dView1.isHidden = false
            dView3.isHidden = false
            dView4.isHidden = false
            dView5.isHidden = false
            dView7.isHidden = false
            break
        case 6:
            dView1.isHidden = false
            dView2.isHidden = false
            dView3.isHidden = false
            dView5.isHidden = false
            dView6.isHidden = false
            dView7.isHidden = false
            break
            
        default:
            hideDice()
        }
    }
    
    func showPastDice (dice: Int) {
        
        switch pastDice {
        case 0:
            pastDice1.isHidden = false
            label1.text = "\(dice)"
        case 1:
            pastDice2.isHidden = false
            label2.text = "\(dice)"
        case 2:
            pastDice3.isHidden = false
            label3.text = "\(dice)"
        case 3:
            pastDice4.isHidden = false
            label4.text = "\(dice)"
        case 4:
            pastDice5.isHidden = false
            label5.text = "\(dice)"
        case 5:
            pastDice6.isHidden = false
            label6.text = "\(dice)"
        default:
            hidePastDice()
        }
    }
    func hideDice() {
        dView1.isHidden = true
        dView2.isHidden = true
        dView3.isHidden = true
        dView4.isHidden = true
        dView5.isHidden = true
        dView6.isHidden = true
        dView7.isHidden = true
    }
    
    func hidePastDice() {
        pastDice1.isHidden = true
        pastDice2.isHidden = true
        pastDice3.isHidden = true
        pastDice4.isHidden = true
        pastDice5.isHidden = true
        pastDice6.isHidden = true
    }

}
