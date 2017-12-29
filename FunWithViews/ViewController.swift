//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
        // This is for the black view
        @IBOutlet weak var one: UIView!
        @IBOutlet weak var two: UIView!
        @IBOutlet weak var three: UIView!
        @IBOutlet weak var four: UIView!
        @IBOutlet weak var five: UIView!
        @IBOutlet weak var six: UIView!
        @IBOutlet weak var seven: UIView!
    
        
        //This is for the colored view
        @IBOutlet weak var coloredOne: UIView!
        @IBOutlet weak var coloredTwo: UIView!
        @IBOutlet weak var coloredThree: UIView!
        @IBOutlet weak var coloredFour: UIView!
        @IBOutlet weak var coloredFive: UIView!
        @IBOutlet weak var coloredSix: UIView!
        
        //This is for the Label
        @IBOutlet weak var labelOne: UILabel!
        @IBOutlet weak var labelTwo: UILabel!
        @IBOutlet weak var labelThree: UILabel!
        @IBOutlet weak var labelFour: UILabel!
        @IBOutlet weak var labelFive: UILabel!
        @IBOutlet weak var labelSix: UILabel!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            one.isHidden = true // Hides the view 'one'
            two.isHidden = true
            three.isHidden = true
            four.isHidden = true
            five.isHidden = true
            six.isHidden = true
            seven.isHidden = true
            
            coloredOne.isHidden = true // Hides the view 'coloredOne'
            coloredTwo.isHidden = true
            coloredThree.isHidden = true
            coloredFour.isHidden = true
            coloredFive.isHidden = true
            coloredSix.isHidden = true
            
            labelOne.isHidden = true // Hides the Label
            labelTwo.isHidden = true
            labelThree.isHidden = true
            labelFour.isHidden = true
            labelFive.isHidden = true
            labelSix.isHidden = true
        }
        
        @IBAction func dieButtonTapped(_ sender: AnyObject) {
            let rollDie = randomDiceRoll()
            // Two methods being called when button tapped
            showBlack(rollDie)
            showColored(rollDie)
        }
        
        func hidesBlackBlocks () {
            one.isHidden = true // Hides the view 'one'
            two.isHidden = true
            three.isHidden = true
            four.isHidden = true
            five.isHidden = true
            six.isHidden = true
            seven.isHidden = true
        }
        
        func valueRoll () {
            coloredOne.isHidden = true // Hides the view 'coloredOne'
            coloredTwo.isHidden = true
            coloredThree.isHidden = true
            coloredFour.isHidden = true
            coloredFive.isHidden = true
            coloredSix.isHidden = true
            
            labelOne.isHidden = true // Hides the Label
            labelTwo.isHidden = true
            labelThree.isHidden = true
            labelFour.isHidden = true
            labelFive.isHidden = true
            labelSix.isHidden = true
        }
        
        // To show the blacks boxes
        func showBlack(_ dice: Int) {
            hidesBlackBlocks()
            // Algoritms
            if dice == 1 {
                four.isHidden = false // Show the view 'four'
            }
            else if dice == 2 {
                six.isHidden = false // So on...
                two.isHidden = false
            }
            else if dice == 3 {
                five.isHidden = false
                four.isHidden = false
                three.isHidden = false
            }
            else if dice == 4 {
                one.isHidden = false
                seven.isHidden = false
                three.isHidden = false
                five.isHidden = false
            }
            else if dice == 5 {
                one.isHidden = false
                seven.isHidden = false
                three.isHidden = false
                five.isHidden = false
                four.isHidden = false
            }
            else if dice == 6 {
                one.isHidden = false
                two.isHidden = false
                three.isHidden = false
                seven.isHidden = false
                five.isHidden = false
                six.isHidden = false
            }
            // End
        }
        
        // To show the colored boxes
        func showColored (_ dice: Int) {
            // Convert the 'diceScore' to String type so it can be printed on Label
            let diceScore = String (dice)
            // The label is still hiddens, change the hidden value first and show the score in it
            if labelOne.isHidden {
                labelOne.text = diceScore
                labelOne.isHidden = false
                coloredOne.isHidden = false
            }
            else if labelTwo.isHidden {
                labelTwo.text = diceScore
                labelTwo.isHidden = false
                coloredTwo.isHidden = false
            }
            else if labelThree.isHidden {
                labelThree.text = diceScore
                labelThree.isHidden = false
                coloredThree.isHidden = false
            }
            else if labelFour.isHidden {
                labelFour.text = diceScore
                labelFour.isHidden = false
                coloredFour.isHidden = false
            }
            else if labelFive.isHidden {
                labelFive.text = diceScore
                labelFive.isHidden = false
                coloredFive.isHidden = false
            }
            else if labelSix.isHidden {
                labelSix.text = diceScore
                labelSix.isHidden = false
                coloredSix.isHidden = false
            }
            else {
                valueRoll()
                labelOne.text = diceScore
                labelOne.isHidden = false
                coloredOne.isHidden = false
            }
        }
        
        // Returns back a random Int (1, 2, 3, 4, 5, or 6)
        func randomDiceRoll() -> Int {
            return Int(arc4random_uniform(6) + 1)
        }
        
    }
