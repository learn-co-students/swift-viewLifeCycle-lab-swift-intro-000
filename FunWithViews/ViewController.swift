//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var topLeft: UIView!
    @IBOutlet weak var middleLeft: UIView!
    @IBOutlet weak var bottomLeft: UIView!
    @IBOutlet weak var middle: UIView!
    @IBOutlet weak var topRight: UIView!
    @IBOutlet weak var middleRight: UIView!
    @IBOutlet weak var bottomRight: UIView!

    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
   
    
    override func viewDidLoad() {
        print("viewDidLoad() called")
        super.viewDidLoad()
        topLeft.isHidden = true
        middleLeft.isHidden = true
        bottomLeft.isHidden = true
        middle.isHidden = true
        topRight.isHidden = true
        middleRight.isHidden = true
        bottomRight.isHidden = true
        labelOne.isHidden = true
        labelTwo.isHidden = true
        labelThree.isHidden = true
        labelFour.isHidden = true
        labelFive.isHidden = true
        labelSix.isHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear(_:) called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear(_:) called")
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let roll = randomDiceRoll()
        displayDiceRoll(roll: roll)
        updateLabelWithRoll(roll: roll)
        print("dieButtonTapped() called")
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func displayDiceRoll(roll: Int) {
        if roll == 1 {
            topLeft.isHidden = true
            middleLeft.isHidden = true
            bottomLeft.isHidden = true
            middle.isHidden = false
            topRight.isHidden = true
            middleRight.isHidden = true
            bottomRight.isHidden = true
        }
        else if roll == 2 {
            topLeft.isHidden = false
            middleLeft.isHidden = true
            bottomLeft.isHidden = true
            middle.isHidden = true
            topRight.isHidden = true
            middleRight.isHidden = true
            bottomRight.isHidden = false
        }
        else if roll == 3 {
            topLeft.isHidden = false
            middleLeft.isHidden = true
            bottomLeft.isHidden = true
            middle.isHidden = false
            topRight.isHidden = true
            middleRight.isHidden = true
            bottomRight.isHidden = false
        }
        else if roll == 4 {
            topLeft.isHidden = false
            middleLeft.isHidden = true
            bottomLeft.isHidden = false
            middle.isHidden = true
            topRight.isHidden = false
            middleRight.isHidden = true
            bottomRight.isHidden = false
        }
        else if roll == 1 {
            topLeft.isHidden = false
            middleLeft.isHidden = true
            bottomLeft.isHidden = false
            middle.isHidden = false
            topRight.isHidden = false
            middleRight.isHidden = true
            bottomRight.isHidden = false
        }
    }
    
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if labelOne.isHidden == true {
            labelOne.text = diceScore
            labelOne.isHidden = false
        } else if labelTwo.isHidden == true {
            labelTwo.text = diceScore
            labelTwo.isHidden = false
        } else if labelThree.isHidden == true {
            labelThree.text = diceScore
            labelThree.isHidden = false
        } else if labelFour.isHidden == true {
            labelFour.text = diceScore
            labelFour.isHidden = false
        } else if labelFive.isHidden == true {
            labelFive.text = diceScore
            labelFive.isHidden = false
        } else if labelSix.isHidden == true {
            labelSix.text = diceScore
            labelSix.isHidden = false
        }
    }

}
