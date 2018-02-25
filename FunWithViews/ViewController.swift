//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dotOne: UIView!
    @IBOutlet weak var dotTwo: UIView!
    @IBOutlet weak var dotThree: UIView!
    @IBOutlet weak var dotFour: UIView!
    @IBOutlet weak var dotFive: UIView!
    @IBOutlet weak var dotSix: UIView!
    @IBOutlet weak var dotSeven: UIView!
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // hides all dots by default
        dotOne.isHidden = true
        dotTwo.isHidden = true
        dotThree.isHidden = true
        dotFour.isHidden = true
        dotFive.isHidden = true
        dotSix.isHidden = true
        dotSeven.isHidden = true
        
        // hides all rolls by default
        labelOne.isHidden = true
        labelTwo.isHidden = true
        labelThree.isHidden = true
        labelFour.isHidden = true
        labelFive.isHidden = true
        labelSix.isHidden = true
    
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        randomDiceRoll()
    }
    
    
    func displayRoll(roll: Int) {
        
        
        if labelOne.isHidden {
        labelOne.text = "\(roll)"
        labelOne.isHidden = false
        print("\(roll) displayed in label 1")
            
        } else if labelTwo.isHidden {
        labelTwo.text = "\(roll)"
        labelTwo.isHidden = false
        print("\(roll) displayed in label 2")
        
        } else if labelThree.isHidden {
        labelThree.text = "\(roll)"
        labelThree.isHidden = false
        print("\(roll) displayed in label 3")
            
        } else if labelFour.isHidden {
        labelFour.text = "\(roll)"
        labelFour.isHidden = false
        print("\(roll) displayed in label 4")
            
        } else if labelFive.isHidden {
        labelFive.text = "\(roll)"
        labelFive.isHidden = false
        print("\(roll) displayed in label 5")
            
        } else if labelSix.isHidden {
        labelSix.text = "\(roll)"
        labelSix.isHidden = false
        var result = print("\(roll) displayed in label 6")
        
        }
        
        
    
    }
    
    func displayDice(roll: Int){
        if roll == 1 {
            dotOne.isHidden = true
            dotTwo.isHidden = true
            dotThree.isHidden = true
            dotFour.isHidden = false
            dotFive.isHidden = true
            dotSix.isHidden = true
            dotSeven.isHidden = true
        } else if roll == 2 {
            dotOne.isHidden = false
            dotTwo.isHidden = true
            dotThree.isHidden = true
            dotFour.isHidden = true
            dotFive.isHidden = true
            dotSix.isHidden = true
            dotSeven.isHidden = false
        } else if roll == 3 {
            dotOne.isHidden = false
            dotTwo.isHidden = true
            dotThree.isHidden = true
            dotFour.isHidden = false
            dotFive.isHidden = true
            dotSix.isHidden = true
            dotSeven.isHidden = false
        } else if roll == 4 {
            dotOne.isHidden = false
            dotTwo.isHidden = false
            dotThree.isHidden = true
            dotFour.isHidden = true
            dotFive.isHidden = true
            dotSix.isHidden = false
            dotSeven.isHidden = false
        } else if roll == 5 {
            dotOne.isHidden = false
            dotTwo.isHidden = false
            dotThree.isHidden = true
            dotFour.isHidden = false
            dotFive.isHidden = true
            dotSix.isHidden = false
            dotSeven.isHidden = false
        } else if labelSix.isHidden {
            dotOne.isHidden = false
            dotTwo.isHidden = false
            dotThree.isHidden = false
            dotFour.isHidden = true
            dotFive.isHidden = false
            dotSix.isHidden = false
            dotSeven.isHidden = false
        
        }
    }
  
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        let roll: Int = Int(arc4random_uniform(6) + 1)
       
        print("User rolled \(roll)")
        displayRoll(roll: roll)
        displayDice(roll: roll)
        
       
        return roll
    }

    
    
    

        
        

    }
    
    

