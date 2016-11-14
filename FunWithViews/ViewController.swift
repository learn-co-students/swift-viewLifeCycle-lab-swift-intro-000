//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var fourthView: UIView!
    @IBOutlet weak var fifthView: UIView!
    @IBOutlet weak var sixthView: UIView!
    @IBOutlet weak var seventhView: UIView!
    
    @IBOutlet weak var firstRollResult: UILabel!
    @IBOutlet weak var secondRollResult: UILabel!
    @IBOutlet weak var thirdRollResult: UILabel!
    @IBOutlet weak var fourthRollResult: UILabel!
    @IBOutlet weak var fifthRollResult: UILabel!
    @IBOutlet weak var sixthRollResult: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstView.isHidden = true
        secondView.isHidden = true
        thirdView.isHidden = true
        fourthView.isHidden = true
        fifthView.isHidden = true
        sixthView.isHidden = true
        seventhView.isHidden = true
        
        firstRollResult.isHidden = true
        secondRollResult.isHidden = true
        thirdRollResult.isHidden = true
        fourthRollResult.isHidden = true
        fifthRollResult.isHidden = true
        sixthRollResult.isHidden = true
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        let diceScore: Int = randomDiceRoll()
        
        dieView(roll: diceScore)
        updateLabel(roll: diceScore)
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func dieView(roll: Int) {
        
        if sixthRollResult.isHidden {
            switch roll {
            case 1:
                firstView.isHidden = true
                secondView.isHidden = true
                thirdView.isHidden = true
                fourthView.isHidden = false
                fourthView.backgroundColor = UIColor.red
                fifthView.isHidden = true
                sixthView.isHidden = true
                seventhView.isHidden = true
            case 2:
                firstView.isHidden = true
                secondView.isHidden = true
                thirdView.isHidden = false
                fourthView.isHidden = true
                fourthView.backgroundColor = UIColor.black
                fifthView.isHidden = false
                sixthView.isHidden = true
                seventhView.isHidden = true
            case 3:
                firstView.isHidden = false
                secondView.isHidden = true
                thirdView.isHidden = true
                fourthView.isHidden = false
                fourthView.backgroundColor = UIColor.black
                fifthView.isHidden = true
                sixthView.isHidden = true
                seventhView.isHidden = false
            case 4:
                firstView.isHidden = false
                secondView.isHidden = false
                thirdView.isHidden = true
                fourthView.isHidden = true
                fourthView.backgroundColor = UIColor.black
                fifthView.isHidden = true
                sixthView.isHidden = false
                seventhView.isHidden = false
            case 5:
                firstView.isHidden = false
                secondView.isHidden = false
                thirdView.isHidden = true
                fourthView.isHidden = false
                fourthView.backgroundColor = UIColor.black
                fifthView.isHidden = true
                sixthView.isHidden = false
                seventhView.isHidden = false
            case 6:
                firstView.isHidden = false
                secondView.isHidden = false
                thirdView.isHidden = false
                fourthView.isHidden = true
                fourthView.backgroundColor = UIColor.black
                fifthView.isHidden = false
                sixthView.isHidden = false
                seventhView.isHidden = false
            default:
                firstView.isHidden = true
                secondView.isHidden = true
                thirdView.isHidden = true
                fourthView.isHidden = true
                fifthView.isHidden = true
                sixthView.isHidden = true
                seventhView.isHidden = true
            }
        }
    }
    
    func updateLabel(roll: Int) {
        
        let diceScore = String(roll)
        
        if firstRollResult.isHidden {
            firstRollResult.text = diceScore
            firstRollResult.isHidden = false
        } else if secondRollResult.isHidden {
            secondRollResult.text = diceScore
            secondRollResult.isHidden = false
        } else if thirdRollResult.isHidden {
            thirdRollResult.text = diceScore
            thirdRollResult.isHidden = false
        } else if fourthRollResult.isHidden {
            fourthRollResult.text = diceScore
            fourthRollResult.isHidden = false
        } else if fifthRollResult.isHidden {
            fifthRollResult.text = diceScore
            fifthRollResult.isHidden = false
        } else if (sixthRollResult != nil) {
            sixthRollResult.text = diceScore
            sixthRollResult.isHidden = false
        }
    }

}
