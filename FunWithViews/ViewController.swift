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
    @IBOutlet weak var displayScore: UILabel!
    @IBOutlet weak var clearBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        
        func updateScoreLabel (roll: Int) {
            let diceScore = String(roll)
            
            if roll > 0{
                displayScore.text = diceScore
                displayScore.isHidden = false
            }
            else {
                displayScore.text = "No Value Yet!"
                displayScore.isHidden = true
            }
        }
        
        func rearrangeCubes(roll: Int) {
            if roll == 1{
                viewSeven.isHidden = false
            }
            else if roll == 2{
                viewThree.isHidden = false
                viewFour.isHidden = false
            }
            else if roll == 3{
                viewThree.isHidden = false
                viewSeven.isHidden = false
                viewFour.isHidden = false
            }
            else if roll == 4{
                viewOne.isHidden = false
                viewThree.isHidden = false
                viewFour.isHidden = false
                viewSix.isHidden = false
            }
            else if roll == 5{
                viewOne.isHidden = false
                viewThree.isHidden = false
                viewSeven.isHidden = false
                viewFour.isHidden = false
                viewSix.isHidden = false
            }
            else if roll == 6{
                viewOne.isHidden = false
                viewTwo.isHidden = false
                viewThree.isHidden = false
                viewFour.isHidden = false
                viewFive.isHidden = false
                viewSix.isHidden = false
                
            }
            else{
                displayScore.text = "Unknown Error"
            }
        }
        func program(){
            updateScoreLabel(roll: randomDiceRoll())
            rearrangeCubes(roll: randomDiceRoll())
        }
        
      program()
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
