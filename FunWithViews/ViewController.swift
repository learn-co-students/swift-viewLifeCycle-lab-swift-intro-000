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
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideAllDiceViews()
        hideAllDiceLabels()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let diceValue : Int = randomDiceRoll()
        hideAllDiceViews()
        setDiceLabel(diceValue)
        showDiceView(diceValue)
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func setDiceLabel(_ diceValue: Int) {
        let diceString = String(diceValue)
        
        if labelSix.isHidden == false {
            hideAllDiceLabels()
        }
        
        if labelOne.isHidden {
            labelOne.text = diceString
            labelOne.isHidden = false
        } else if labelTwo.isHidden {
            labelTwo.text = diceString
            labelTwo.isHidden = false
        } else if labelThree.isHidden {
            labelThree.text = diceString
            labelThree.isHidden = false
        } else if labelFour.isHidden {
            labelFour.text = diceString
            labelFour.isHidden = false
        } else if labelFive.isHidden {
            labelFive.text = diceString
            labelFive.isHidden = false
        } else if labelSix.isHidden {
            labelSix.text = diceString
            labelSix.isHidden = false
        }
        
    }
    
    func showDiceView(_ diceValue: Int) {
        hideAllDiceViews()
        let diceViews : [UIView] = [viewOne, viewTwo, viewThree, viewFour, viewFive, viewSix]
        diceViews[diceValue - 1].isHidden = false
    }
    
    func hideAllDiceViews() {
        viewOne.isHidden = true
        viewTwo.isHidden = true
        viewThree.isHidden = true
        viewFour.isHidden = true
        viewFive.isHidden = true
        viewSix.isHidden = true
    }
    
    func hideAllDiceLabels() {
        labelOne.isHidden = true
        labelTwo.isHidden = true
        labelThree.isHidden = true
        labelFour.isHidden = true
        labelFive.isHidden = true
        labelSix.isHidden = true
    }

}
