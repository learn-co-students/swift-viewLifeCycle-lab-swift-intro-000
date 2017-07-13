//
//  ViewController.swift
//  FunWithViews
//
//  Created by Whoopinstick on 7/12/17.
//  Copyright © 2017 Whoopinstick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        hideBoxes()
        hideRolls()
        ResetButton.isHidden = true
    }
    
    var diceRoll: Int = 0
    var rollCount: Int = 0
    
    @IBOutlet weak var TopLeftBox: UIView!
    
    @IBOutlet weak var TopMiddleBox: UIView!
    
    @IBOutlet weak var TopRightBox: UIView!
    
    @IBOutlet weak var MiddleLeftBox: UIView!
    
    @IBOutlet weak var MiddleMiddleBox: UIView!
    
    @IBOutlet weak var MiddleRightBox: UIView!
    
    @IBOutlet weak var BottomLeftBox: UIView!
    
    @IBOutlet weak var BottomMiddleBox: UIView!
    
    @IBOutlet weak var BottomRightBox: UIView!
    
    @IBOutlet weak var FirstResult: UILabel!
    
    @IBOutlet weak var SecondResult: UILabel!
    
    @IBOutlet weak var ThirdResult: UILabel!
    
    @IBOutlet weak var FourthResult: UILabel!
    
    @IBOutlet weak var FifthResult: UILabel!
    
    @IBOutlet weak var SixthResult: UILabel!
    
    @IBOutlet weak var ResetButton: UIButton!
    
    @IBAction func ResetDice(_ sender: Any) {
        resetGame()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        //hideBoxes()
        diceRoll = randomDiceRoll()
        
        rollCount += 1
        
        
        if rollCount < 6 {
            //print(diceRoll)
            displayRolls()
            displayDice()
        }
        
        else if rollCount == 6 {
            displayRolls()
            displayDice()
            ResetButton.isHidden = false
        }
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func displayDice() {
        if diceRoll == 1 {
            TopLeftBox.isHidden = false
        }
        else if diceRoll == 2 {
            TopLeftBox.isHidden = false
            BottomRightBox.isHidden = false
        }
        else if diceRoll == 3 {
            TopLeftBox.isHidden = false
            MiddleMiddleBox.isHidden = false
            BottomRightBox.isHidden = false
        }
        else if diceRoll == 4 {
            TopLeftBox.isHidden = false
            BottomLeftBox.isHidden = false
            TopRightBox.isHidden = false
            BottomRightBox.isHidden = false
        }
        else if diceRoll == 5 {
            TopLeftBox.isHidden = false
            BottomLeftBox.isHidden = false
            MiddleMiddleBox.isHidden = false
            TopRightBox.isHidden = false
            BottomRightBox.isHidden = false
        }
        else if diceRoll == 6 {
            TopLeftBox.isHidden = false
            MiddleLeftBox.isHidden = false
            BottomLeftBox.isHidden = false
            TopRightBox.isHidden = false
            MiddleRightBox.isHidden = false
            BottomRightBox.isHidden = false
        }
    }
    
    func displayRolls() {
        hideBoxes()
        
        if rollCount == 1 {
            FirstResult.isHidden = false
            FirstResult.text = String(diceRoll)
        }
        else if rollCount == 2 {
            SecondResult.isHidden = false
            SecondResult.text = String(diceRoll)
        }
        else if rollCount == 3 {
            ThirdResult.isHidden = false
            ThirdResult.text = String(diceRoll)
        }
        else if rollCount == 4 {
            FourthResult.isHidden = false
            FourthResult.text = String(diceRoll)
        }
        else if rollCount == 5 {
            FifthResult.isHidden = false
            FifthResult.text = String(diceRoll)
        }
        else if rollCount == 6 {
            SixthResult.isHidden = false
            SixthResult.text = String(diceRoll)
        }
    }
    
    func resetGame() {
        hideBoxes()
        hideRolls()
        diceRoll = 0
        rollCount = 0
        ResetButton.isHidden = true
    }
    
    
    func hideBoxes() {
        TopLeftBox.isHidden = true
        TopMiddleBox.isHidden = true
        TopRightBox.isHidden = true
        MiddleLeftBox.isHidden = true
        MiddleMiddleBox.isHidden = true
        MiddleRightBox.isHidden = true
        BottomLeftBox.isHidden = true
        BottomMiddleBox.isHidden = true
        BottomRightBox.isHidden = true
     
    }
    
    func hideRolls() {
        FirstResult.isHidden = true
        SecondResult.isHidden = true
        ThirdResult.isHidden = true
        FourthResult.isHidden = true
        FifthResult.isHidden = true
        SixthResult.isHidden = true
    }

}
