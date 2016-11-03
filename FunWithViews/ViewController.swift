//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //The following are variables that can be used with in this class
    var count = 0
    
    @IBOutlet weak var topLeftView: UIView!
    @IBOutlet weak var middleLeftView: UIView!
    @IBOutlet weak var bottomLeftView: UIView!
    @IBOutlet weak var middleView: UIView!
    @IBOutlet weak var topRightView: UIView!
    @IBOutlet weak var middleRightView: UIView!
    @IBOutlet weak var bottomRightView: UIView!
    
    @IBOutlet weak var scoreLabel1: UILabel!
    @IBOutlet weak var scoreLabel2: UILabel!
    @IBOutlet weak var scoreLabel3: UILabel!
    @IBOutlet weak var scoreLabel4: UILabel!
    @IBOutlet weak var scoreLabel5: UILabel!
    @IBOutlet weak var scoreLabel6: UILabel!
    
    func hideAllViews() {
        topLeftView.isHidden = true
        middleLeftView.isHidden = true
        bottomLeftView.isHidden = true
        middleView.isHidden = true
        topRightView.isHidden = true
        middleRightView.isHidden = true
        bottomRightView.isHidden = true
    }
    
    func viewSetup() {
        hideAllViews()
        
        scoreLabel1.isHidden = true
        scoreLabel2.isHidden = true
        scoreLabel3.isHidden = true
        scoreLabel4.isHidden = true
        scoreLabel5.isHidden = true
        scoreLabel6.isHidden = true
        
    }
    
    
    //runs once when view appears on device
    override func viewDidLoad() {
        super.viewDidLoad()
        //run func to make views and labels disappear
        viewSetup()
    }
    

    //Create functions for each rolled number's view
    
    func oneRolledView() {
        middleView.isHidden = false
    }
    
    func twoRolledView() {
        topLeftView.isHidden = false
        bottomRightView.isHidden = false
        
    }
    
    func threeRollView() {
        topLeftView.isHidden = false
        middleView.isHidden = false
        bottomRightView.isHidden = false
    }
    
    func fourRollView() {
        topLeftView.isHidden = false
        bottomLeftView.isHidden = false
        topRightView.isHidden = false
        bottomRightView.isHidden = false
    }
  
    func fiveRollView() {
        topLeftView.isHidden = false
        bottomLeftView.isHidden = false
        middleView.isHidden = false
        topRightView.isHidden = false
        bottomRightView.isHidden = false
    }
    
    func sixRollView() {
        topLeftView.isHidden = false
        middleLeftView.isHidden = false
        bottomLeftView.isHidden = false
        topRightView.isHidden = false
        middleRightView.isHidden = false
        bottomRightView.isHidden = false
    }
    
    
    //Create a function which selects certain views to show based on the dice roll value.
    func viewSelector(number: Int) {
        switch number {
        case 1:
            oneRolledView()
        case 2:
            twoRolledView()
        case 3:
            threeRollView()
        case 4:
            fourRollView()
        case 5:
            fiveRollView()
        case 6:
            sixRollView()
        default:
            print("Something went wrong... Try aagain.")
        }
        
    }
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    //Creates a func that makes the score label appear and put the score in it. It takes the result of randomDiceRoll
    func updateScoreLabel(num: Int) {
        let diceRoll = String(num)
        if scoreLabel1.isHidden {
            scoreLabel1.isHidden = false
            scoreLabel1.text = diceRoll
        } else if scoreLabel2.isHidden {
            scoreLabel2.isHidden = false
            scoreLabel2.text = diceRoll
        } else if scoreLabel3.isHidden {
            scoreLabel3.isHidden = false
            scoreLabel3.text = diceRoll
        } else if scoreLabel4.isHidden {
            scoreLabel4.isHidden = false
            scoreLabel4.text = diceRoll
        } else if scoreLabel5.isHidden {
            scoreLabel5.isHidden = false
            scoreLabel5.text = diceRoll
        }else if scoreLabel6.isHidden {
            scoreLabel6.isHidden = false
            scoreLabel6.text = diceRoll
            }
    }
    
    
    //Create a counter func that knows when the button has been pressed six times so you can reset the labels to being is.Hidden = true
    func counter() {
        count += 1
    }
    
    //Func executed once the dice is tapped
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        //We need to reset the view to be clear at every roll then populate it after
        hideAllViews()
        
        //counter
        counter()
        
        //make randomDiceRoll a constant to use it as the argument in the viewSelector func.
        let rollNumber = randomDiceRoll()
       
        if count <= 6 {
        
        //Based on the randomDiceRoll value the specific view will be selected to present
            viewSelector(number: rollNumber)
        
        //this takes the randomDiceRoll value and makes it appear in the scoreLabel
            updateScoreLabel(num: rollNumber)
        } else {
            viewSetup()
            count = 0
        }
    
    }
    
   
}


