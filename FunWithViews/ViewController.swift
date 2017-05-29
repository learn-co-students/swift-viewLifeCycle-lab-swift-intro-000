//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Roll Squares
    @IBOutlet weak var display1: UIView!
    @IBOutlet weak var display2: UIView!
    @IBOutlet weak var display3: UIView!
    @IBOutlet weak var display4: UIView!
    @IBOutlet weak var display5: UIView!
    @IBOutlet weak var display6: UIView!
    
    // Black Squares
    @IBOutlet weak var square1: UIView!
    @IBOutlet weak var square2: UIView!
    @IBOutlet weak var square3: UIView!
    @IBOutlet weak var square4: UIView!
    @IBOutlet weak var square5: UIView!
    @IBOutlet weak var square6: UIView!
    
    // Labels
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Roll Squares
        display1.isHidden = true
        display2.isHidden = true
        display3.isHidden = true
        display4.isHidden = true
        display5.isHidden = true
        display6.isHidden = true
        
        // Black Squares
        square1.isHidden = true
        square2.isHidden = true
        square3.isHidden = true
        square4.isHidden = true
        square5.isHidden = true
        square6.isHidden = true
        
        // Labels
        label1.isHidden = true
        label2.isHidden = true
        label3.isHidden = true
        label4.isHidden = true
        label5.isHidden = true
        label6.isHidden = true
    }
    
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        
        var result = randomDiceRoll()
        updateLabelWithRoll(roll: result)
        
        switch result{
            case 1:
                square1.isHidden = false
                square2.isHidden = true
                square3.isHidden = true
                square4.isHidden = true
                square5.isHidden = true
                square6.isHidden = true
            case 2:
                square1.isHidden = false
                square2.isHidden = false
                square3.isHidden = true
                square4.isHidden = true
                square5.isHidden = true
                square6.isHidden = true
            case 3:
                square1.isHidden = true
                square2.isHidden = false
                square3.isHidden = false
                square4.isHidden = true
                square5.isHidden = false
                square6.isHidden = true
            case 4:
                square1.isHidden = false
                square2.isHidden = false
                square3.isHidden = true
                square4.isHidden = true
                square5.isHidden = false
                square6.isHidden = false
            case 5:
                square1.isHidden = false
                square2.isHidden = false
                square3.isHidden = false
                square4.isHidden = true
                square5.isHidden = false
                square6.isHidden = false
            case 6:
                square1.isHidden = false
                square2.isHidden = false
                square3.isHidden = false
                square4.isHidden = false
                square5.isHidden = false
                square6.isHidden = false
            default:
                break
        }
    }
    
    func updateLabelWithRoll(roll: Int){
        
        var diceScore = String(roll)
        
        if label1.isHidden{
            label1.text = diceScore
            label1.isHidden = false
            display1.isHidden = false
        } else if label2.isHidden{
            label2.text = diceScore
            label2.isHidden = false
            display2.isHidden = false
        } else if label3.isHidden{
            label3.text = diceScore
            label3.isHidden = false
            display3.isHidden = false
        } else if label4.isHidden{
            label4.text = diceScore
            label4.isHidden = false
            display4.isHidden = false
        } else if label5.isHidden{
            label5.text = diceScore
            label5.isHidden = false
            display5.isHidden = false
        } else if label6.isHidden{
            label6.text = diceScore
            label6.isHidden = false
            display6.isHidden = false
        }
    }
    
    // Clears Dice Display
    func clearBoard(){
        square1.isHidden = true
        square2.isHidden = true
        square3.isHidden = true
        square4.isHidden = true
        square5.isHidden = true
        square6.isHidden = true
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
