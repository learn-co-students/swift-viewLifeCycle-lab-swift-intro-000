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
    }
    
    // Far left set of squares horizontally
    @IBOutlet weak var topOfFarLeft: UIView!
    @IBOutlet weak var midFarLeft: UIView!
    @IBOutlet weak var bottomOfFarLeft: UIView!
    
    // Middle set of squares horizontally
    @IBOutlet weak var topOfDeadMiddle: UIView!
    @IBOutlet weak var deadMiddle: UIView!
    @IBOutlet weak var bottomOfDeadMiddle: UIView!
    
    // Far right set of squares horizontally
    @IBOutlet weak var topOfFarRight: UIView!
    @IBOutlet weak var midFarRight: UIView!
    @IBOutlet weak var bottomOfFarRight: UIView!
    
    // The bottom row of 6 squares in order
    @IBOutlet weak var bottomRow1: UIView!
    @IBOutlet weak var bottomRow2: UIView!
    @IBOutlet weak var bottomRow3: UIView!
    @IBOutlet weak var bottomRow4: UIView!
    @IBOutlet weak var bottomRow5: UIView!
    @IBOutlet weak var bottomRow6: UIView!
    
    // Numbers being displayed within the bottom row
    @IBOutlet weak var firstSquareNum: UILabel!
    @IBOutlet weak var secondSquareNum: UILabel!
    @IBOutlet weak var thirdSquareNum: UILabel!
    @IBOutlet weak var fourthSquareNum: UILabel!
    @IBOutlet weak var fifthSquareNum: UILabel!
    @IBOutlet weak var sixthSquareNum: UILabel!
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let valueRolled = randomDiceRoll()
//        print(randomDiceRoll())
        print(valueRolled)
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    // Show or hide the blocks that represents the die rolled
    func rearrangeDie() {
        print()
    }
    
    // Updates one of the squares in the bottom row per rolled
    func updateScore() {
        print()
    }
    
    func updateLabelWithRoll(roll: Int) {
        let diceRoll = String(roll)
        
        if firstSquareNum.isHidden {
            firstSquareNum.text = diceRoll
            firstSquareNum.isHidden = false
        } else if secondSquareNum.isHidden {
            secondSquareNum.text = diceRoll
            secondSquareNum.isHidden = false
        } else if thirdSquareNum.isHidden {
            thirdSquareNum.text = diceRoll
            thirdSquareNum.isHidden = false
        } else if fourthSquareNum.isHidden {
            fourthSquareNum.text = diceRoll
            fourthSquareNum.isHidden = false
        } else if fifthSquareNum.isHidden {
            fifthSquareNum.text = diceRoll
            fifthSquareNum.isHidden = false
        } else if sixthSquareNum.isHidden {
            sixthSquareNum.text = diceRoll
            sixthSquareNum.isHidden = false
        }
        
    }
    
}
