//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var LeftOne: UIView!
    
    @IBOutlet weak var LeftTwo: UIView!
    
    @IBOutlet weak var LeftThree: UIView!
    
    @IBOutlet weak var CenterSquare: UIView!
    
    @IBOutlet weak var RightOne: UIView!
    
    @IBOutlet weak var RightTwo: UIView!
    
    @IBOutlet weak var RightThree: UIView!
    
    @IBOutlet weak var labelOne: UILabel!
    
    @IBOutlet weak var labelTwo: UILabel!
    
    @IBOutlet weak var labelThree: UILabel!
    
    @IBOutlet weak var labelFour: UILabel!
    
    @IBOutlet weak var labelFive: UILabel!
    
    @IBOutlet weak var labelSix: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        LeftOne.isHidden = true
        LeftTwo.isHidden = true
        LeftThree.isHidden = true
        CenterSquare.isHidden = true
        RightOne.isHidden = true
        RightTwo.isHidden = true
        RightThree.isHidden = true
        labelOne.isHidden = true
        labelTwo.isHidden = true
        labelThree.isHidden = true
        labelFour.isHidden = true
        labelFive.isHidden = true
        labelSix.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let roll = randomDiceRoll()
        updateLabelWithRoll(roll: roll)
        rearrangeDie(roll: roll)
    }
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    
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
        } else if (labelOne.isHidden == false) && (labelTwo.isHidden == false) && (labelThree.isHidden == false) && (labelFour.isHidden == false) && (labelFive.isHidden == false) && (labelSix.isHidden == false) {
            labelOne.isHidden = false
            labelOne.text = diceScore
            labelTwo.isHidden = true
            labelThree.isHidden = true
            labelFour.isHidden = true
            labelFive.isHidden = true
            labelSix.isHidden = true
        }
    }
    
    
    func rearrangeDie(roll: Int) {
        
        switch roll {
        case 1:
            LeftOne.isHidden = true
            LeftTwo.isHidden = true
            LeftThree.isHidden = true
            CenterSquare.isHidden = false
            RightOne.isHidden = true
            RightTwo.isHidden = true
            RightThree.isHidden = true
        case 2:
            LeftOne.isHidden = false
            LeftTwo.isHidden = true
            LeftThree.isHidden = true
            CenterSquare.isHidden = true
            RightOne.isHidden = true
            RightTwo.isHidden = true
            RightThree.isHidden = false
        case 3:
            LeftOne.isHidden = false
            LeftTwo.isHidden = true
            LeftThree.isHidden = true
            CenterSquare.isHidden = false
            RightOne.isHidden = true
            RightTwo.isHidden = true
            RightThree.isHidden = false
        case 4:
            LeftOne.isHidden = false
            LeftTwo.isHidden = true
            LeftThree.isHidden = false
            CenterSquare.isHidden = true
            RightOne.isHidden = false
            RightTwo.isHidden = true
            RightThree.isHidden = false
        case 5:
            LeftOne.isHidden = false
            LeftTwo.isHidden = true
            LeftThree.isHidden = false
            CenterSquare.isHidden = false
            RightOne.isHidden = false
            RightTwo.isHidden = true
            RightThree.isHidden = false
        case 6:
            LeftOne.isHidden = false
            LeftTwo.isHidden = false
            LeftThree.isHidden = false
            CenterSquare.isHidden = true
            RightOne.isHidden = false
            RightTwo.isHidden = false
            RightThree.isHidden = false
        default:
            break
        }
        
    }

}
