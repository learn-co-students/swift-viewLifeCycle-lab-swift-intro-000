
//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonDie: UIButton!
    
    @IBOutlet weak var buttonReset: UIButton!
    
    @IBOutlet weak var viewLeftTop: UIView!
    @IBOutlet weak var viewLeftCentre: UIView!
    @IBOutlet weak var viewLeftBottom: UIView!
    
    @IBOutlet weak var viewCentre: UIView!
    
    @IBOutlet weak var viewRightTop: UIView!
    @IBOutlet weak var viewRightCentre: UIView!
    @IBOutlet weak var viewRightBottom: UIView!
    
    @IBOutlet weak var labelStreak: UILabel!
    
    
    var counterDieRolled: Int = 0
    var currentStreak: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonReset.isHidden = true
        
        hideAllDots()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let maximumRolls = 6
        let rolledNumber = randomDiceRoll()
        
        counterDieRolled += 1
        
        if counterDieRolled <= maximumRolls
        {
            showDots(currentNumber: rolledNumber)
        
            if currentStreak.isEmpty != true
            {
                currentStreak += ", "
            }
            
            currentStreak += "\(rolledNumber)"
        }
        
        if counterDieRolled >= maximumRolls {
            buttonDie.isHidden = true
            buttonReset.isHidden = false
        }
        
        // Opted not to bother with boxes - just kept a running tally of current streak.
        
        labelStreak.text = currentStreak
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        hideAllDots()
        
        counterDieRolled = 0
        currentStreak = ""
        
        labelStreak.text = ""
        
        buttonDie.isHidden = false
        buttonReset.isHidden = true
    }
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func showDots(currentNumber: Int)
    {
        hideAllDots()
        
        switch currentNumber {
        case 1:
            viewCentre.isHidden = false
        case 2:
            viewLeftBottom.isHidden = false
            viewRightTop.isHidden = false
        case 3:
            viewLeftBottom.isHidden = false
            viewCentre.isHidden = false
            viewRightTop.isHidden = false
        case 4:
            viewLeftTop.isHidden = false
            viewRightTop.isHidden = false
            viewLeftBottom.isHidden = false
            viewRightBottom.isHidden = false
        case 5:
            viewLeftTop.isHidden = false
            viewRightTop.isHidden = false
            viewCentre.isHidden = false
            viewLeftBottom.isHidden = false
            viewRightBottom.isHidden = false
        case 6:
            viewLeftTop.isHidden = false
            viewRightTop.isHidden = false
            viewLeftCentre.isHidden = false
            viewRightCentre.isHidden = false
            viewLeftBottom.isHidden = false
            viewRightBottom.isHidden = false
        default:
            hideAllDots()
        }
    }
    
    func hideAllDots()
    {
        viewLeftTop.isHidden = true
        viewLeftCentre.isHidden = true
        viewLeftBottom.isHidden = true
        
        viewCentre.isHidden = true
        
        viewRightTop.isHidden = true
        viewRightCentre.isHidden = true
        viewRightBottom.isHidden = true
    }

}
