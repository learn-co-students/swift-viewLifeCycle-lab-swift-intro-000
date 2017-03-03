//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topLeftView: UIView!
    @IBOutlet weak var middleLeftView: UIView!
    @IBOutlet weak var bottomLeftView: UIView!
    @IBOutlet weak var middleView: UIView!
    @IBOutlet weak var topRightView: UIView!
    @IBOutlet weak var middleRightView: UIView!
    @IBOutlet weak var bottomRightView: UIView!
    
    @IBOutlet weak var firstDieRoll: UILabel!
    @IBOutlet weak var secondDieRoll: UILabel!
    @IBOutlet weak var thirdDieRoll: UILabel!
    @IBOutlet weak var fourthDieRoll: UILabel!
    @IBOutlet weak var fifthDieRoll: UILabel!
    @IBOutlet weak var sixthDieRoll: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topLeftView.isHidden = true
        middleLeftView.isHidden = true
        bottomLeftView.isHidden = true
        middleView.isHidden = true
        topRightView.isHidden = true
        middleRightView.isHidden = true
        bottomRightView.isHidden = true
        firstDieRoll.isHidden = true
        secondDieRoll.isHidden = true
        thirdDieRoll.isHidden = true
        fourthDieRoll.isHidden = true
        fifthDieRoll.isHidden = true
        sixthDieRoll.isHidden = true
        
        
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        topLeftView.isHidden = true
        middleLeftView.isHidden = true
        bottomLeftView.isHidden = true
        middleView.isHidden = true
        topRightView.isHidden = true
        middleRightView.isHidden = true
        bottomRightView.isHidden = true
        
        let randomNumber = randomDiceRoll()
        
        switch randomNumber {
        case 1:
            middleView.isHidden = false
        case 2:
            topLeftView.isHidden = false
            bottomRightView.isHidden = false
        case 3:
            topRightView.isHidden = false
            middleView.isHidden = false
            bottomLeftView.isHidden = false
        case 4:
            topLeftView.isHidden = false
            topRightView.isHidden = false
            bottomLeftView.isHidden = false
            bottomRightView.isHidden = false
        case 5:
            topLeftView.isHidden = false
            topRightView.isHidden = false
            middleView.isHidden = false
            bottomLeftView.isHidden = false
            bottomRightView.isHidden = false
        case 6:
            topLeftView.isHidden = false
            topRightView.isHidden = false
            middleLeftView.isHidden = false
            middleRightView.isHidden = false
            bottomLeftView.isHidden = false
            bottomRightView.isHidden = false
        default:
            print("something went wrong!")
        }
        
        updateLabelWithRoll(roll: randomNumber)
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if firstDieRoll.isHidden {
            firstDieRoll.text = diceScore
            firstDieRoll.isHidden = false
        } else if secondDieRoll.isHidden {
            secondDieRoll.text = diceScore
            secondDieRoll.isHidden = false
        } else if thirdDieRoll.isHidden {
            thirdDieRoll.text = diceScore
            thirdDieRoll.isHidden = false
        } else if fourthDieRoll.isHidden {
            fourthDieRoll.text = diceScore
            fourthDieRoll.isHidden = false
        } else if fifthDieRoll.isHidden {
            fifthDieRoll.text = diceScore
            fifthDieRoll.isHidden = false
        } else if sixthDieRoll.isHidden {
            sixthDieRoll.text = diceScore
            sixthDieRoll.isHidden = false
        } else {
            firstDieRoll.text = secondDieRoll.text
            secondDieRoll.text = thirdDieRoll.text
            thirdDieRoll.text = fourthDieRoll.text
            fourthDieRoll.text = fifthDieRoll.text
            fifthDieRoll.text = sixthDieRoll.text
            sixthDieRoll.text = diceScore
            
        }
      
    }

}
