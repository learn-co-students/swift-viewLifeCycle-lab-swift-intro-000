//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetViews()
        resetLabels()
    }
    
    var diceRoll = 0
    var countRoll = 0
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        diceRoll = randomDiceRoll()
        countRoll += 1
        resetViews()
        switch diceRoll {
        case 1:
            view7.isHidden = false
        case 2:
            view2.isHidden = false
            view5.isHidden = false
        case 3:
            view3.isHidden = false
            view7.isHidden = false
            view4.isHidden = false
        case 4:
            view1.isHidden = false
            view3.isHidden = false
            view4.isHidden = false
            view6.isHidden = false
        case 5:
            view1.isHidden = false
            view3.isHidden = false
            view4.isHidden = false
            view6.isHidden = false
            view7.isHidden = false
        case 6:
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = false
            view4.isHidden = false
            view5.isHidden = false
            view6.isHidden = false
        default:
            print("Bad luck bro!")
        }
        
        switch countRoll {
        case 1:
            label1.text = String(diceRoll)
        case 2:
            label2.text = String(diceRoll)
        case 3:
            label3.text = String(diceRoll)
        case 4:
            label4.text = String(diceRoll)
        case 5:
            label5.text = String(diceRoll)
        case 6:
            label6.text = String(diceRoll)
        case 7:
            resetLabels()
            label1.text = String(diceRoll)
            countRoll = 1
        default:
            print("")
        }

        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func resetViews(){
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        view7.isHidden = true
    }
    
    func resetLabels(){
        label1.text = "0"
        label2.text = "0"
        label3.text = "0"
        label4.text = "0"
        label5.text = "0"
        label6.text = "0"
    }


}
