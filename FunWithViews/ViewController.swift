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


    @IBOutlet weak var number1: UILabel!
    @IBOutlet weak var number2: UILabel!
    @IBOutlet weak var number3: UILabel!
    @IBOutlet weak var number4: UILabel!
    @IBOutlet weak var number5: UILabel!
    @IBOutlet weak var number6: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        updateLabelWithRoll(roll: Int(arc4random_uniform(6) + 1))
        rearrageBlackSqure(roll: Int(arc4random_uniform(6) + 1))
    }
    
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if number1.isHidden {
            number1.text = diceScore
            number1.isHidden = false
        } else if number2.isHidden {
            number2.text = diceScore
            number2.isHidden = false
        } else if number3.isHidden {
            number3.text = diceScore
            number3.isHidden = false
        }else if number4.isHidden{
            number4.text = diceScore
            number4.isHidden = false
        }else if number5.isHidden{
            number5.text = diceScore
            number5.isHidden = false
        }else if number6.isHidden{
            number6.text = diceScore
            number6.isHidden = false
        }
    }
    
    func rearrageBlackSqure(roll: Int) {
        
        if roll < 1 {
            view1.isHidden = false
        }else if roll == 2{
            view1.isHidden = false
            view2.isHidden = false
        }else if roll == 3{
            view1.isHidden = false
            view2.isHidden = false
            view7.isHidden = false
        }else if roll == 4{
            view1.isHidden = false
            view2.isHidden = false
            view7.isHidden = false
            view4.isHidden = false
        }else if roll == 5{
            view1.isHidden = false
            view2.isHidden = false
            view7.isHidden = false
            view4.isHidden = false
            view3.isHidden = false
        }else if roll == 6{
            view1.isHidden = false
            view2.isHidden = false
            view7.isHidden = false
            view4.isHidden = false
            view3.isHidden = false
            view6.isHidden = false
        }
        
    }

    
    
//     Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}

