//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Black squares, representing the dice layout
    // Squares in the left area
    @IBOutlet weak var sqLU: UIView!
    @IBOutlet weak var sqLC: UIView!
    @IBOutlet weak var sqLD: UIView!
    
    // Squares in the center
    @IBOutlet weak var sqCenter: UIView!
    
    // Squares in the right area
    @IBOutlet weak var sqRU: UIView!
    @IBOutlet weak var sqRC: UIView!
    @IBOutlet weak var sqRD: UIView!
    
    // Color labels where the number is displayed
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var orangeLabel: UILabel!
    @IBOutlet weak var yellowLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var purpleLabel: UILabel!
    
    var shownAll: Bool = false
    var currentLabel = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideAllSquares()
        hideAllLabels()
    }
    
    @IBAction func diceButtonTapped(_ sender: AnyObject) {
        hideAllSquares()
        
        let diceRoll = randomDiceRoll()
        let correspondingSquares = getSquares(number: diceRoll)
        
        for square in correspondingSquares {
            square.isHidden = false
        }
        
        updateLabelWithRoll(roll: diceRoll)
    
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    // Hides all the black squares
    func hideAllSquares() {
        sqLU.isHidden = true
        sqLC.isHidden = true
        sqLD.isHidden = true
        sqCenter.isHidden = true
        sqRU.isHidden = true
        sqRC.isHidden = true
        sqRD.isHidden = true
    }
    
    // Hides all the color labels
    func hideAllLabels() {
        redLabel.isHidden = true
        orangeLabel.isHidden = true
        yellowLabel.isHidden = true
        greenLabel.isHidden = true
        blueLabel.isHidden = true
        purpleLabel.isHidden = true
    }
    
    // Get correct squares to show
    func getSquares(number: Int) -> [UIView] {
        var numbers = Dictionary<Int, Array<UIView>>()
        numbers[1] = [sqCenter]
        numbers[2] = [sqLU, sqRD]
        numbers[3] = [sqLU, sqCenter, sqRD]
        numbers[4] = [sqLU, sqLD, sqRU, sqRD]
        numbers[5] = [sqLU, sqLD, sqCenter, sqRU, sqRD]
        numbers[6] = [sqLU, sqLC, sqLD, sqRU, sqRC, sqRD]
        
        return numbers[number]!
    }
    
    // Update labels
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if (!shownAll) {
            if redLabel.isHidden {
                redLabel.text = diceScore
                redLabel.isHidden = false
            } else if orangeLabel.isHidden {
                orangeLabel.text = diceScore
                orangeLabel.isHidden = false
            } else if yellowLabel.isHidden {
                yellowLabel.text = diceScore
                yellowLabel.isHidden = false
            } else if greenLabel.isHidden {
                greenLabel.text = diceScore
                greenLabel.isHidden = false
            } else if blueLabel.isHidden {
                blueLabel.text = diceScore
                blueLabel.isHidden = false
            } else if purpleLabel.isHidden {
                purpleLabel.text = diceScore
                purpleLabel.isHidden = false
                shownAll = true
            }
        } else {
            switch currentLabel {
            case 1:
                redLabel.text = diceScore
                currentLabel += 1
            case 2:
                orangeLabel.text = diceScore
                currentLabel += 1
            case 3:
                yellowLabel.text = diceScore
                currentLabel += 1
            case 4:
                greenLabel.text = diceScore
                currentLabel += 1
            case 5:
                blueLabel.text = diceScore
                currentLabel += 1
            case 6:
                purpleLabel.text = diceScore
                currentLabel = 1
            default:
                hideAllLabels()
                shownAll = false
                currentLabel = 1
            }
        }

    }

}
