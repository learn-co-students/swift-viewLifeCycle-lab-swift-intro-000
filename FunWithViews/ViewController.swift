//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


// Set up all views and label
    
    @IBOutlet weak var square1: UIView!
    @IBOutlet weak var Square2: UIView!
    @IBOutlet weak var Square3: UIView!
    @IBOutlet weak var SquareCenter: UIView!
    @IBOutlet weak var Square4: UIView!
    @IBOutlet weak var Square5: UIView!
    @IBOutlet weak var Square6: UIView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
   
// Determines the actions to perform when the die is cast
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        let roll = randomDiceRoll()
        
        if label6.isHidden {
            updateLabelWithRoll(roll: roll)
            rearrangeDie(die: roll)
        } else  {
            resetBoard()
        }
      
    }
    
// Resets the board at startup 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        square1.isHidden = true
        Square2.isHidden = true
        Square3.isHidden = true
        SquareCenter.isHidden = true
        Square4.isHidden = true
        Square5.isHidden = true
        Square6.isHidden = true
        label1.isHidden = true
        label2.isHidden = true
        label3.isHidden = true
        label4.isHidden = true
        label5.isHidden = true
        label6.isHidden = true
       
        
    }
    
    
// Returns back a random Int (1, 2, 3, 4, 5, or 6)
    
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

// Updates the value of the Labels according to the order of play

    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if label1.isHidden {
            label1.text = diceScore
            label1.isHidden = false
        } else if label2.isHidden {
            label2.text = diceScore
            label2.isHidden = false
        } else if label3.isHidden {
            label3.text = diceScore
            label3.isHidden = false
        } else if label4.isHidden {
            label4.text = diceScore
            label4.isHidden = false
        } else if label5.isHidden {
            label5.text = diceScore
            label5.isHidden = false
        }  else if label6.isHidden {
            label6.text = diceScore
            label6.isHidden = false
        }
    }

    
// Display the squares according to the roll die result
    
        func rearrangeDie(die: Int) {
            
            switch die {
            case 1 :
                square1.isHidden = true
                Square2.isHidden = true
                Square3.isHidden = true
                SquareCenter.isHidden = false
                Square4.isHidden = true
                Square5.isHidden = true
                Square6.isHidden = true
            case 2 :
                square1.isHidden = true
                Square2.isHidden = true
                Square3.isHidden = false
                SquareCenter.isHidden = true
                Square4.isHidden = false
                Square5.isHidden = true
                Square6.isHidden = true
            case 3 :
                square1.isHidden = true
                Square2.isHidden = true
                Square3.isHidden = false
                SquareCenter.isHidden = false
                Square4.isHidden = false
                Square5.isHidden = true
                Square6.isHidden = true
            case 4 :
                square1.isHidden = false
                Square2.isHidden = true
                Square3.isHidden = false
                SquareCenter.isHidden = true
                Square4.isHidden = false
                Square5.isHidden = true
                Square6.isHidden = false
            case 5 :
                square1.isHidden = false
                Square2.isHidden = true
                Square3.isHidden = false
                SquareCenter.isHidden = false
                Square4.isHidden = false
                Square5.isHidden = true
                Square6.isHidden = false
            case 6 :
                square1.isHidden = false
                Square2.isHidden = false
                Square3.isHidden = false
                SquareCenter.isHidden = true
                Square4.isHidden = false
                Square5.isHidden = false
                Square6.isHidden = false
                
// Hides every square if the die result is outside 1-6 range
                
            default:
                square1.isHidden = true
                Square2.isHidden = true
                Square3.isHidden = true
                SquareCenter.isHidden = true
                Square4.isHidden = true
                Square5.isHidden = true
                Square6.isHidden = true
                
            }
        }
    
// Determines what to do after all six plays have been made
    
    func resetBoard () {
        label1.text = ""
        label1.isHidden = true
        label2.text = ""
        label2.isHidden = true
        label3.text = ""
        label3.isHidden = true
        label4.text = ""
        label4.isHidden = true
        label5.text = ""
        label5.isHidden = true
        label6.text = ""
        label6.isHidden = true
        square1.isHidden = true
        Square2.isHidden = true
        Square3.isHidden = true
        SquareCenter.isHidden = true
        Square4.isHidden = true
        Square5.isHidden = true
        Square6.isHidden = true
        
    }
    
}

