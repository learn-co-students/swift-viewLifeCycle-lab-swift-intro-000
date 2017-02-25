//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelOne: UILabel!
    
    @IBOutlet weak var labelTwo: UILabel!
    
    @IBOutlet weak var labelThree: UILabel!
    
    @IBOutlet weak var labelFour: UILabel!
    
    @IBOutlet weak var labelFive: UILabel!
    
    @IBOutlet weak var labelSix: UILabel!
    
    @IBOutlet weak var topLeft: UIView!
    @IBOutlet weak var centerLeft: UIView!
    @IBOutlet weak var bottomLeft: UIView!
    @IBOutlet weak var center: UIView!
    @IBOutlet weak var topRight: UIView!
    @IBOutlet weak var centerRight: UIView!
    @IBOutlet weak var bottomRight: UIView!
    
    
    
    
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if labelOne.isHidden {
            labelOne.text = diceScore
            labelOne.isHidden = false
        } else if labelTwo.isHidden {
            labelTwo.text = diceScore
            labelTwo.isHidden = false
        } else if labelThree.isHidden {
            labelThree.text = diceScore
            labelThree.isHidden = false
        } else if labelFour.isHidden {
            labelFour.text = diceScore
            labelFour.isHidden = false
        } else if labelFive.isHidden {
            labelFive.text = diceScore
            labelFive.isHidden = false
        } else if labelSix.isHidden {
            labelSix.text = diceScore
            labelSix.isHidden = false
        }
    }
    
    func updateDie(roll: Int){
        let diceScore = roll
        
        switch roll {
        case 1:
            center.isHidden = false
        case 2:
            topLeft.isHidden = false
            bottomRight.isHidden = false
        case 3:
            topLeft.isHidden = false
            center.isHidden = false
            bottomRight.isHidden = false
        case 4:
            topLeft.isHidden = false
            bottomLeft.isHidden = false
            topRight.isHidden = false
            bottomRight.isHidden = false
        case 5:
            topLeft.isHidden = false
            bottomLeft.isHidden = false
            topRight.isHidden = false
            bottomRight.isHidden = false
            center.isHidden = false
        case 6:
            topLeft.isHidden = false
            centerLeft.isHidden = false
            bottomLeft.isHidden = false
            topRight.isHidden = false
            bottomRight.isHidden = false
            centerRight.isHidden = false
        default:
            print("Oops")
        }
    }
    
    @IBAction func dieCast(_ sender: Any) {
        
        if labelSix.isHidden == true {
            topLeft.isHidden = true
            centerLeft.isHidden = true
            bottomLeft.isHidden = true
            topRight.isHidden = true
            bottomRight.isHidden = true
            centerRight.isHidden = true
            center.isHidden = true
        
            let dieRoll = randomDiceRoll()
            updateLabelWithRoll(roll: dieRoll)
            updateDie(roll: dieRoll)
        } else {
            topLeft.isHidden = false
            centerLeft.isHidden = false
            bottomLeft.isHidden = false
            topRight.isHidden = false
            bottomRight.isHidden = false
            centerRight.isHidden = false
            center.isHidden = false
            fuckYou.isHidden = false

            
        }
    }
    
    @IBOutlet weak var fuckYou: UILabel!
    @IBOutlet weak var score: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
