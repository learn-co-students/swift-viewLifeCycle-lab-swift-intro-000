//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Vars, Outlets and Actions
    @IBOutlet weak var diceButton: UIButton!

    @IBAction func diceButtonPressed(_ sender: UIButton) {
        rollTheDice()

    }

    @IBOutlet weak var square1: UIView!
    @IBOutlet weak var square2: UIView!
    @IBOutlet weak var square3: UIView!
    @IBOutlet weak var square4: UIView!
    @IBOutlet weak var square5: UIView!
    @IBOutlet weak var square6: UIView!
    @IBOutlet weak var square7: UIView!

    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    @IBOutlet weak var textMessage: UILabel!

    var rollCount = 0

    //MARK: Functions
    func showOrHideSquares(action: String) {
        if action == "show" {
            square1.isHidden = false
            square2.isHidden = false
            square3.isHidden = false
            square4.isHidden = false
            square5.isHidden = false
            square6.isHidden = false
            square7.isHidden = false
        } else if action == "hide" {
            square1.isHidden = true
            square2.isHidden = true
            square3.isHidden = true
            square4.isHidden = true
            square5.isHidden = true
            square6.isHidden = true
            square7.isHidden = true
        }
    }

    func showOne() {
        showOrHideSquares(action: "hide")
        square7.isHidden = false
    }

    func showTwo() {
        showOrHideSquares(action: "hide")
        square2.isHidden = false
        square5.isHidden = false
    }

    func showThree() {
        showOrHideSquares(action: "hide")
        square3.isHidden = false
        square4.isHidden = false
        square7.isHidden = false
    }

    func showFour() {
        showOrHideSquares(action: "show")
        square2.isHidden = true
        square7.isHidden = true
        square5.isHidden = true

    }

    func showFive() {
        showOrHideSquares(action: "show")
        square2.isHidden = true
        square5.isHidden = true
    }

    func showSix() {
        showOrHideSquares(action: "show")
        square7.isHidden = true
    }

    func displayLabel(count: Int, number: Int) {
        switch count {
        case 1:
            labelOne.text = String(number)
        case 2:
            labelTwo.text = String(number)
        case 3:
            labelThree.text = String(number)
        case 4:
            labelFour.text = String(number)
        case 5:
            labelFive.text = String(number)
        case 6:
            labelSix.text = String(number)
        default:
            break
        }
    }

    func displayDiceNumbers(number: Int) {
        switch number {
        case 1:
            showOne()
        case 2:
            showTwo()
        case 3:
            showThree()
        case 4:
            showFour()
        case 5:
            showFive()
        case 6:
            showSix()
        default:
            break
        }
    }

    func restartRolls() {
        showOrHideSquares(action: "hide")
        labelOne.text = ""
        labelTwo.text = ""
        labelThree.text = ""
        labelFour.text = ""
        labelFive.text = ""
        labelSix.text = ""
        rollCount = 0
    }

    func rollTheDice() {

        if rollCount <= 5 {
            textMessage.text = ""
            rollCount += 1
            let diceNumber = randomDiceRoll()

            displayLabel(count: rollCount, number: diceNumber)
            displayDiceNumbers(number: diceNumber)

        } else {
            textMessage.text = "Maximum rolls reached! Roll dice again to start over"
            restartRolls()
        }

    }


    override func viewDidLoad() {
        super.viewDidLoad()
        showOrHideSquares(action: "hide")
    }

    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
