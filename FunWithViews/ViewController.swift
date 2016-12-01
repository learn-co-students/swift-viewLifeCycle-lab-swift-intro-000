//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tldie: UIView!
    @IBOutlet weak var mldie: UIView!
    @IBOutlet weak var bldie: UIView!
    @IBOutlet weak var mdie: UIView!
    @IBOutlet weak var trdie: UIView!
    @IBOutlet weak var mrdie: UIView!
    @IBOutlet weak var brdie: UIView!
    
    @IBOutlet weak var redbox: UIView!
    @IBOutlet weak var orangebox: UIView!
    @IBOutlet weak var yellowbox: UIView!
    @IBOutlet weak var greenbox: UIView!
    @IBOutlet weak var bluebox: UIView!
    @IBOutlet weak var purplebox: UIView!
    
    @IBOutlet weak var roll1: UILabel!
    @IBOutlet weak var roll2: UILabel!
    @IBOutlet weak var roll3: UILabel!
    @IBOutlet weak var roll4: UILabel!
    @IBOutlet weak var roll5: UILabel!
    @IBOutlet weak var roll6: UILabel!
    var rollCount = 0

    override func viewDidLoad() {
        tldie.isHidden = true
        mldie.isHidden = true
        bldie.isHidden = true
        mdie.isHidden = true
        trdie.isHidden = true
        mrdie.isHidden = true
        brdie.isHidden = true
        
        redbox.isHidden = true
        orangebox.isHidden = true
        yellowbox.isHidden = true
        greenbox.isHidden = true
        bluebox.isHidden = true
        purplebox.isHidden = true
        
        roll1.text = ""
        roll2.text = ""
        roll3.text = ""
        roll4.text = ""
        roll5.text = ""
        roll6.text = ""
        super.viewDidLoad()
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let diceRoll = randomDiceRoll()
        print("The dice roll is", diceRoll)
        rollCount = rollCount + 1
        print("You are on roll", rollCount)
        
        tldie.isHidden = true
        mldie.isHidden = true
        bldie.isHidden = true
        mdie.isHidden = true
        trdie.isHidden = true
        mrdie.isHidden = true
        brdie.isHidden = true
        
        redbox.isHidden = true
        orangebox.isHidden = true
        yellowbox.isHidden = true
        greenbox.isHidden = true
        bluebox.isHidden = true
        purplebox.isHidden = true
        
        switch diceRoll {
        case 1:
            mdie.isHidden = false
        case 2:
            tldie.isHidden = false
            brdie.isHidden = false
        case 3:
            tldie.isHidden = false
            mdie.isHidden = false
            brdie.isHidden = false
        case 4:
            tldie.isHidden = false
            bldie.isHidden = false
            trdie.isHidden = false
            brdie.isHidden = false
        case 5:
            tldie.isHidden = false
            bldie.isHidden = false
            mdie.isHidden = false
            trdie.isHidden = false
            brdie.isHidden = false
        case 6:
            tldie.isHidden = false
            mldie.isHidden = false
            bldie.isHidden = false
            trdie.isHidden = false
            mrdie.isHidden = false
            brdie.isHidden = false
        default:
            print("uh oh sphaghetti- o!")
        }
        
        
        switch rollCount {
        case 1:
            redbox.isHidden = false
            roll1.text = String(diceRoll)
        case 2:
            redbox.isHidden = false
            orangebox.isHidden = false
            roll2.text = String(diceRoll)
        case 3:
            redbox.isHidden = false
            orangebox.isHidden = false
            yellowbox.isHidden = false
            roll3.text = String(diceRoll)
        case 4:
            redbox.isHidden = false
            orangebox.isHidden = false
            yellowbox.isHidden = false
            greenbox.isHidden = false
            roll4.text = String(diceRoll)
        case 5:
            redbox.isHidden = false
            orangebox.isHidden = false
            yellowbox.isHidden = false
            greenbox.isHidden = false
            bluebox.isHidden = false
            roll5.text = String(diceRoll)
        case 6:
            redbox.isHidden = false
            orangebox.isHidden = false
            yellowbox.isHidden = false
            greenbox.isHidden = false
            bluebox.isHidden = false
            purplebox.isHidden = false
            roll6.text = String(diceRoll)
        default:
            print("You're done")
        }
        
        
        
        
    }
    
   

}


