//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var orangeLabel: UILabel!
    @IBOutlet weak var yellowLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var purpleLabel: UILabel!
    
    
    
    @IBOutlet weak var viewOne: UIView!
    @IBOutlet weak var viewTwo: UIView!
    @IBOutlet weak var viewThree: UIView!
    @IBOutlet weak var viewFour: UIView!
    @IBOutlet weak var viewFive: UIView!
    @IBOutlet weak var viewSix: UIView!
    @IBOutlet weak var viewSeven: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewOne.isHidden = true
        viewTwo.isHidden = true
        viewThree.isHidden = true
        viewFour.isHidden = true
        viewFive.isHidden = true
        viewSix.isHidden = true
        viewSeven.isHidden = true
        
        redLabel.isHidden = true
        orangeLabel.isHidden = true
        yellowLabel.isHidden = true
        greenLabel.isHidden = true
        blueLabel.isHidden = true
        purpleLabel.isHidden = true
        
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        displayViews(roll: randomDiceRoll())
        
    }
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func resetViews() {
        viewOne.isHidden = true
        viewTwo.isHidden = true
        viewThree.isHidden = true
        viewFour.isHidden = true
        viewFive.isHidden = true
        viewSix.isHidden = true
        viewSeven.isHidden = true
    }
    
    func resetScores() {
        redLabel.isHidden = true
        orangeLabel.isHidden = true
        yellowLabel.isHidden = true
        greenLabel.isHidden = true
        blueLabel.isHidden = true
        purpleLabel.isHidden = true
    }
    
    func diceResult(score: Int) {
        let scoreString = String(score)
        if redLabel.isHidden {
            redLabel.isHidden = false
            redLabel.text = scoreString
        }
        else if orangeLabel.isHidden {
            orangeLabel.isHidden = false
            orangeLabel.text = scoreString
        }
        else if yellowLabel.isHidden {
            yellowLabel.isHidden = false
            yellowLabel.text = scoreString
        }
        else if greenLabel.isHidden {
            greenLabel.isHidden = false
            greenLabel.text = scoreString
        }
        else if blueLabel.isHidden {
            blueLabel.isHidden = false
            blueLabel.text = scoreString
        }
        else if purpleLabel.isHidden {
            purpleLabel.isHidden = false
            purpleLabel.text = scoreString
        }
        else {
            print("Game Over")
        }
    }
    
    func displayViews(roll: Int) {
        diceResult(score: roll)
        
        resetViews()
        
        switch roll {
        case 1:
            viewFour.isHidden = false
        case 2:
            viewTwo.isHidden = false
            viewSix.isHidden = false
        case 3:
            viewTwo.isHidden = false
            viewFour.isHidden = false
            viewSix.isHidden = false
        case 4:
            viewOne.isHidden = false
            viewFive.isHidden = false
            viewSeven.isHidden = false
            viewFour.isHidden = false
        case 5:
            viewOne.isHidden = false
            viewTwo.isHidden = false
            viewThree.isHidden = false
            viewFive.isHidden = false
            viewSeven.isHidden = false
        case 6:
            viewOne.isHidden = false
            viewTwo.isHidden = false
            viewThree.isHidden = false
            viewFour.isHidden = false
            viewFive.isHidden = false
            viewSix.isHidden = false
            viewSeven.isHidden = false
        default:
            print("Error")
            
        }
    }

}
