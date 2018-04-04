//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var one: UIView!
    @IBOutlet weak var two: UIView!
    @IBOutlet weak var three: UIView!
    @IBOutlet weak var four: UIView!
    @IBOutlet weak var five: UIView!
    @IBOutlet weak var six: UIView!
    @IBOutlet weak var seven: UIView!
    
    @IBOutlet weak var firstroll: UILabel!
    @IBOutlet weak var secondroll: UILabel!
    @IBOutlet weak var thirdroll: UILabel!
    @IBOutlet weak var fourthroll: UILabel!
    @IBOutlet weak var fifthroll: UILabel!
    @IBOutlet weak var sixthroll: UILabel!
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        one.isHidden = true
        two.isHidden = true
        three.isHidden = true
        four.isHidden = true
        five.isHidden = true
        six.isHidden = true
        seven.isHidden = true
        
        firstroll.isHidden = true
        secondroll.isHidden = true
        thirdroll.isHidden = true
        fourthroll.isHidden = true
        fifthroll.isHidden = true
        sixthroll.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        let diceRoll = randomDiceRoll()
        updateViewWithRoll(roll: diceRoll)
        updateLabelWithRoll(roll: diceRoll)
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    @IBAction func randomDiceRoll(_ sender: Any) {
    }
    
    func updateLabelWithRoll(roll: Int) {
        let diceScore = String(roll)
        
        if firstroll.isHidden {
            firstroll.text = diceScore
            firstroll.isHidden = false
        } else if secondroll.isHidden {
                secondroll.text = diceScore
                secondroll.isHidden = false
        } else if thirdroll.isHidden {
            thirdroll.text = diceScore
            thirdroll.isHidden = false
        } else if fourthroll.isHidden {
            fourthroll.text = diceScore
            fourthroll.isHidden = false
        } else if fifthroll.isHidden {
            fifthroll.text = diceScore
            fifthroll.isHidden = false
        } else if sixthroll.isHidden {
            sixthroll.text = diceScore
            sixthroll.isHidden = false
        }
    }


    func updateViewWithRoll(roll: Int) {
        let diceScore = String(roll)
        
        switch diceScore {
            case "1":
            four.isHidden = false
            one.isHidden = true
            two.isHidden = true
            three.isHidden = true
            five.isHidden = true
            six.isHidden = true
            seven.isHidden = true
            break
            
            case "2":
            three.isHidden = false
            five.isHidden = false
            one.isHidden = true
            two.isHidden = true
            four.isHidden = true
            six.isHidden = true
            seven.isHidden = true
            break
            
            case "3":
            three.isHidden = false
            four.isHidden = false
            five.isHidden = false
            one.isHidden = true
            two.isHidden = true
            six.isHidden = true
            seven.isHidden = true
            break
            
            case "4":
            one.isHidden = false
            three.isHidden = false
            five.isHidden = false
            seven.isHidden = false
            two.isHidden = true
            four.isHidden = true
            six.isHidden = true
            break
            
        case "5":
            one.isHidden = false
            three.isHidden = false
            four.isHidden = false
            five.isHidden = false
            seven.isHidden = false
            two.isHidden = true
            six.isHidden = true
            break
            
        default:
            one.isHidden = false
            two.isHidden = false
            three.isHidden = false
            five.isHidden = false
            six.isHidden = false
            seven.isHidden = false
            four.isHidden = true
            break
        }
}

}
