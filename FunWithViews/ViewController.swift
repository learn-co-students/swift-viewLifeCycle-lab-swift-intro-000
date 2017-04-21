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
    
    @IBOutlet weak var num1: UILabel!
    @IBOutlet weak var num2: UILabel!
    @IBOutlet weak var num3: UILabel!
    @IBOutlet weak var num4: UILabel!
    @IBOutlet weak var num5: UILabel!
    @IBOutlet weak var num6: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        view7.isHidden = true
        
        num1.isHidden = true
        num2.isHidden = true
        num3.isHidden = true
        num4.isHidden = true
        num5.isHidden = true
        num6.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let num = randomDiceRoll()
        showDie(num: num)
        updateLabelWithRoll(roll: num)
    }
    
    func showDie(num: Int) {
        switch num {
        case 1:
            view1.isHidden = false
            view2.isHidden = true
            view3.isHidden = true
            view4.isHidden = true
            view5.isHidden = true
            view6.isHidden = true
            view7.isHidden = true
        case 2:
            view1.isHidden = true
            view2.isHidden = false
            view3.isHidden = false
            view4.isHidden = true
            view5.isHidden = true
            view6.isHidden = true
            view7.isHidden = true
        case 3:
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = false
            view4.isHidden = true
            view5.isHidden = true
            view6.isHidden = true
            view7.isHidden = true
        case 4:
            view1.isHidden = true
            view2.isHidden = false
            view3.isHidden = false
            view4.isHidden = false
            view5.isHidden = false
            view6.isHidden = true
            view7.isHidden = true
        case 5:
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = false
            view4.isHidden = false
            view5.isHidden = false
            view6.isHidden = true
            view7.isHidden = true
        case 6:
            view1.isHidden = true
            view2.isHidden = false
            view3.isHidden = false
            view4.isHidden = false
            view5.isHidden = false
            view6.isHidden = false
            view7.isHidden = false
        default:
            view1.isHidden = true
            view2.isHidden = true
            view3.isHidden = true
            view4.isHidden = true
            view5.isHidden = true
            view6.isHidden = true
            view7.isHidden = true
            break
        }
    }
    
    func updateLabelWithRoll(roll: Int) {
        num6.text = num5.text
        num5.text = num4.text
        num4.text = num3.text
        num3.text = num2.text
        num2.text = num1.text
        num1.text = String(roll)
        if (num6.isHidden && num6.text != "0") {
            num6.isHidden = false
        }
        if (num5.isHidden && num5.text != "0") {
            num5.isHidden = false
        }
        if (num4.isHidden && num4.text != "0") {
            num4.isHidden = false
        }
        if (num3.isHidden && num3.text != "0") {
            num3.isHidden = false
        }
        if (num2.isHidden && num2.text != "0") {
            num2.isHidden = false
        }
        if (num1.isHidden && num1.text != "0") {
            num1.isHidden = false
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
