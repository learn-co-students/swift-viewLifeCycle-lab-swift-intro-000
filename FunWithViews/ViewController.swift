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
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!
    @IBOutlet weak var noMoreRolls: UILabel!
    
    @IBOutlet weak var dice: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        noMoreRolls.isHidden = true
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        
        labelOne.isHidden = true
        labelTwo.isHidden = true
        labelThree.isHidden = true
        labelFour.isHidden = true
        labelOne.isHidden = true
        labelOne.isHidden = true

        print("Entering View Did Load")
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
       
        let ranDieNumber =  randomDiceRoll()
        
        arrangeDieImages(roll: ranDieNumber)
        
        updateLabelWithRoll(roll: ranDieNumber)
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func arrangeDieImages (roll: Int)
    {
        switch roll {
        case 1:
            view1.isHidden = true
            view2.isHidden = true
            view3.isHidden = true
            view4.isHidden = false
            view5.isHidden = true
            view6.isHidden = true
            view7.isHidden = true
        
        case 2:
            view1.isHidden = true
            view2.isHidden = true
            view3.isHidden = false
            view4.isHidden = true
            view5.isHidden = false
            view6.isHidden = true
            view7.isHidden = true
        case 3:
            view1.isHidden = true
            view2.isHidden = false
            view3.isHidden = true
            view4.isHidden = true
            view5.isHidden = false
            view6.isHidden = false
            view7.isHidden = true
            
        case 4:
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = false
            view4.isHidden = true
            view5.isHidden = true
            view6.isHidden = false
            view7.isHidden = false
            
        case 5:
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = true
            view4.isHidden = false
            view5.isHidden = true
            view6.isHidden = false
            view7.isHidden = false
            
        case 6:
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = false
            view4.isHidden = true
            view5.isHidden = false
            view6.isHidden = false
            view7.isHidden = false
        default:
            view1.isHidden = true
            view2.isHidden = true
            view3.isHidden = true
            view4.isHidden = true
            view5.isHidden = true
            view6.isHidden = true
            view7.isHidden = true
        }
        
    }
    
    func updateLabelWithRoll (roll: Int)
    {
        let diceRoll = String (roll)
        
        if labelOne.isHidden == true
        {
            labelOne.text = diceRoll
            labelOne.isHidden = false
        }
        else if labelTwo.isHidden == true
        {
            labelTwo.text = diceRoll
            labelTwo.isHidden = false
        }
        else if labelThree.isHidden == true
        {
            labelThree.text = diceRoll
            labelThree.isHidden = false
        }
        else if labelFour.isHidden == true
        {
            labelFour.text = diceRoll
            labelFour.isHidden = false
        }
        else if labelFive.isHidden == true
        {
            labelFive.text = diceRoll
            labelFive.isHidden = false
        }
        else if labelSix.isHidden == true
        {
            labelSix.text = diceRoll
            labelSix.isHidden = false
            
            noMoreRolls.isHidden = false
            dice.isHidden = true
            
        }

    }

}
