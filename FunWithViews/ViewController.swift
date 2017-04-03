//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var topLeft: UIView!
    @IBOutlet weak var middleLeft: UIView!
    @IBOutlet weak var bottomLeft: UIView!
    
    @IBOutlet weak var middle: UIView!
    
    @IBOutlet weak var topRight: UIView!
    @IBOutlet weak var middleRight: UIView!
    @IBOutlet weak var bottomRight: UIView!
    
    
    @IBOutlet weak var blue: UIView!
    @IBOutlet weak var red: UIView!
    @IBOutlet weak var yellow: UIView!
    @IBOutlet weak var green: UIView!
    @IBOutlet weak var purple: UIView!
    @IBOutlet weak var teal: UIView!
    
    
    @IBOutlet weak var diceButton: UIButton!
    
    //color labels
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    
    var shownAll: Bool = false
    var currentLabel = 1
    func hideAllSquares() {
        topLeft.isHidden = true
        middleLeft.isHidden = true
        bottomLeft.isHidden = true
        middle.isHidden = true
        topRight.isHidden = true
        middleRight.isHidden = true
        bottomRight.isHidden = true
    }
    func hideAllLabels() {
        labelOne.isHidden = true
        labelTwo.isHidden = true
        labelThree.isHidden = true
        labelFour.isHidden = true
        labelFive.isHidden = true
        labelSix.isHidden = true
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideAllSquares()
        hideAllLabels()
    }
    
        @IBAction func dieButtonTapped(_ sender: AnyObject) {
          hideAllSquares()
        
        let diceRoll = randomDiceRoll()
        let correspondingSquares = getSquares(number: diceRoll)
            
            for square in correspondingSquares {
                square.isHidden = false
            }
            updateLabelWithRoll(roll: diceRoll)
    }
    
        func randomDiceRoll() -> Int {
            return Int(arc4random_uniform(6) + 1)
        }
    
    func getSquares(number: Int) -> [UIView] {
        var numbers = Dictionary<Int, Array<UIView>>()
        numbers[1] = [middle]
        numbers[2] = [topLeft, bottomRight]
        numbers[3] = [topLeft, middle, bottomRight]
        numbers[4] = [topLeft, bottomLeft, topRight, bottomRight]
        numbers[5] = [topLeft, bottomLeft, middle, topRight, bottomRight]
        numbers[6] = [topLeft, middleLeft, bottomLeft, topRight, middleRight, bottomRight]
        return numbers[number]!
    }
    
    func updateLabelWithRoll(roll: Int) {
        let diceScore = String(roll)
        
        if (!shownAll) {
            if labelOne.isHidden {
                labelOne.text = diceScore
                labelOne.isHidden = false
                
            } else if labelTwo.isHidden {
                labelTwo.text = diceScore
                labelTwo.isHidden = false
            } else if labelThree.isHidden {
                labelThree.text = diceScore
                labelThree.isHidden = false
            } else if labelFour.isHidden {
                labelFour.text = diceScore
                labelFour.isHidden = false
            } else if labelFive.isHidden {
                labelFive.text = diceScore
                labelFive.isHidden = false
            } else if labelSix.isHidden {
                labelSix.text = diceScore
                labelSix.isHidden = false
                shownAll = true
            }
        } else {
            switch currentLabel {
            case 1:
                labelOne.text = diceScore
                currentLabel += 1
            case 2:
                labelTwo.text = diceScore
                currentLabel += 1
            case 3:
                labelThree.text = diceScore
                currentLabel += 1
            case 4:
                labelFour.text = diceScore
                currentLabel += 1
            case 5:
                labelFive.text = diceScore
                currentLabel += 1
            case 6:
                labelSix.text = diceScore
                currentLabel += 1
            default:
                hideAllLabels()
                shownAll = false
                currentLabel = 1
                
            }
        }
    

        
    }
    
    
}
