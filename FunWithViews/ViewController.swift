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

    
    
    @IBOutlet weak var b1: UILabel!
    @IBOutlet weak var b2: UILabel!
    @IBOutlet weak var b3: UILabel!
    @IBOutlet weak var b4: UILabel!
    @IBOutlet weak var b5: UILabel!
    @IBOutlet weak var b6: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view1.isHidden = true   // hides the view
        view2.isHidden = true  // shows the view
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        b1.isHidden = true
        b2.isHidden = true
        b3.isHidden = true
        b4.isHidden = true
        b5.isHidden = true
        b6.isHidden = true
    }
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func displayWhichBoxes(roll: String) -> Int {
        view1.isHidden = true   // hides the view
        view2.isHidden = true  // shows the view
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        if roll == "1" {
            view1.isHidden = false
        } else if roll == "2" {
            view1.isHidden = false
            view2.isHidden = false
        } else if roll == "3" {
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = false
        } else if roll == "4" {
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = false
            view4.isHidden = false
        } else if roll == "5" {
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = false
            view4.isHidden = false
            view5.isHidden = false
        } else if roll == "6" {
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = false
            view4.isHidden = false
            view5.isHidden = false
            view6.isHidden = false
        }
        return 1;
        
    }

    @IBAction func buttonRoll(_ roll: Int) {
        let dice = randomDiceRoll()
        print("welcom")
        let diceScore = String(dice)
        print(diceScore)
        if b1.isHidden {
            b1.text = diceScore
            let newvalue = displayWhichBoxes(roll: diceScore)
            b1.isHidden = false
        } else if b2.isHidden {
            b2.text = diceScore
            let newvalue = displayWhichBoxes(roll: diceScore)
            b2.isHidden = false
        } else if b3.isHidden {
            b3.text = diceScore
            let newvalue = displayWhichBoxes(roll: diceScore)
            b3.isHidden = false
        }else if b4.isHidden {
            b4.text = diceScore
            let newvalue = displayWhichBoxes(roll: diceScore)
            b4.isHidden = false
        }else if b5.isHidden {
            b5.text = diceScore
            let newvalue = displayWhichBoxes(roll: diceScore)
            b5.isHidden = false
        }else if b6.isHidden {
            b6.text = diceScore
            let newvalue = displayWhichBoxes(roll: diceScore)
            b6.isHidden = false
        }
    }
}
