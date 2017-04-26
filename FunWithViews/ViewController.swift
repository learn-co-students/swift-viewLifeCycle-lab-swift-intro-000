//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blockOne: UIView!
    @IBOutlet weak var blockTwo: UIView!
    @IBOutlet weak var blockThree: UIView!
    @IBOutlet weak var blockFour: UIView!
    @IBOutlet weak var blockFive: UIView!
    @IBOutlet weak var blockSix: UIView!
    @IBOutlet weak var blockSeven: UIView!
    
    @IBOutlet weak var displayOne: UILabel!
    @IBOutlet weak var displayTwo: UILabel!
    @IBOutlet weak var displayThree: UILabel!
    @IBOutlet weak var displayFour: UILabel!
    @IBOutlet weak var displayFive: UILabel!
    @IBOutlet weak var displaySix: UILabel!
    var counter = 0

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blockOne.isHidden = true
        blockTwo.isHidden = true
        blockThree.isHidden = true
        blockFour.isHidden = true
        blockFive.isHidden = true
        blockSix.isHidden = true
        blockSeven.isHidden = true
        
        displayOne.isHidden = true
        displayTwo.isHidden = true
        displayThree.isHidden = true
        displayFour.isHidden = true
        displayFive.isHidden = true
        displaySix.isHidden = true
        
    }
    
    @IBAction func tappedDice(_ sender: Any) {
        counter += 1
        blockOne.isHidden = true
        blockTwo.isHidden = true
        blockThree.isHidden = true
        blockFour.isHidden = true
        blockFive.isHidden = true
        blockSix.isHidden = true
        blockSeven.isHidden = true
        
        let num = randomDiceRoll()
        updateScore(roll: num)
                if num == 1 {
                    blockOne.isHidden = false
                } else if num == 2 {
                    blockOne.isHidden = false
                    blockTwo.isHidden = false
                } else if num == 3 {
                    blockOne.isHidden = false
                    blockTwo.isHidden = false
                    blockThree.isHidden = false
                } else if num == 4 {
                    blockOne.isHidden = false
                    blockTwo.isHidden = false
                    blockThree.isHidden = false
                    blockFour.isHidden = false
                } else if num == 5 {
                    blockOne.isHidden = false
                    blockTwo.isHidden = false
                    blockThree.isHidden = false
                    blockFour.isHidden = false
                    blockFive.isHidden = false
                } else {
                    blockOne.isHidden = false
                    blockTwo.isHidden = false
                    blockThree.isHidden = false
                    blockFour.isHidden = false
                    blockFive.isHidden = false
                    blockSix.isHidden = false
                }
        print(num)
        print("Number of Spin = \(counter)")

    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    func updateScore(roll: Int) {
        let score = String(roll)
        if counter == 1 {
            displayOne.text = score
            displayOne.isHidden = false
        } else if counter == 2 {
            displayTwo.text = score
            displayTwo.isHidden = false
        } else if counter == 3 {
            displayThree.text = score
            displayThree.isHidden = false
        } else if counter == 4 {
            displayFour.text = score
            displayFour.isHidden = false
        } else if counter == 5 {
            displayFive.text = score
            displayFive.isHidden = false
        } else if counter == 6 {
            displaySix.text = score
            displaySix.isHidden = false
        }
        
        
    }

}
