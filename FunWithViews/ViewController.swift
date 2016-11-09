//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstBox: UIView!
    @IBOutlet weak var secondBox: UIView!
    @IBOutlet weak var thirdBox: UIView!
    @IBOutlet weak var fourthBox: UIView!
    @IBOutlet weak var fifthBox: UIView!
    @IBOutlet weak var sixthBox: UIView!
    @IBOutlet weak var seventhBox: UIView!
    @IBOutlet weak var firstResult: UILabel!
    @IBOutlet weak var secondResult: UILabel!
    @IBOutlet weak var thirdResult: UILabel!
    @IBOutlet weak var fourthResult: UILabel!
    @IBOutlet weak var fifthResult: UILabel!
    @IBOutlet weak var sixthResult: UILabel!
    
    func clearResults() {
        firstResult.isHidden = true
        secondResult.isHidden = true
        thirdResult.isHidden = true
        fourthResult.isHidden = true
        fifthResult.isHidden = true
        sixthResult.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstBox.isHidden = true
        secondBox.isHidden = true
        thirdBox.isHidden = true
        fourthBox.isHidden = true
        fifthBox.isHidden = true
        sixthBox.isHidden = true
        seventhBox.isHidden = true
        firstResult.isHidden = true
        secondResult.isHidden = true
        thirdResult.isHidden = true
        fourthResult.isHidden = true
        fifthResult.isHidden = true
        sixthResult.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let currentRole = randomDiceRoll()
        
        switch currentRole {
        case 1:
            firstBox.isHidden = true
            secondBox.isHidden = true
            thirdBox.isHidden = true
            fourthBox.isHidden = false
            fifthBox.isHidden = true
            sixthBox.isHidden = true
            seventhBox.isHidden = true
        case 2:
            firstBox.isHidden = false
            secondBox.isHidden = true
            thirdBox.isHidden = true
            fourthBox.isHidden = true
            fifthBox.isHidden = true
            sixthBox.isHidden = true
            seventhBox.isHidden = false
        case 3:
            firstBox.isHidden = false
            secondBox.isHidden = true
            thirdBox.isHidden = true
            fourthBox.isHidden = false
            fifthBox.isHidden = true
            sixthBox.isHidden = true
            seventhBox.isHidden = false
        case 4:
            firstBox.isHidden = false
            secondBox.isHidden = true
            thirdBox.isHidden = false
            fourthBox.isHidden = true
            fifthBox.isHidden = false
            sixthBox.isHidden = true
            seventhBox.isHidden = false
        case 5:
            firstBox.isHidden = false
            secondBox.isHidden = true
            thirdBox.isHidden = false
            fourthBox.isHidden = false
            fifthBox.isHidden = false
            sixthBox.isHidden = true
            seventhBox.isHidden = false
        default:
            firstBox.isHidden = false
            secondBox.isHidden = false
            thirdBox.isHidden = false
            fourthBox.isHidden = true
            fifthBox.isHidden = false
            sixthBox.isHidden = false
            seventhBox.isHidden = false
        }
        
        func updateLabelWithRoll(roll: Int) {
            let diceScore = String(roll)
            
            if firstResult.isHidden {
                firstResult.text = diceScore
                firstResult.isHidden = false
            } else if secondResult.isHidden {
                secondResult.text = diceScore
                secondResult.isHidden = false
            } else if thirdResult.isHidden {
                thirdResult.text = diceScore
                thirdResult.isHidden = false
            } else if fourthResult.isHidden {
                fourthResult.text = diceScore
                fourthResult.isHidden = false
            } else if fifthResult.isHidden {
                fifthResult.text = diceScore
                fifthResult.isHidden = false
            } else if sixthResult.isHidden {
                sixthResult.text = diceScore
                sixthResult.isHidden = false
            } else {
                clearResults()
                firstResult.text = diceScore
                firstResult.isHidden = false
            }
        }
        
        updateLabelWithRoll(roll: currentRole)
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
}
