//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var blackSquares: [UIView]!
    
    @IBOutlet weak var labeOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    
    var diceRoll = 0
    
    var count = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        diceRoll = randomDiceRoll()
        
        switch count {
            
        case 1:
            labeOne.isHidden = false
            labeOne.text = String(diceRoll)
            updateView(roll: diceRoll)
            
        case 2:
            labelTwo.isHidden = false
            labelTwo.text = String(diceRoll)
            updateView(roll: diceRoll)
            
        case 3:
            labelThree.isHidden = false
            labelThree.text = String(diceRoll)
            updateView(roll: diceRoll)
            
        case 4:
            labelFour.isHidden = false
            labelFour.text = String(diceRoll)
            updateView(roll: diceRoll)
            
        case 5:
            labelFive.isHidden = false
            labelFive.text = String(diceRoll)
            updateView(roll: diceRoll)
            
        case 6:
            labelSix.isHidden = false
            labelSix.text = String(diceRoll)
            updateView(roll: diceRoll)
            
        default:
            print("start over")
        }
        
        count += 1
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func updateView(roll:Int) {
        
        if roll == 1 {
            
            blackSquares[0].isHidden = true
            blackSquares[1].isHidden = true
            blackSquares[2].isHidden = true
            blackSquares[3].isHidden = false
            blackSquares[4].isHidden = true
            blackSquares[5].isHidden = true
            blackSquares[6].isHidden = true
            
        } else if roll == 2 {
            
            blackSquares[0].isHidden = true
            blackSquares[1].isHidden = true
            blackSquares[2].isHidden = false
            blackSquares[3].isHidden = true
            blackSquares[4].isHidden = false
            blackSquares[5].isHidden = true
            blackSquares[6].isHidden = true
            
        } else if roll == 3 {
            
            blackSquares[0].isHidden = true
            blackSquares[1].isHidden = true
            blackSquares[2].isHidden = false
            blackSquares[3].isHidden = false
            blackSquares[4].isHidden = false
            blackSquares[5].isHidden = true
            blackSquares[6].isHidden = true
            
        } else if roll == 4 {
            
            blackSquares[0].isHidden = false
            blackSquares[1].isHidden = true
            blackSquares[2].isHidden = false
            blackSquares[3].isHidden = true
            blackSquares[4].isHidden = false
            blackSquares[5].isHidden = true
            blackSquares[6].isHidden = false
            
        } else if roll == 5 {
            
            blackSquares[0].isHidden = false
            blackSquares[1].isHidden = true
            blackSquares[2].isHidden = false
            blackSquares[3].isHidden = false
            blackSquares[4].isHidden = false
            blackSquares[5].isHidden = true
            blackSquares[6].isHidden = false
            
        } else {
            
            blackSquares[0].isHidden = false
            blackSquares[1].isHidden = false
            blackSquares[2].isHidden = false
            blackSquares[3].isHidden = true
            blackSquares[4].isHidden = false
            blackSquares[5].isHidden = false
            blackSquares[6].isHidden = false
        }
    }

}
