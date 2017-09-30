//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var pip1: UIView!
    @IBOutlet weak var pip2: UIView!
    @IBOutlet weak var pip3: UIView!
    @IBOutlet weak var pip4: UIView!
    @IBOutlet weak var pip5: UIView!
    @IBOutlet weak var pip6: UIView!
    @IBOutlet weak var pip7: UIView!
    
    @IBOutlet weak var roll1: UILabel!
    @IBOutlet weak var roll2: UILabel!
    @IBOutlet weak var roll3: UILabel!
    @IBOutlet weak var roll4: UILabel!
    @IBOutlet weak var roll5: UILabel!
    @IBOutlet weak var roll6: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        clearPips()
        let roll: Int = randomDiceRoll()
        switch roll {
        case 1:
            show1()
        case 2:
            show2()
        case 3:
            show3()
        case 4:
            show4()
        case 5:
            show5()
        case 6:
            show6()
        default:
            print("This shouldn't happen")
        }
        updateLabelWithRolls(roll)
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

    func clearPips() {
        pip1.isHidden = true
        pip2.isHidden = true
        pip3.isHidden = true
        pip4.isHidden = true
        pip5.isHidden = true
        pip6.isHidden = true
        pip7.isHidden = true
    }

    func clearRolls() {
        roll1.isHidden = true
        roll2.isHidden = true
        roll3.isHidden = true
        roll4.isHidden = true
        roll5.isHidden = true
        roll6.isHidden = true
    }
    
    func show1() {
        pip4.isHidden = false
    }
    func show2() {
        pip1.isHidden = false
        pip7.isHidden = false
    }
    func show3() {
        pip2.isHidden = false
        pip4.isHidden = false
        pip6.isHidden = false
    }

    func show4() {
        pip1.isHidden = false
        pip2.isHidden = false
        pip6.isHidden = false
        pip7.isHidden = false
    }

    func show5() {
        pip1.isHidden = false
        pip2.isHidden = false
        pip4.isHidden = false
        pip6.isHidden = false
        pip7.isHidden = false
    }

    func show6() {
        pip1.isHidden = false
        pip2.isHidden = false
        pip3.isHidden = false
        pip5.isHidden = false
        pip6.isHidden = false
        pip7.isHidden = false
    }

    func updateLabelWithRolls(_ roll: Int) {
        let diceScore = String(roll)

        if roll1.isHidden {
            roll1.text = diceScore
            roll1.isHidden = false
        } else if roll2.isHidden {
            roll2.text = diceScore
            roll2.isHidden = false
        } else if roll3.isHidden {
            roll3.text = diceScore
            roll3.isHidden = false
        } else if roll4.isHidden {
            roll4.text = diceScore
            roll4.isHidden = false
        } else if roll5.isHidden {
            roll5.text = diceScore
            roll5.isHidden = false
        } else if roll6.isHidden {
            roll6.text = diceScore
            roll6.isHidden = false
        } else {
            clearRolls()
            roll1.text = diceScore
            roll1.isHidden = false
        }
    }
}
