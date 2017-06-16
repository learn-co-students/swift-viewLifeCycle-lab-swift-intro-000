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
    
    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var l2: UILabel!
    @IBOutlet weak var l3: UILabel!
    @IBOutlet weak var l4: UILabel!
    @IBOutlet weak var l5: UILabel!
    @IBOutlet weak var l6: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let output: Int = randomDiceRoll()
        print(output)
        switch output {
        case 1:
            view1.isHidden = false
        case 2:
            view2.isHidden = false
        case 3:
            view3.isHidden = false
        case 4:
            view4.isHidden = false
        case 5:
            view5.isHidden = false
        case 6:
            view6.isHidden = false
        default:
            print("nothing")
        }
        updateLabelWithRoll(roll: output)
    }
    
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        print("\(diceScore)")
        
        if l1.isHidden {
            l1.text = diceScore
            l1.isHidden = false
        } else if l2.isHidden {
            l2.text = diceScore
            l2.isHidden = false
        } else if l3.isHidden {
            l3.text = diceScore
            l3.isHidden = false
        }else if l4.isHidden {
            l4.text = diceScore
            l4.isHidden = false
        }else if l5.isHidden {
            l5.text = diceScore
            l5.isHidden = false
        }else if l6.isHidden {
            l6.text = diceScore
            l6.isHidden = false
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
