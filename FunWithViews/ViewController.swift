//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    
    @IBOutlet weak var viewA: UIView!
    @IBOutlet weak var viewB: UIView!
    @IBOutlet weak var viewC: UIView!
    @IBOutlet weak var viewD: UIView!
    @IBOutlet weak var viewE: UIView!
    @IBOutlet weak var viewF: UIView!
    @IBOutlet weak var viewG: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOne.isHidden = true
        labelTwo.isHidden = true
        labelThree.isHidden = true
        labelFour.isHidden = true
        labelFive.isHidden = true
        labelSix.isHidden = true
        
        viewA.isHidden = true
        viewB.isHidden = true
        viewC.isHidden = true
        viewD.isHidden = true
        viewE.isHidden = true
        viewF.isHidden = true
        viewG.isHidden = true

    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let diceScore: Int = randomDiceRoll()
        
        rearrangeDie(roll: diceScore)
        updateLabelWithRoll(roll: diceScore)
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func rearrangeDie(roll: Int) {
        
        //let diceScore = String(roll)
        if labelSix.isHidden {
            switch roll {
            case 1:
                viewA.isHidden = false
                viewB.isHidden = true
                viewC.isHidden = true
                viewD.isHidden = true
                viewE.isHidden = true
                viewF.isHidden = true
                viewG.isHidden = true
            case 2:
                viewA.isHidden = false
                viewB.isHidden = false
                viewC.isHidden = true
                viewD.isHidden = true
                viewE.isHidden = true
                viewF.isHidden = true
                viewG.isHidden = true
            case 3:
                viewA.isHidden = false
                viewB.isHidden = false
                viewC.isHidden = false
                viewD.isHidden = true
                viewE.isHidden = true
                viewF.isHidden = true
                viewG.isHidden = true
            case 4:
                viewA.isHidden = false
                viewB.isHidden = false
                viewC.isHidden = true
                viewD.isHidden = false
                viewE.isHidden = false
                viewF.isHidden = true
                viewG.isHidden = true
            case 5:
                viewA.isHidden = false
                viewB.isHidden = false
                viewC.isHidden = false
                viewD.isHidden = false
                viewE.isHidden = false
                viewF.isHidden = true
                viewG.isHidden = true
            case 6:
                viewA.isHidden = false
                viewB.isHidden = false
                viewC.isHidden = false
                viewD.isHidden = false
                viewE.isHidden = false
                viewF.isHidden = false
                viewG.isHidden = false
            default:
                viewA.isHidden = true
                viewB.isHidden = true
                viewC.isHidden = true
                viewD.isHidden = true
                viewE.isHidden = true
                viewF.isHidden = true
                viewG.isHidden = true
            }
        }
    }
    
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
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
        }
    }
    



}
