//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var middleLeftBox: UIView!
    @IBOutlet weak var topLeftBox: UIView!
    @IBOutlet weak var bottomLeftBox: UIView!
    @IBOutlet weak var middleBox: UIView!
    @IBOutlet weak var topRightBox: UIView!
    @IBOutlet weak var middleRightBox: UIView!
    @IBOutlet weak var bottomRightBox: UIView!
    @IBOutlet weak var counter1: UILabel!
    @IBOutlet weak var counter6: UILabel!
    @IBOutlet weak var counter5: UILabel!
    @IBOutlet weak var counter4: UILabel!
    @IBOutlet weak var counter3: UILabel!
    @IBOutlet weak var counter2: UILabel!
    @IBOutlet weak var previousLabel: UILabel!
    @IBOutlet weak var whiteBg: UIView!
    
    override func viewDidLoad() {
        middleLeftBox.isHidden = true
        topLeftBox.isHidden = true
        bottomLeftBox.isHidden = true
        middleBox.isHidden = true
        topRightBox.isHidden = true
        middleRightBox.isHidden = true
        bottomRightBox.isHidden = true
        counter1.isHidden = true
        counter2.isHidden = true
        counter3.isHidden = true
        counter4.isHidden = true
        counter5.isHidden = true
        counter6.isHidden = true
        previousLabel.isHidden = true
        whiteBg.isHidden = true
        
        super.viewDidLoad()
    }
    
    @IBAction func rollDice(_ sender: AnyObject) {
        var currentRoll = randomDiceRoll()
        diceRoll(rollResult: currentRoll)
        storeResult(roll: currentRoll)
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        var roll: Int = Int(arc4random_uniform(6) + 1)
        print("\(roll) was the roll")
        return roll
    }
   // Hides/reveals views to match the result of the dice roll
    func diceRoll (rollResult:Int) {
        switch rollResult {
        case 1:
            whiteBg.isHidden = false
            topLeftBox.isHidden = true
            bottomLeftBox.isHidden = true
            topRightBox.isHidden = true
            middleBox.isHidden = false
            bottomRightBox.isHidden = true
            middleLeftBox.isHidden = true
            middleRightBox.isHidden = true
        case 2:
            whiteBg.isHidden = false
            topLeftBox.isHidden = true
            bottomLeftBox.isHidden = true
            topRightBox.isHidden = true
            middleBox.isHidden = true
            bottomRightBox.isHidden = true
            middleLeftBox.isHidden = false
            middleRightBox.isHidden = false
        case 3:
            whiteBg.isHidden = false
            topLeftBox.isHidden = true
            bottomLeftBox.isHidden = false
            topRightBox.isHidden = false
            middleBox.isHidden = false
            bottomRightBox.isHidden = true
            middleLeftBox.isHidden = true
            middleRightBox.isHidden = true
        case 4:
            whiteBg.isHidden = false
            topLeftBox.isHidden = false
            bottomLeftBox.isHidden = false
            topRightBox.isHidden = false
            middleBox.isHidden = true
            bottomRightBox.isHidden = false
            middleLeftBox.isHidden = true
            middleRightBox.isHidden = true
        case 5:
            whiteBg.isHidden = false
            topLeftBox.isHidden = false
            bottomLeftBox.isHidden = false
            topRightBox.isHidden = false
            middleBox.isHidden = false
            bottomRightBox.isHidden = false
            middleLeftBox.isHidden = true
            middleRightBox.isHidden = true
        case 6:
            whiteBg.isHidden = false
            topLeftBox.isHidden = false
            bottomLeftBox.isHidden = false
            topRightBox.isHidden = false
            middleBox.isHidden = true
            bottomRightBox.isHidden = false
            middleLeftBox.isHidden = false
            middleRightBox.isHidden = false
        default:
            print("not any dice roll on this Earth")
        }
    }
        //function to store the results of the dice roll and cause them to move one to
        // the right as a new roll is added
    func storeResult (roll: Int) {
        if counter1.isHidden == true {
            counter1.text = String(roll)
            counter1.isHidden = false
            previousLabel.isHidden = false
        } else if counter2.isHidden == true {
            counter2.text = String(roll)
            counter2.isHidden = false
        } else if counter3.isHidden == true {
            counter3.text = String(roll)
            counter3.isHidden = false
        } else if counter4.isHidden == true {
            counter4.text = String(roll)
            counter4.isHidden = false
        } else if counter5.isHidden == true {
            counter5.text = String(roll)
            counter5.isHidden = false
        } else if counter6.isHidden == true {
            counter6.text = String(roll)
            counter6.isHidden = false
        } else {
            counter6.text = counter5.text //after filling the boxes up, the counters start
            counter5.text = counter4.text //moving towards the left to make room for new
            counter4.text = counter3.text //rolls
            counter3.text = counter2.text
            counter2.text = counter1.text
            counter1.text = String(roll)
        }
    }
}

