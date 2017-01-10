//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!
    @IBOutlet weak var fifthLabel: UILabel!
    @IBOutlet weak var sixLabel: UILabel!
    
    // color for labels
    let blue = UIColor.blue
    let red = UIColor.red
    let yellow = UIColor.yellow
    let green = UIColor.green
    let orange = UIColor.orange
    let purple = UIColor.purple
    let gray = UIColor.gray
    
    // views for dice
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var fourthView: UIView!
    @IBOutlet weak var fifthView: UIView!
    @IBOutlet weak var sixthView: UIView!
    @IBOutlet weak var seventhView: UIView!
    
    var diceCounter:Int = 0; // counter for dice
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        // get roll number
        let rollNum:Int = randomDiceRoll()
        diceCounter+=1
        print("dice: \(rollNum)")
        print("counter: \(diceCounter)")
        
        if diceCounter > 6 {
            // clear all label
            // clear counter
            diceCounter = diceCounter - 6
            firstLabel.isHidden = true
            secondLabel.isHidden = true
            thirdLabel.isHidden = true
            fourthLabel.isHidden = true
            fifthLabel.isHidden = true
            sixLabel.isHidden = true
        }
        displayDiceFace(diceNum:rollNum)
        // check counter val
        // counter 1: firstLabel
        // counter 2: secondLabel
        // counter 3: thirdLabel
        // counter 4: fourthLabel
        // counter 5: fifthLabel
        // counter 6: sixthLabel
        // counter 7 reset all labels then back to firstLabel
        switch diceCounter {
        case 1:
            firstLabel.isHidden = false
            firstLabel.text = String(rollNum)
            firstLabel.backgroundColor = red
        case 2:
            secondLabel.isHidden = false
            secondLabel.text = String(rollNum)
            secondLabel.backgroundColor = orange
        case 3:
            thirdLabel.isHidden = false
            thirdLabel.text = String(rollNum)
            thirdLabel.backgroundColor = yellow
        case 4:
            fourthLabel.isHidden = false
            fourthLabel.text = String(rollNum)
            fourthLabel.backgroundColor = green
        case 5:
            fifthLabel.isHidden = false
            fifthLabel.text = String(rollNum)
            fifthLabel.backgroundColor = blue
        case 6:
            sixLabel.isHidden = false
            sixLabel.text = String(rollNum)
            sixLabel.backgroundColor = purple
        default:
            // clear all labels
            print("counter is over 7")
        }
        
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func displayDiceFace(diceNum:Int) {
        // clear all face
        firstView.isHidden = true
        secondView.isHidden = true
        thirdView.isHidden = true
        fourthView.isHidden = true
        fifthView.isHidden = true
        sixthView.isHidden = true
        seventhView.isHidden = true
        
        switch diceNum {
        case 1:
            print("1")
            fourthView.isHidden = false
        case 2:
            print("2")
            thirdView.isHidden = false
            fifthView.isHidden = false
        case 3:
            print("3")
            thirdView.isHidden = false
            fourthView.isHidden = false
            fifthView.isHidden = false
        case 4:
            print("4")
            firstView.isHidden = false
            thirdView.isHidden = false
            fifthView.isHidden = false
            seventhView.isHidden = false
        case 5:
            print("5")
            firstView.isHidden = false
            thirdView.isHidden = false
            fourthView.isHidden = false
            fifthView.isHidden = false
            seventhView.isHidden = false
        case 6:
            print("6")
            firstView.isHidden = false
            secondView.isHidden = false
            thirdView.isHidden = false
            fifthView.isHidden = false
            sixthView.isHidden = false
            seventhView.isHidden = false
        default:
            print("something wrong")
            firstView.isHidden = true
            secondView.isHidden = true
            thirdView.isHidden = true
            fourthView.isHidden = true
            fifthView.isHidden = true
            sixthView.isHidden = true
            seventhView.isHidden = true
        }

        
    }

}
