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
    @IBOutlet weak var boxOne: UIView!
    
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var boxTwo: UIView!
    
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var boxThree: UIView!
    
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var boxFour: UIView!
    
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var boxFive: UIView!
   
    @IBOutlet weak var labelSix: UILabel!
    
    @IBOutlet weak var boxSix: UIView!
    
     override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        let number = randomDiceRoll()
        
        updateLabelWithRoll(roll: number)
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func updateLabelWithRoll(roll: Int){
        
        let diceScore = String(roll)
        
        //Dice rolls 1
        if(roll == 1)
        {
            if labelOne.isHidden
            {
                labelOne.text = diceScore
                boxOne.isHidden = false
                labelOne.isHidden = false
            }
        }
        //Dice roll 2
        if (roll == 2)
        {
            if labelTwo.isHidden{
                labelTwo.text = diceScore
                boxTwo.isHidden = false
                labelTwo.isHidden = false
            }
        }
        //Dice rolls 3
        if(roll == 3)
        {
            
            if labelThree.isHidden
            {
                
                labelThree.text = diceScore
                boxThree.isHidden = false
                labelThree.isHidden = false
            }
        }
        //Dice rolls 4
        if (roll == 4){
            if labelFour.isHidden
            {
                labelFour.text = diceScore
                labelFour.isHidden = false
                boxFour.isHidden = false
            }
        }
        
        //Dice rolls 5
        if (roll == 5){
            if labelFive.isHidden
            {
                labelFive.text = diceScore
                boxFive.isHidden = false
                labelFive.isHidden = false
            }
        }
        //Dice rolls 6
        if roll == 6{
            if labelSix.isHidden{
            labelSix.text = diceScore
            boxSix.isHidden = false
            labelSix.isHidden = false
        }
        }
    }

}
