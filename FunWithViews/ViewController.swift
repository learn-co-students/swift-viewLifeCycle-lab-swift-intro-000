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
        
        labelOne.text = ""
        labelTwo.text = ""
        labelThree.text = ""
        labelFour.text = ""
        labelFive.text = ""
        labelSix.text = ""
        
        super.viewDidLoad()
        }
    
    var rollCount = 0
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let diceRoll = randomDiceRoll()
        print("The dice roll is", diceRoll)
        rollCount = rollCount + 1
        print("Your roll count is", rollCount)
        
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
    
        switch diceRoll {
        case 1:
            middle.isHidden = false
        case 2:
            topLeft.isHidden = false
            bottomRight.isHidden = false
        case 3:
            topLeft.isHidden = false
            middle.isHidden = false
            bottomRight.isHidden = false
        case 4:
            topLeft.isHidden = false
            bottomLeft.isHidden = false
            topRight.isHidden = false
            middleRight.isHidden = false
        case 5:
            topLeft.isHidden = false
            bottomLeft.isHidden = false
            middle.isHidden = false
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
            print("You did it!")
        }

        switch rollCount {
        case 1:
            redSquare.isHidden = false
            labelOne.text = String(diceRoll)
        case 2:
            redSquare.isHidden = false
            orangeSquare.isHidden = false
            labelTwo.text = String(diceRoll)
        case 3:
            redSquare.isHidden = false
            orangeSquare.isHidden = false
            yellowSquare.isHidden = false
            labelThree.text = String(diceRoll)
        case 4:
            redSquare.isHidden = false
            orangeSquare.isHidden = false
            yellowSquare.isHidden = false
            greenSquare.isHidden = false
            labelFour.text = String(diceRoll)
        case 5:
            redSquare.isHidden = false
            orangeSquare.isHidden = false
            yellowSquare.isHidden = false
            greenSquare.isHidden = false
            blueSquare.isHidden = false
            labelFive.text = String(diceRoll)
        case 6:
            redSquare.isHidden = false
            orangeSquare.isHidden = false
            yellowSquare.isHidden = false
            greenSquare.isHidden = false
            blueSquare.isHidden = false
            purpleSquare.isHidden = false
            labelSix.text = String(diceRoll)
        default:
            print("You go, Glen Coco!")
        }
    }
}
