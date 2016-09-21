//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewOne: UIView!
    @IBOutlet weak var viewTwo: UIView!
    @IBOutlet weak var viewThree: UIView!
    @IBOutlet weak var viewFour: UIView!
    @IBOutlet weak var viewFive: UIView!
    @IBOutlet weak var viewSix: UIView!
    @IBOutlet weak var viewSeven: UIView!
    @IBOutlet weak var viewEight: UILabel!
    @IBOutlet weak var viewNine: UILabel!
    @IBOutlet weak var viewTen: UILabel!
    @IBOutlet weak var viewEleven: UILabel!
    @IBOutlet weak var viewTwelve: UILabel!
    @IBOutlet weak var viewThirdteen: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewOne.isHidden = true
        viewTwo.isHidden = true
        viewThree.isHidden = true
        viewFour.isHidden = true
        viewFive.isHidden = true
        viewSix.isHidden = true
        viewSeven.isHidden = true
        viewEight.isHidden = true
        viewNine.isHidden = true
        viewTen.isHidden = true
        viewEleven.isHidden = true
        viewTwelve.isHidden = true
        viewThirdteen.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let roll = randomDiceRoll()
        updateLabelWithRoll(roll: roll)
        rearrangeDie(roll: roll)
    }
    
    
    
    func rearrangeDie(roll: Int) {
        if roll == 1 {
            viewOne.isHidden = true
            viewTwo.isHidden = true
            viewThree.isHidden = true
            viewFour.isHidden = false
            viewFive.isHidden = true
            viewSix.isHidden = true
            viewSeven.isHidden = true
        } else if roll == 2 {
            viewOne.isHidden = false
            viewTwo.isHidden = true
            viewThree.isHidden = true
            viewFour.isHidden = true
            viewFive.isHidden = true
            viewSix.isHidden = true
            viewSeven.isHidden = false
        } else if roll == 3 {
            viewOne.isHidden = true
            viewTwo.isHidden = true
            viewThree.isHidden = false
            viewFour.isHidden = false
            viewFive.isHidden = false
            viewSix.isHidden = true
            viewSeven.isHidden = true
        } else if roll == 4 {
            viewOne.isHidden = false
            viewTwo.isHidden = true
            viewThree.isHidden = false
            viewFour.isHidden = true
            viewFive.isHidden = false
            viewSix.isHidden = true
            viewSeven.isHidden = false
        } else if roll == 5 {
            viewOne.isHidden = false
            viewTwo.isHidden = true
            viewThree.isHidden = false
            viewFour.isHidden = false
            viewFive.isHidden = false
            viewSix.isHidden = true
            viewSeven.isHidden = false
        } else if roll == 6 {
            viewOne.isHidden = false
            viewTwo.isHidden = false
            viewThree.isHidden = false
            viewFour.isHidden = true
            viewFive.isHidden = false
            viewSix.isHidden = false
            viewSeven.isHidden = false
        }
    }
    
    
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if viewEight.isHidden {
            viewEight.text = diceScore
            viewEight.isHidden = false
        } else if viewNine.isHidden {
            viewNine.text = diceScore
            viewNine.isHidden = false
        } else if viewTen.isHidden {
            viewTen.text = diceScore
            viewTen.isHidden = false
        } else if viewEleven.isHidden {
            viewEleven.text = diceScore
            viewEleven.isHidden = false
        }else if viewTwelve.isHidden {
            viewTwelve.text = diceScore
            viewTwelve.isHidden = false
        }else if viewThirdteen.isHidden {
            viewThirdteen.text = diceScore
            viewThirdteen.isHidden = false
        }

    }
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
