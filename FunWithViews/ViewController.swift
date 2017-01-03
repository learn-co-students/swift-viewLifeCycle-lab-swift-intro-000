//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var diceViewTopLeft: UIView!
    
    @IBOutlet weak var diceViewMiddleLeft: UIView!
    
    @IBOutlet weak var diceViewBottomLeft: UIView!
    
    @IBOutlet weak var diceViewMiddle: UIView!
    
    @IBOutlet weak var diceViewTopRight: UIView!
    
    @IBOutlet weak var diceVIewMiddleRight: UIView!
    
    @IBOutlet weak var diceViewBottomRight: UIView!
    
    @IBOutlet weak var rollRecorderOne: UILabel!
    
    @IBOutlet weak var rollRecorderTwo: UILabel!
    
    @IBOutlet weak var rollRecorderThree: UILabel!
    
    @IBOutlet weak var rollRecorderFour: UILabel!
    
    @IBOutlet weak var rollRecorderFive: UILabel!
    
    @IBOutlet weak var rollRecorderSix: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resetDiFace()
        
        rollRecorderOne.isHidden = true
        rollRecorderTwo.isHidden = true
        rollRecorderThree.isHidden = true
        rollRecorderFour.isHidden = true
        rollRecorderFive.isHidden = true
        rollRecorderSix.isHidden = true
    }

    @IBAction func dieButtonTapped(_ sender: Any) {
        
        var rollTheDice: Int
        rollTheDice = randomDiceRoll()
        
        rearrangeDie(diValue: rollTheDice)
        updateScoreRecorder(roll: rollTheDice)
    }
    

    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func updateScoreRecorder(roll: Int) {
        
        let diceScore = String(roll)
        
        if rollRecorderOne.isHidden {
            rollRecorderOne.text = diceScore
            rollRecorderOne.isHidden = false}
        else if rollRecorderTwo.isHidden {
            rollRecorderTwo.text = diceScore
            rollRecorderTwo.isHidden = false}
        else if rollRecorderThree.isHidden {
            rollRecorderThree.text = diceScore
            rollRecorderThree.isHidden = false}
        else if rollRecorderFour.isHidden {
            rollRecorderFour.text = diceScore
            rollRecorderFour.isHidden = false}
        else if rollRecorderFive.isHidden {
            rollRecorderFive.text = diceScore
            rollRecorderFive.isHidden = false}
        else if rollRecorderSix.isHidden {
            rollRecorderSix.text = diceScore
            rollRecorderSix.isHidden = false}
        else {resetLabelRecorder()}
    }

    func rearrangeDie(diValue: Int) {
        resetDiFace()
        
        switch true {
        case diValue == 1:
                diceViewMiddle.isHidden = false

        case diValue == 2:
                diceViewTopLeft.isHidden = false
                diceViewBottomRight.isHidden = false
        case diValue == 3:
                diceViewTopLeft.isHidden = false
                diceViewMiddle.isHidden = false
                diceViewBottomRight.isHidden = false
        case diValue == 4:
                diceViewTopLeft.isHidden = false
                diceViewBottomLeft.isHidden = false
                diceViewTopRight.isHidden = false
                diceViewBottomRight.isHidden = false
        case diValue == 5:
                diceViewTopLeft.isHidden = false
                diceViewBottomLeft.isHidden = false
                diceViewMiddle.isHidden = false
                diceViewTopRight.isHidden = false
                diceVIewMiddleRight.isHidden = true
                diceViewBottomRight.isHidden = false
        case diValue == 6:
                diceViewTopLeft.isHidden = false
                diceViewMiddleLeft.isHidden = false
                diceViewBottomLeft.isHidden = false
                diceViewMiddle.isHidden = false
                diceViewTopRight.isHidden = false
                diceVIewMiddleRight.isHidden = false
                diceViewBottomRight.isHidden = false
        default:
            resetDiFace()
            
            }
        }
    
func resetDiFace() {
    diceViewTopLeft.isHidden = true
    diceViewMiddleLeft.isHidden = true
    diceViewBottomLeft.isHidden = true
    diceViewMiddle.isHidden = true
    diceViewTopRight.isHidden = true
    diceVIewMiddleRight.isHidden = true
    diceViewBottomRight.isHidden = true}
    
func resetLabelRecorder() {
        rollRecorderOne.isHidden = true
        rollRecorderTwo.isHidden = true
        rollRecorderThree.isHidden = true
        rollRecorderFour.isHidden = true
        rollRecorderFive.isHidden = true
        rollRecorderSix.isHidden = true
    }
}

            
        
        
        
        
        
        
        
        
        
        
        

