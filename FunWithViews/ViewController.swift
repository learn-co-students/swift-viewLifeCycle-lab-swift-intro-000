//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DiceResult1: UILabel!
    @IBOutlet weak var DiceResult2: UILabel!
    @IBOutlet weak var DiceResult3: UILabel!
    @IBOutlet weak var DiceResult4: UILabel!
    @IBOutlet weak var DiceResult5: UILabel!
    @IBOutlet weak var DiceResult6: UILabel!
    
    @IBOutlet weak var DiceViewLeftTop: UIView!
    @IBOutlet weak var DiceViewLeftMiddle: UIView!
    @IBOutlet weak var DiceViewLeftBottom: UIView!
    @IBOutlet weak var DiceViewMiddleMiddle: UIView!
    @IBOutlet weak var DiceViewRightTop: UIView!
    @IBOutlet weak var DiceViewRightMiddle: UIView!
    @IBOutlet weak var DiceViewRightBottom: UIView!
    
    var diceCount = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetLabels()
        resetDiceView()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        if(diceCount >= 6){
            resetLabels()
        }
        
        var labels = [DiceResult1, DiceResult2, DiceResult3, DiceResult4, DiceResult5, DiceResult6]
        let diceResult = randomDiceRoll()
        
        labels[diceCount]?.text = String(diceResult)
        
        labels[diceCount]?.isHidden = false
        
        arrangeBlackLabels(roll: diceResult)
        
        diceCount = diceCount + 1
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func resetLabels(){
        DiceResult1.isHidden = true
        DiceResult2.isHidden = true
        DiceResult3.isHidden = true
        DiceResult4.isHidden = true
        DiceResult5.isHidden = true
        DiceResult6.isHidden = true
        diceCount = 0
    }
    
    func resetDiceView(){
        DiceViewLeftTop.isHidden = true
        DiceViewLeftMiddle.isHidden = true
        DiceViewLeftBottom.isHidden = true
        DiceViewMiddleMiddle.isHidden = true
        DiceViewRightTop.isHidden = true
        DiceViewRightMiddle.isHidden = true
        DiceViewRightBottom.isHidden = true
    }
    
    func arrangeBlackLabels(roll : Int){
        switch roll {
        case 1:
            DiceViewLeftTop.isHidden = true
            DiceViewLeftMiddle.isHidden = true
            DiceViewLeftBottom.isHidden = true
            DiceViewMiddleMiddle.isHidden = false
            DiceViewRightTop.isHidden = true
            DiceViewRightMiddle.isHidden = true
            DiceViewRightBottom.isHidden = true
        case 2:
            DiceViewLeftTop.isHidden = false
            DiceViewLeftMiddle.isHidden = true
            DiceViewLeftBottom.isHidden = true
            DiceViewMiddleMiddle.isHidden = true
            DiceViewRightTop.isHidden = true
            DiceViewRightMiddle.isHidden = true
            DiceViewRightBottom.isHidden = false
        case 3:
            DiceViewLeftTop.isHidden = false
            DiceViewLeftMiddle.isHidden = true
            DiceViewLeftBottom.isHidden = true
            DiceViewMiddleMiddle.isHidden = false
            DiceViewRightTop.isHidden = true
            DiceViewRightMiddle.isHidden = true
            DiceViewRightBottom.isHidden = false
        case 4:
            DiceViewLeftTop.isHidden = false
            DiceViewLeftMiddle.isHidden = true
            DiceViewLeftBottom.isHidden = false
            DiceViewMiddleMiddle.isHidden = true
            DiceViewRightTop.isHidden = false
            DiceViewRightMiddle.isHidden = true
            DiceViewRightBottom.isHidden = false
        case 5:
            DiceViewLeftTop.isHidden = false
            DiceViewLeftMiddle.isHidden = true
            DiceViewLeftBottom.isHidden = false
            DiceViewMiddleMiddle.isHidden = false
            DiceViewRightTop.isHidden = false
            DiceViewRightMiddle.isHidden = true
            DiceViewRightBottom.isHidden = false
        case 6:
            DiceViewLeftTop.isHidden = false
            DiceViewLeftMiddle.isHidden = false
            DiceViewLeftBottom.isHidden = false
            DiceViewMiddleMiddle.isHidden = true
            DiceViewRightTop.isHidden = false
            DiceViewRightMiddle.isHidden = false
            DiceViewRightBottom.isHidden = false
        default:
            DiceViewLeftTop.isHidden = true
            DiceViewLeftMiddle.isHidden = true
            DiceViewLeftBottom.isHidden = true
            DiceViewMiddleMiddle.isHidden = true
            DiceViewRightTop.isHidden = true
            DiceViewRightMiddle.isHidden = true
            DiceViewRightBottom.isHidden = true
        }
    }

}
