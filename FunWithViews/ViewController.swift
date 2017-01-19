//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    @IBOutlet weak var topLeft: UIView!
    @IBOutlet weak var midLeft: UIView!
    @IBOutlet weak var botLeft: UIView!
    @IBOutlet weak var middle: UIView!
    @IBOutlet weak var topRight: UIView!
    @IBOutlet weak var midRight: UIView!
    @IBOutlet weak var botRight: UIView!
    
    @IBOutlet weak var green: UIView!
    @IBOutlet weak var red: UIView!
    @IBOutlet weak var blue: UIView!
    @IBOutlet weak var cyan: UIView!
    @IBOutlet weak var magenta: UIView!
    @IBOutlet weak var yellow: UIView!
    
    @IBOutlet weak var numOne: UILabel!
    @IBOutlet weak var numTwo: UILabel!
    @IBOutlet weak var numThree: UILabel!
    @IBOutlet weak var numFour: UILabel!
    @IBOutlet weak var numFive: UILabel!
    @IBOutlet weak var numSix: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topLeft.isHidden = true
        midLeft.isHidden = true
        botLeft.isHidden = true
        middle.isHidden = true
        topRight.isHidden = true
        midRight.isHidden = true
        botRight.isHidden = true
        
        green.isHidden = true
        red.isHidden = true
        blue.isHidden = true
        cyan.isHidden = true
        magenta.isHidden = true
        yellow.isHidden = true
        
        numOne.isHidden = true
        numTwo.isHidden = true
        numThree.isHidden = true
        numFour.isHidden = true
        numFive.isHidden = true
        numSix.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let roll: Int = randomDiceRoll()
        switch roll{
            case 1:
                topLeft.isHidden = true
                midLeft.isHidden = true
                botLeft.isHidden = true
                middle.isHidden = false
                topRight.isHidden = true
                midRight.isHidden = true
                botRight.isHidden = true
            case 2:
                topLeft.isHidden = true
                midLeft.isHidden = true
                botLeft.isHidden = false
                middle.isHidden = true
                topRight.isHidden = false
                midRight.isHidden = true
                botRight.isHidden = true
            case 3:
                topLeft.isHidden = true
                midLeft.isHidden = true
                botLeft.isHidden = false
                middle.isHidden = false
                topRight.isHidden = false
                midRight.isHidden = true
                botRight.isHidden = true
            case 4:
                topLeft.isHidden = false
                midLeft.isHidden = true
                botLeft.isHidden = false
                middle.isHidden = true
                topRight.isHidden = false
                midRight.isHidden = true
                botRight.isHidden = false
            case 5:
                topLeft.isHidden = false
                midLeft.isHidden = true
                botLeft.isHidden = false
                middle.isHidden = false
                topRight.isHidden = false
                midRight.isHidden = true
                botRight.isHidden = false
            case 6:
                topLeft.isHidden = false
                midLeft.isHidden = false
                botLeft.isHidden = false
                middle.isHidden = true
                topRight.isHidden = false
                midRight.isHidden = false
                botRight.isHidden = false
            default:
                topLeft.isHidden = true
                midLeft.isHidden = true
                botLeft.isHidden = true
                middle.isHidden = true
                topRight.isHidden = true
                midRight.isHidden = true
                botRight.isHidden = true
        }
        updateLabelWithRoll(roll)
        
    }
    
    func updateLabelWithRoll(_ roll: Int){
        let diceScore = String(roll)
        if numOne.isHidden{
            numOne.text = diceScore
            numOne.isHidden = false
            green.isHidden = false
        } else if numTwo.isHidden {
            numTwo.text = diceScore
            numTwo.isHidden = false
            red.isHidden = false
        } else if numThree.isHidden{
            numThree.text = diceScore
            numThree.isHidden = false
            blue.isHidden = false
        } else if numFour.isHidden {
            numFour.text = diceScore
            numFour.isHidden = false
            cyan.isHidden = false
        } else if numFive.isHidden {
            numFive.text = diceScore
            numFive.isHidden = false
            magenta.isHidden = false
        } else if numSix.isHidden {
            numSix.text = diceScore
            numSix.isHidden = false
            yellow.isHidden = false
        } else if !numSix.isHidden {
            numOne.isHidden = true
            green.isHidden = true
            
            numTwo.isHidden = true
            red.isHidden = true
            
            numThree.isHidden = true
            blue.isHidden = true
            
            numFour.isHidden = true
            cyan.isHidden = true
            
            numFive.isHidden = true
            magenta.isHidden = true
            
            numSix.isHidden = true
            yellow.isHidden = true
            
            numOne.text = diceScore
            numOne.isHidden = false
            green.isHidden = false
        }
    }
    

}
