//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // global variables
    var sum: Int = 0
    var nbRolls: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Roll the dice..")
        
        // hide the initial score labels
        hideAllLabels()
        
        //hide the dots
        hideAllDots()
        
        //hide the sum and avg Labels
        hideSum()
        hideAvg()
        
        //use Roll Nb label to display the instructions
        rollNb.text = "Roll the dice..."
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        print("Die button tapped.")
        // rolling the dice...
        let r = randomDiceRoll()
        nbRolls += 1
        
        // update the dots with the rolled number
        updateDots(roll: r)

        // update the score labels...
        updateLabelWithRoll(roll: r)
        
        // update sum and avg labels
        updateSum(roll: r)
        updateAvg()
        
        // update roll nb label
        updateRollNb()
    }
    
    //dots
    @IBOutlet weak var dot11: UIView!
    @IBOutlet weak var dot13: UIView!
    @IBOutlet weak var dot21: UIView!
    @IBOutlet weak var dot22: UIView!
    @IBOutlet weak var dot23: UIView!
    @IBOutlet weak var dot31: UIView!
    @IBOutlet weak var dot33: UIView!
    
    //rolls
    @IBOutlet weak var roll1: UILabel!
    @IBOutlet weak var roll2: UILabel!
    @IBOutlet weak var roll3: UILabel!
    @IBOutlet weak var roll4: UILabel!
    @IBOutlet weak var roll5: UILabel!
    @IBOutlet weak var roll6: UILabel!
    
    // sum, avg and rollNb labels
    @IBOutlet weak var sumLabel: UILabel!
    
    @IBOutlet weak var avgLabel: UILabel!
    
    @IBOutlet weak var rollNb: UILabel!
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    // Updating the score labels
    func updateLabelWithRoll(roll: Int) {
        
        // hide all labels if they are all visible
        
        if roll1.isHidden == false
            && roll2.isHidden == false
            && roll3.isHidden == false
            && roll4.isHidden == false
            && roll5.isHidden == false
            && roll6.isHidden == false {
            hideAllLabels()
        }
        
        // set label bgcolor
        
        var labelColor: UIColor = UIColor.clear
        
        switch roll {
        case 1:
            labelColor = UIColor.blue
            break
        case 2:
            labelColor = UIColor.green
            break
        case 3:
            labelColor = UIColor.yellow
            break
        case 4:
            labelColor = UIColor.orange
            break
        case 5:
            labelColor = UIColor.magenta
            break
        case 6:
            labelColor = UIColor.red
            break
        default :
            labelColor = UIColor.clear
            break
        }
        
        // show the label and set text to rolled number
        
        let diceScore = String(roll)

        if roll1.isHidden {
            roll1.text = diceScore
            roll1.backgroundColor = labelColor
            roll1.isHidden = false
        } else if roll2.isHidden {
            roll2.text = diceScore
            roll2.backgroundColor = labelColor
            roll2.isHidden = false
        } else if roll3.isHidden {
            roll3.text = diceScore
            roll3.backgroundColor = labelColor
            roll3.isHidden = false
        } else if roll4.isHidden {
            roll4.text = diceScore
            roll4.backgroundColor = labelColor
            roll4.isHidden = false
        } else if roll5.isHidden {
            roll5.text = diceScore
            roll5.backgroundColor = labelColor
            roll5.isHidden = false
        } else if roll6.isHidden {
            roll6.text = diceScore
            roll6.backgroundColor = labelColor
            roll6.isHidden = false
        }
    }
    
    func hideAllLabels() {
        roll1.isHidden = true
        roll2.isHidden = true
        roll3.isHidden = true
        roll4.isHidden = true
        roll5.isHidden = true
        roll6.isHidden = true
    }
    
    func hideAllDots() {
        dot11.isHidden = true
        dot13.isHidden = true
        dot21.isHidden = true
        dot22.isHidden = true
        dot23.isHidden = true
        dot31.isHidden = true
        dot33.isHidden = true
    }
    
    func updateDots(roll: Int) {
        // hide all dots
        hideAllDots()
        
        // display dots
        switch roll {
        case 1:
            dot22.isHidden = false
            break
        case 2:
            dot31.isHidden = false
            dot13.isHidden = false
            break
        case 3:
            dot22.isHidden = false
            dot31.isHidden = false
            dot13.isHidden = false
            break
        case 4:
            dot11.isHidden = false
            dot31.isHidden = false
            dot33.isHidden = false
            dot13.isHidden = false
            break
        case 5:
            dot22.isHidden = false
            dot11.isHidden = false
            dot31.isHidden = false
            dot33.isHidden = false
            dot13.isHidden = false
            break
        case 6:
            dot11.isHidden = false
            dot21.isHidden = false
            dot31.isHidden = false
            dot13.isHidden = false
            dot23.isHidden = false
            dot33.isHidden = false
            break
        default:
            break
        }
    }
    
    func hideSum() {
        sumLabel.isHidden = true
    }
    
    func hideAvg() {
        avgLabel.text = ""
        avgLabel.isHidden = true
    }
    
    func updateSum(roll: Int) {
        sum += roll
        print(sum)
        if sumLabel.isHidden {
            sumLabel.isHidden = false
        }
        sumLabel.text = "Sum : " + String(sum)
    }
    
    func updateAvg() {
        if avgLabel.isHidden {
            avgLabel.isHidden = false
        }
        let avg100:Int = (sum*100)/nbRolls
        let avg:Double = Double(avg100)/100.0
        avgLabel.text = "Avg : " + String(avg)
    }

    func updateRollNb() {
        if rollNb.isHidden {
            rollNb.isHidden = false
        }
        rollNb.text = "Roll #" + String(nbRolls)
    }
    
}
