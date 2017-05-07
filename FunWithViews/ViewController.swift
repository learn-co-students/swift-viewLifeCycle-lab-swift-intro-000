//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redResult: UIView!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var orangeResult: UIView!
    @IBOutlet var orangeLabel: UILabel!
    @IBOutlet var yellowResult: UIView!
    @IBOutlet var yellowLabel: UILabel!
    @IBOutlet var greenResult: UIView!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueResult: UIView!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var purpleResult: UIView!
    @IBOutlet var purpleLabel: UILabel!
    
    @IBOutlet var mark1: UIView!
    @IBOutlet var mark2: UIView!
    @IBOutlet var mark3: UIView!
    @IBOutlet var mark4: UIView!
    @IBOutlet var mark5: UIView!
    @IBOutlet var mark6: UIView!
    @IBOutlet var mark7: UIView!
    
    var rolls = 0
    
    
    override func viewDidLoad() {
        hideMarks()
        hideResultViews()
        super.viewDidLoad()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        hideMarks()
        
        let result = randomDiceRoll()
        
        switch result {
            case 1:
                one()
            case 2:
                two()
            case 3:
                three()
            case 4:
                four()
            case 5:
                five()
            case 6:
                six()
            default:
                hideMarks()
        }
        
        
        rolls += 1
        
        switch rolls {
            case 1:
                redLabel.text = String(result)
                redResult.isHidden = false
            case 2:
                orangeLabel.text = String(result)
                orangeResult.isHidden = false
            case 3:
                yellowLabel.text = String(result)
                yellowResult.isHidden = false
            case 4:
                greenLabel.text = String(result)
                greenResult.isHidden = false
            case 5:
                blueLabel.text = String(result)
                blueResult.isHidden = false
            case 6:
                purpleLabel.text = String(result)
                purpleResult.isHidden = false
            default:
                hideMarks()
                hideResultViews()
                rolls = 0
        }
        
    }
    
    func one() {
        mark4.isHidden = false
    }
    
    func two() {
        mark1.isHidden = false
        mark7.isHidden = false
    }
    
    func three() {
        mark5.isHidden = false
        mark4.isHidden = false
        mark3.isHidden = false
        
    }
    
    func four() {
        mark1.isHidden = false
        mark3.isHidden = false
        mark5.isHidden = false
        mark7.isHidden = false
        
    }
    
    func five() {
        mark1.isHidden = false
        mark3.isHidden = false
        mark4.isHidden = false
        mark5.isHidden = false
        mark7.isHidden = false
    }
    
    func six() {
        mark1.isHidden = false
        mark2.isHidden = false
        mark3.isHidden = false
        mark5.isHidden = false
        mark6.isHidden = false
        mark7.isHidden = false
    }
    
    
    func hideResultViews() {
        redResult.isHidden = true
        orangeResult.isHidden = true
        yellowResult.isHidden = true
        greenResult.isHidden = true
        blueResult.isHidden = true
        purpleResult.isHidden = true
    }
    
    func hideMarks() {
        mark1.isHidden = true
        mark2.isHidden = true
        mark3.isHidden = true
        mark4.isHidden = true
        mark5.isHidden = true
        mark6.isHidden = true
        mark7.isHidden = true
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
