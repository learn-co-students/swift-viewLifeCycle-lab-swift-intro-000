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
        hideAllSquares()
        titleOfApp.isHidden = false
    }
    
    // Title of the app
    @IBOutlet weak var titleOfApp: UILabel!
    
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
        titleOfApp.isHidden = true
        resetTheDieView()
        let valueRolled = randomDiceRoll()
        updateLabelWithRoll(roll: valueRolled)
        rearrangeDie(roll: valueRolled)
    }
    
    func resetTheDieView() {
        topOfFarLeft.isHidden = true
        midFarLeft.isHidden = true
        bottomOfFarLeft.isHidden = true
        topOfDeadMiddle.isHidden = true
        deadMiddle.isHidden = true
        bottomOfDeadMiddle.isHidden = true
        topOfFarRight.isHidden = true
        midFarRight.isHidden = true
        bottomOfFarRight.isHidden = true
    }

    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    // Show or hide the blocks that represents the die rolled
    func rearrangeDie(roll: Int) {
        switch roll {
        case 1:
            deadMiddle.isHidden = false
            deadMiddle.backgroundColor = .red
        case 2:
            topOfDeadMiddle.isHidden = false
            topOfDeadMiddle.backgroundColor = .black
            bottomOfDeadMiddle.isHidden = false
            bottomOfDeadMiddle.backgroundColor = .black
        case 3:
            topOfFarLeft.isHidden = false
            topOfFarLeft.backgroundColor = .black
            deadMiddle.isHidden = false
            deadMiddle.backgroundColor = .black
            topOfFarRight.isHidden = false
            topOfFarRight.backgroundColor  = .black
        case 4:
            topOfDeadMiddle.isHidden  = false
            topOfDeadMiddle.backgroundColor = .black
            midFarRight.isHidden = false
            midFarRight.backgroundColor = .black
            bottomOfDeadMiddle.isHidden = false
            bottomOfDeadMiddle.backgroundColor = .black
            midFarLeft.isHidden = false
            midFarLeft.backgroundColor = .black
        case 5:
            topOfFarLeft.isHidden = false
            topOfFarLeft.backgroundColor = .black
            deadMiddle.isHidden = false
            deadMiddle.backgroundColor = .black
            topOfFarRight.isHidden = false
            topOfFarRight.backgroundColor = .black
            bottomOfFarRight.isHidden = false
            bottomOfFarRight.backgroundColor = .black
            bottomOfFarLeft.isHidden = false
            bottomOfFarLeft.backgroundColor = .black
        case 6:
            topOfFarLeft.isHidden = false
            topOfFarLeft.backgroundColor = .black
            topOfDeadMiddle.isHidden = false
            topOfDeadMiddle.backgroundColor = .black
            topOfFarRight.isHidden = false
            topOfFarRight.backgroundColor = .black
            bottomOfFarLeft.isHidden = false
            bottomOfFarLeft.backgroundColor = .black
            bottomOfDeadMiddle.isHidden = false
            bottomOfDeadMiddle.backgroundColor = .black
            bottomOfFarRight.isHidden = false
            bottomOfFarRight.backgroundColor = .black
        default:
            break
        }
        
    }
    
    // Updates one of the squares in the bottom row per rolled
    // Left this out, as updateLabelWithRoll was sufficient and I wanted the rows to be visible already
    /*func updateScore() {
        print()
    }*/
    
    // Updates the numbers within the box per roll
    // The boxes could also be written to appear along with the numbers, but it looks better to me with them all on already
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
    
    // As name suggests, hides all squares until the die is rolled.
    func hideAllSquares() {
        topOfFarLeft.isHidden = true
        midFarLeft.isHidden = true
        bottomOfFarLeft.isHidden = true
        topOfDeadMiddle.isHidden = true
        deadMiddle.isHidden = true
        bottomOfDeadMiddle.isHidden = true
        topOfFarRight.isHidden = true
        midFarRight.isHidden = true
        bottomOfFarRight.isHidden = true
        
        firstSquareNum.isHidden = true
        secondSquareNum.isHidden = true
        thirdSquareNum.isHidden = true
        fourthSquareNum.isHidden = true
        fifthSquareNum.isHidden = true
        sixthSquareNum.isHidden = true
        
        /*
        bottomRow1.isHidden = true
        bottomRow2.isHidden = true
        bottomRow3.isHidden = true
        bottomRow4.isHidden = true
        bottomRow5.isHidden = true
        bottomRow6.isHidden = true
        */
    }
    
    /* As name suggests, the bottom row of squares are opaque once the die is rolled.
    func bottomRowAppearsWithFirstRoll() {
        bottomRow1.isHidden = false
        bottomRow2.isHidden = false
        bottomRow3.isHidden = false
        bottomRow4.isHidden = false
        bottomRow5.isHidden = false
        bottomRow6.isHidden = false
    }*/
    
    
}
