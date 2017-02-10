//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftTopDie: UIView!
    @IBOutlet weak var leftMiddleDie: UIView!
    @IBOutlet weak var leftBottomDie: UIView!
    @IBOutlet weak var middleMiddleDie: UIView!
    @IBOutlet weak var rightTopDie: UIView!
    @IBOutlet weak var rightMiddleDie: UIView!
    @IBOutlet weak var rightBottomDie: UIView!
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    
    @IBOutlet weak var die: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        leftTopDie.isHidden = true
        leftMiddleDie.isHidden = true
        leftBottomDie.isHidden = true
        middleMiddleDie.isHidden = true
        rightTopDie.isHidden = true
        rightMiddleDie.isHidden = true
        rightBottomDie.isHidden = true
        
        labelOne.isHidden = true
        labelTwo.isHidden = true
        labelThree.isHidden = true
        labelFour.isHidden = true
        labelFive.isHidden = true
        labelSix.isHidden = true
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let rollEm = randomDiceRoll()
        updateScore()
        updateLabelWithRoll(roll: rollEm)
        rearrangeDie(roll: rollEm)
        
    }
        
    
    func randomDiceRoll() -> Int {
      return Int(arc4random_uniform(6) + 1)
    }
    
    func updateLabelWithRoll(roll: Int) {
        let diceRoll = String(roll)
        if labelOne.isHidden {
            labelOne.text = diceRoll
            labelOne.isHidden = false}
        else if labelTwo.isHidden {
            labelTwo.text = diceRoll
            labelTwo.isHidden = false}
        else if labelThree.isHidden {
            labelThree.text = diceRoll
            labelThree.isHidden = false}
        else if labelFour.isHidden {
            labelFour.text = diceRoll
            labelFour.isHidden = false}
        else if labelFive.isHidden {
            labelFive.text = diceRoll
            labelFive.isHidden = false}
        else if labelSix.isHidden {
            labelSix.text = diceRoll
            labelSix.isHidden = false}
        
    }
    
    func rearrangeDie(roll: Int) {
        switch roll {
        case 1:
            leftTopDie.isHidden = true
            leftMiddleDie.isHidden = true
            leftBottomDie.isHidden = true
            middleMiddleDie.isHidden = false
            rightTopDie.isHidden = true
            rightMiddleDie.isHidden = true
            rightBottomDie.isHidden = true
        case 2:
            leftTopDie.isHidden = true
            leftMiddleDie.isHidden = false
            leftBottomDie.isHidden = true
            middleMiddleDie.isHidden = true
            rightTopDie.isHidden = true
            rightMiddleDie.isHidden = false
            rightBottomDie.isHidden = true
        case 3:
            leftTopDie.isHidden = false
            leftMiddleDie.isHidden = true
            leftBottomDie.isHidden = true
            middleMiddleDie.isHidden = false
            rightTopDie.isHidden = true
            rightMiddleDie.isHidden = true
            rightBottomDie.isHidden = false
        case 4:
            leftTopDie.isHidden = false
            leftMiddleDie.isHidden = true
            leftBottomDie.isHidden = false
            middleMiddleDie.isHidden = true
            rightTopDie.isHidden = false
            rightMiddleDie.isHidden = true
            rightBottomDie.isHidden = false
        case 5:
            leftTopDie.isHidden = false
            leftMiddleDie.isHidden = true
            leftBottomDie.isHidden = false
            middleMiddleDie.isHidden = false
            rightTopDie.isHidden = false
            rightMiddleDie.isHidden = true
            rightBottomDie.isHidden = false
        case 6:
            leftTopDie.isHidden = false
            leftMiddleDie.isHidden = false
            leftBottomDie.isHidden = false
            middleMiddleDie.isHidden = true
            rightTopDie.isHidden = false
            rightMiddleDie.isHidden = false
            rightBottomDie.isHidden = false
        default:
            leftTopDie.isHidden = true
            leftMiddleDie.isHidden = true
            leftBottomDie.isHidden = true
            middleMiddleDie.isHidden = true
            rightTopDie.isHidden = true
            rightMiddleDie.isHidden = true
            rightBottomDie.isHidden = true
        }
    }
    func updateScore() {
        if labelSix.isHidden == false {
            leftTopDie.isHidden = true
            leftMiddleDie.isHidden = true
            leftBottomDie.isHidden = true
            middleMiddleDie.isHidden = true
            rightTopDie.isHidden = true
            rightMiddleDie.isHidden = true
            rightBottomDie.isHidden = true
            
            labelOne.isHidden = true
            labelTwo.isHidden = true
            labelThree.isHidden = true
            labelFour.isHidden = true
            labelFive.isHidden = true
            labelSix.isHidden = true
        }
    }
    
}
