//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        spotOne.isHidden = true
        spotTwo.isHidden = true
        spotThree.isHidden = true
        spotFour.isHidden = true
        spotFive.isHidden = true
        spotSix.isHidden = true
        resultOne.isHidden = true
        resultTwo.isHidden = true
        resultThree.isHidden = true
        resultFour.isHidden = true
        resultFive.isHidden = true
        resultSix.isHidden = true
    }
    
    
    
    @IBOutlet weak var spotOne: UIView!
    @IBOutlet weak var spotTwo: UIView!
    @IBOutlet weak var spotThree: UIView!
    @IBOutlet weak var spotFour: UIView!
    @IBOutlet weak var spotFive: UIView!
    @IBOutlet weak var spotSix: UIView!
    @IBOutlet weak var spotSeven: UIView!
    
    @IBOutlet weak var resultOne: UILabel!
    @IBOutlet weak var resultTwo: UILabel!
    @IBOutlet weak var resultThree: UILabel!
    @IBOutlet weak var resultFour: UILabel!
    @IBOutlet weak var resultFive: UILabel!
    @IBOutlet weak var resultSix: UILabel!
    

    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
            func updateLabelWithRoll(roll: Int) {
            
                let diceScore = String(roll)
                
                if resultOne.isHidden {
                    resultOne.text = diceScore
                    resultOne.isHidden = false
                } else if resultTwo.isHidden {
                    resultTwo.text = diceScore
                    resultTwo.isHidden = false
                } else if resultThree.isHidden {
                    resultThree.text = diceScore
                    resultThree.isHidden = false
                } else if resultFour.isHidden {
                    resultFour.text = diceScore
                    resultFour.isHidden = false
                } else if resultFive.isHidden {
                    resultFive.text = diceScore
                    resultFive.isHidden = false
                } else if resultSix.isHidden {
                    resultSix.text = diceScore
                    resultSix.isHidden = false
                }
            }
        
        func rearrangeDie(rollscore: Int) {
            if rollscore == 1{
                spotOne.isHidden = true
                spotTwo.isHidden = false
                spotThree.isHidden = false
                spotFour.isHidden = false
                spotFive.isHidden = false
                spotSix.isHidden = false
            } else if rollscore == 2 {
                spotOne.isHidden = true
                spotTwo.isHidden = true
                spotThree.isHidden = false
                spotFour.isHidden = false
                spotFive.isHidden = false
                spotSix.isHidden = false
            } else if rollscore == 3 {
                spotOne.isHidden = true
                spotTwo.isHidden = true
                spotThree.isHidden = true
                spotFour.isHidden = false
                spotFive.isHidden = false
                spotSix.isHidden = false
            } else if rollscore == 4 {
                spotOne.isHidden = true
                spotTwo.isHidden = true
                spotThree.isHidden = true
                spotFour.isHidden = true
                spotFive.isHidden = false
                spotSix.isHidden = false
            } else if rollscore == 5 {
                spotOne.isHidden = true
                spotTwo.isHidden = true
                spotThree.isHidden = true
                spotFour.isHidden = true
                spotFive.isHidden = true
                spotSix.isHidden = false
            } else if rollscore == 6 {
                spotOne.isHidden = true
                spotTwo.isHidden = true
                spotThree.isHidden = true
                spotFour.isHidden = true
                spotFive.isHidden = true
                spotSix.isHidden = false
            }
            
        }
        
    }

}
