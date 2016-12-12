//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var redBox: UIView!
    @IBOutlet weak var orangeBox: UIView!
    @IBOutlet weak var yellowBox: UIView!
    @IBOutlet weak var greenBox: UIView!
    @IBOutlet weak var blueBox: UIView!
    @IBOutlet weak var purpleBox: UIView!
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    
    @IBOutlet weak var topLeft: UIView!
    @IBOutlet weak var middleLeft: UIView!
    @IBOutlet weak var bottomLeft: UIView!
    @IBOutlet weak var center: UIView!
    @IBOutlet weak var topRight: UIView!
    @IBOutlet weak var middleRight: UIView!
    @IBOutlet weak var bottomRight: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideAllDots()
        hideAllBoxes()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let number = randomDiceRoll()
        
        updateLabelWithRoll(roll: number)
        showDots(currentNumber: number)
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func showDots(currentNumber: Int) {
        hideAllDots()
        
        switch currentNumber {
        case 1:
            center.isHidden = false
        case 2:
            bottomLeft.isHidden = false
            topRight.isHidden = false
        case 3:
            bottomLeft.isHidden = false
            center.isHidden = false
            topRight.isHidden = false
        case 4:
            topLeft.isHidden = false
            bottomLeft.isHidden = false
            topRight.isHidden = false
            bottomRight.isHidden = false
        case 5:
            topLeft.isHidden = false
            bottomLeft.isHidden = false
            center.isHidden = false
            topRight.isHidden = false
            bottomRight.isHidden = false
        case 6:
            topLeft.isHidden = false
            middleLeft.isHidden = false
            bottomLeft.isHidden = false
            topRight.isHidden = false
            middleRight.isHidden = false
            bottomRight.isHidden = false
        default:
            hideAllDots()
        }
    }
    
    func updateLabelWithRoll(roll: Int) {
        hideAllBoxes()
        
        switch roll {
        case 1:
            redBox.isHidden = false
            labelOne.text = String(roll)
        case 2:
            redBox.isHidden = false
            orangeBox.isHidden = false
            labelTwo.text = String(roll)
        case 3:
            redBox.isHidden = false
            orangeBox.isHidden = false
            yellowBox.isHidden = false
            labelThree.text = String(roll)
        case 4:
            redBox.isHidden = false
            orangeBox.isHidden = false
            yellowBox.isHidden = false
            greenBox.isHidden = false
            labelFour.text = String(roll)
        case 5:
            redBox.isHidden = false
            orangeBox.isHidden = false
            yellowBox.isHidden = false
            greenBox.isHidden = false
            blueBox.isHidden = false
            labelFive.text = String(roll)
        case 6:
            redBox.isHidden = false
            orangeBox.isHidden = false
            yellowBox.isHidden = false
            greenBox.isHidden = false
            blueBox.isHidden = false
            purpleBox.isHidden = false
            labelSix.text = String(roll)
        default:
            hideAllBoxes()
        }
        
    }
    
    func hideAllDots() {
        topLeft.isHidden = true
        middleLeft.isHidden = true
        bottomLeft.isHidden = true
        center.isHidden = true
        topRight.isHidden = true
        middleRight.isHidden = true
        bottomRight.isHidden = true
    }
    
    func hideAllBoxes() {
        redBox.isHidden = true
        orangeBox.isHidden = true
        yellowBox.isHidden = true
        greenBox.isHidden = true
        blueBox.isHidden = true
        purpleBox.isHidden = true
    }
}
