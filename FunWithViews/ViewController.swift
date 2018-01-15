//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var blackLabelOne: UIView!
    
    @IBOutlet weak var blackLabelTwo: UIView!
    
    @IBOutlet weak var blackLabelThree: UIView!
    
    @IBOutlet weak var blackLabelFour: UIView!
    
    @IBOutlet weak var blackLabelFive: UIView!
    
    
    @IBOutlet weak var blackLabelSix: UIView!
    
    @IBOutlet weak var blackLabelSeven: UIView!
    
    
    @IBOutlet weak var rollDieOne: UILabel!
    
    @IBOutlet weak var rollDieTwo: UILabel!
    
    @IBOutlet weak var rollDieThree: UILabel!
    
    @IBOutlet weak var rollDieFour: UILabel!
    
    @IBOutlet weak var rollDieFive: UILabel!
    
    @IBOutlet weak var rollDieSix: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetUI()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        blackLabelOne.isHidden = true
        blackLabelTwo.isHidden = true
        blackLabelThree.isHidden = true
        blackLabelFour.isHidden = true
        blackLabelFive.isHidden = true
        blackLabelSix.isHidden = true
        blackLabelSeven.isHidden = true
        
        let randomNum = randomDiceRoll()
        
        
        rearrangeDie(roll: randomNum)
        updateScore(roll: randomNum)
        
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func rearrangeDie(roll: Int) {
        let score = String(roll)
        switch score {
        case "1":
            blackLabelOne.isHidden = false
        case "2":
            blackLabelOne.isHidden = false
            blackLabelFour.isHidden = false
        case "3":
            blackLabelOne.isHidden = false
            blackLabelFour.isHidden = false
            blackLabelSeven.isHidden = false
        case "4":
            blackLabelTwo.isHidden = false
            blackLabelOne.isHidden = false
            blackLabelSix.isHidden = false
            blackLabelSeven.isHidden = false
        case "5":
            blackLabelTwo.isHidden = false
            blackLabelOne.isHidden = false
            blackLabelSix.isHidden = false
            blackLabelSeven.isHidden = false
            blackLabelFour.isHidden = false
        case "6":
            blackLabelTwo.isHidden = false
            blackLabelOne.isHidden = false
            blackLabelSix.isHidden = false
            blackLabelSeven.isHidden = false
            blackLabelThree.isHidden = false
            blackLabelFive.isHidden = false
        default :
            resetUI()
        
            
        }
        
    }
    func updateScore(roll: Int) {
        
        let score = String(roll)
        if rollDieOne.isHidden {
            rollDieOne.text = score
            rollDieOne.isHidden = false
        } else if rollDieTwo.isHidden {
            rollDieTwo.text = score
            rollDieTwo.isHidden = false
        } else if rollDieThree.isHidden {
            rollDieThree.text = score
            rollDieThree.isHidden = false
        } else if rollDieFour.isHidden {
            rollDieFour.text = score
            rollDieFour.isHidden = false
        } else if rollDieFive.isHidden {
            rollDieFive.text = score
            rollDieFive.isHidden = false
        } else if rollDieSix.isHidden {
            rollDieSix.text = score
            rollDieSix.isHidden = false
        } else {
            resetUI()
        }
        
    }
    
    func resetUI() {
        blackLabelOne.isHidden = true
        blackLabelTwo.isHidden = true
        blackLabelThree.isHidden = true
        blackLabelFour.isHidden = true
        blackLabelFive.isHidden = true
        blackLabelSix.isHidden = true
        blackLabelSeven.isHidden = true
        rollDieOne.isHidden = true
        rollDieTwo.isHidden = true
        rollDieThree.isHidden = true
        rollDieFour.isHidden = true
        rollDieFive.isHidden = true
        rollDieSix.isHidden = true
    }
    
    
    
    
    

}
