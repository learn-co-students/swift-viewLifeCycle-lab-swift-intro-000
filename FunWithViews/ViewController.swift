//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceOne: UIView!
    @IBOutlet weak var diceTwo: UIView!
    @IBOutlet weak var diceThree: UIView!
    @IBOutlet weak var diceFour: UIView!
    @IBOutlet weak var diceFive: UIView!
    @IBOutlet weak var diceSix: UIView!
    @IBOutlet weak var diceSeven: UIView!
    
    @IBOutlet weak var labeOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideViews()
        hideLabels()
      
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func hideViews() {
        diceOne.isHidden = true
        diceTwo.isHidden = true
        diceThree.isHidden = true
        diceFour.isHidden = true
        diceFive.isHidden = true
        diceSix.isHidden = true
        diceSeven.isHidden = true
    }
    
    func hideLabels() {
        labeOne.isHidden = true
        labelTwo.isHidden = true
        labelThree.isHidden = true
        labelFour.isHidden = true
        labelFive.isHidden = true
        labelSix.isHidden = true
    }
    
    func rearrangeDie(roll: Int) {
        switch roll {
        case 1:
            diceOne.isHidden = true
            diceTwo.isHidden = true
            diceThree.isHidden = true
            diceFour.isHidden = true
            diceFive.isHidden = true
            diceSix.isHidden = true
            diceSeven.isHidden = false
         
        case 2:
            diceOne.isHidden = true
            diceTwo.isHidden = true
            diceThree.isHidden = false
            diceFour.isHidden = false
            diceFive.isHidden = true
            diceSix.isHidden = true
            diceSeven.isHidden = true
            
        case 3:
            diceOne.isHidden = true
            diceTwo.isHidden = true
            diceThree.isHidden = false
            diceFour.isHidden = false
            diceFive.isHidden = true
            diceSix.isHidden = true
            diceSeven.isHidden = false
        
        case 4:
            diceOne.isHidden = false
            diceTwo.isHidden = true
            diceThree.isHidden = false
            diceFour.isHidden = false
            diceFive.isHidden = true
            diceSix.isHidden = false
            diceSeven.isHidden = true
         
        case 5:
            diceOne.isHidden = false
            diceTwo.isHidden = true
            diceThree.isHidden = false
            diceFour.isHidden = false
            diceFive.isHidden = true
            diceSix.isHidden = false
            diceSeven.isHidden = false
        
        case 6:
            diceOne.isHidden = false
            diceTwo.isHidden = false
            diceThree.isHidden = false
            diceFour.isHidden = false
            diceFive.isHidden = false
            diceSix.isHidden = false
            diceSeven.isHidden = true
            
        default:
            break
        }
    }
    
    func updateLabels(roll: Int) {
        //TODO show labels on at a time
        //TODO update shown label with theRoll
        
        let diceScore = String(roll)
        
        if labeOne.isHidden {
            labeOne.text = diceScore
            labeOne.isHidden = false
        } else if labelTwo.isHidden {
            labelTwo.text = diceScore
            labelTwo.isHidden = false
        } else if labelThree.isHidden {
            labelThree.text = diceScore
            labelThree.isHidden = false
        }   else if labelFour.isHidden {
            labelFour.text = diceScore
            labelFour.isHidden = false
        }   else if labelFive.isHidden {
            labelFive.text = diceScore
            labelFive.isHidden = false
        }   else if labelSix.isHidden {
            labelSix.text = diceScore
            labelSix.isHidden = false
        }
        

    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let theRoll = randomDiceRoll()
   
        rearrangeDie(roll: theRoll)
        updateLabels(roll: theRoll)
        
        }

}

