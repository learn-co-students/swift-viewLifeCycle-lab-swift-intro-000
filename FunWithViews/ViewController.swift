 //
 // ViewController.swift
 // FunWithViews
 //
 // Created by Jim  Campagno on 9/17/16.
 // Copyright @ 2016 Flatiron School. All rights reserved
 //
 
 import UIKit
 
 class ViewController: UIViewController {
    
    @IBOutlet weak var upperLeft: UIView!
    @IBOutlet weak var upperRight: UIView!
    @IBOutlet weak var middleLeft: UIView!
    @IBOutlet weak var middleSquare: UIView!
    @IBOutlet weak var middleRight: UIView!
    @IBOutlet weak var lowerLeft: UIView!
    @IBOutlet weak var lowerRight: UIView!
    @IBOutlet weak var darkBlueLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var pinkLabel: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var yellowLabel: UILabel!
    @IBOutlet weak var lightBlueLabel: UILabel!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetDiFace()
        upperLeft.isHidden = true
        upperRight.isHidden = true
        middleLeft.isHidden = true
        middleSquare.isHidden = true
        middleRight.isHidden = true
        lowerLeft.isHidden = true
        lowerRight.isHidden = true
        darkBlueLabel.isHidden = true
        greenLabel.isHidden = true
        pinkLabel.isHidden = true
        redLabel.isHidden = true
        yellowLabel.isHidden = true
        lightBlueLabel.isHidden = true
    }
    
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        var diceRoll: Int
        diceRoll = randomDiceRoll()
        updateLabelWithRoll(roll: diceRoll)
        showDi(diValue: diceRoll)
    }
    
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func resetDiFace(){
        upperLeft.isHidden = true
        upperRight.isHidden = true
        middleLeft.isHidden = true
        middleSquare.isHidden = true
        middleRight.isHidden = true
        lowerLeft.isHidden = true
        lowerRight.isHidden = true
    }
    
    func updateLabelWithRoll(roll: Int) {
        let diceScore = String(roll)
        if darkBlueLabel.isHidden {
            darkBlueLabel.text = diceScore
            darkBlueLabel.isHidden = false
        } else if greenLabel.isHidden {
            greenLabel.text = diceScore
            greenLabel.isHidden = false
        } else if pinkLabel.isHidden {
            pinkLabel.text = diceScore
            pinkLabel.isHidden = false
        } else if redLabel.isHidden {
            redLabel.text = diceScore
            redLabel.isHidden = false
        } else if yellowLabel.isHidden {
            yellowLabel.text = diceScore
            yellowLabel.isHidden = false
        } else if lightBlueLabel.isHidden {
            lightBlueLabel.text = diceScore
            lightBlueLabel.isHidden = false
        }
    }
    
    
    func showDi(diValue: Int) {
        resetDiFace()
        
        switch true {
        case diValue == 1:
            middleSquare.isHidden = false
        case diValue == 2:
            middleSquare.isHidden = false
            upperLeft.isHidden = false
        case diValue == 3:
            upperLeft.isHidden = false
            middleSquare.isHidden = false
            lowerRight.isHidden = false
        case diValue == 4:
            upperLeft.isHidden = false
            upperRight.isHidden = false
            lowerLeft.isHidden = false
            lowerRight.isHidden = false
        case diValue == 5:
            upperLeft.isHidden = false
            upperRight.isHidden = false
            lowerLeft.isHidden = false
            lowerRight.isHidden = false
            middleSquare.isHidden = false
        case diValue == 6:
            upperLeft.isHidden = false
            upperRight.isHidden = false
            lowerLeft.isHidden = false
            lowerRight.isHidden = false
            middleLeft.isHidden = false
            middleRight.isHidden = false
        default:
            resetDiFace()
        }
    }
 }
