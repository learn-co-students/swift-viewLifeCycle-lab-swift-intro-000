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
    
    @IBOutlet weak var redSquare: UIView!
    @IBOutlet weak var orangeSquare: UIView!
    @IBOutlet weak var yellowSquare: UIView!
    @IBOutlet weak var greenSquare: UIView!
    @IBOutlet weak var blueSquare: UIView!
    @IBOutlet weak var purpleSquare: UIView!
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    
    
    override func viewDidLoad() {
        
            topLeft.isHidden = true
            middleLeft.isHidden = true
            bottomLeft.isHidden = true
            middle.isHidden = true
            topRight.isHidden = true
            middleRight.isHidden = true
            bottomRight.isHidden = true

            redSquare.isHidden = true
            orangeSquare.isHidden = true
            yellowSquare.isHidden = true
            greenSquare.isHidden = true
            blueSquare.isHidden = true
            purpleSquare.isHidden = true
        
        super.viewDidLoad()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let roll = randomDiceRoll()
        updateLabelWithRoll(roll)
        showDots(roll)
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
   
    func updateLabelWithRoll(_ roll: Int) {
        let rolls = String(roll)
        
        if labelOne.text == "0" {
            labelOne.text = rolls
            labelOne.isHidden = false
        } else if labelTwo.text == "0" {
            labelTwo.text = rolls
            labelTwo.isHidden = false
        } else if labelThree.text == "0" {
            labelThree.text = rolls
            labelThree.isHidden = false
        } else if labelFour.text == "0" {
            labelFour.text = rolls
            labelFour.isHidden = false
        } else if labelFive.text == "0" {
            labelFive.text = rolls
            labelFive.isHidden = false
        } else if labelSix.text == "0" {
            labelSix.text = rolls
            labelSix.isHidden = false
        }
    }

    
    func showDots(_ roll: Int) {
        if roll == 1 {
            topLeft.isHidden = false
            middleLeft.isHidden = false
            bottomLeft.isHidden = false
            topRight.isHidden = false
            middleRight.isHidden = false
            bottomRight.isHidden = false
        } else if roll == 2 {
            middleLeft.isHidden = false
            bottomLeft.isHidden = false
            middle.isHidden = false
            topRight.isHidden = false
            middleRight.isHidden = false
        } else if roll == 3 {
            middleLeft.isHidden = false
            bottomLeft.isHidden = false
            topRight.isHidden = false
            middleLeft.isHidden = false
        } else if roll == 4 {
            middleLeft.isHidden = false
            middle.isHidden = false
            middleRight.isHidden = false
        } else if roll == 5 {
            middleLeft.isHidden = false
            middleRight.isHidden = false
        } else if roll == 6 {
            middle.isHidden = false
        }
    }
}
