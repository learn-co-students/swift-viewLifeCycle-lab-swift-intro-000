//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var View1: UIView!
    @IBOutlet weak var View2: UIView!
    @IBOutlet weak var View3: UIView!
    @IBOutlet weak var View4: UIView!
    @IBOutlet weak var View5: UIView!
    @IBOutlet weak var View6: UIView!
    @IBOutlet weak var View7: UIView!
    @IBOutlet weak var View8: UIView!
    @IBOutlet weak var View9: UIView!
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int{
        return Int(arc4random_uniform(6) + 1)
    }
    
    func updateScores(roll:Int){
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
        }else if labelFour.isHidden {
            labelFour.text = diceScore
            labelFour.isHidden = false
        }else if labelFive.isHidden {
            labelFive.text = diceScore
            labelFive.isHidden = false
        }else if labelSix.isHidden {
            labelSix.text = diceScore
            labelSix.isHidden = false
        }else{
            labelOne.isHidden = true
            labelTwo.isHidden = true
            labelThree.isHidden = true
            labelFour.isHidden = true
            labelFive.isHidden = true
            labelSix.isHidden = true
        }
        
    }
    
    func rearrangeSquares(roll:Int){
        switch roll {
        case 1 :
            View1.isHidden = true
            View2.isHidden = true
            View3.isHidden = true
            View4.isHidden = true
            View5.isHidden = false
            View6.isHidden = true
            View7.isHidden = true
            View8.isHidden = true
            View9.isHidden = true
        case 2 :
            View1.isHidden = true
            View2.isHidden = true
            View3.isHidden = false
            View4.isHidden = true
            View5.isHidden = true
            View6.isHidden = true
            View7.isHidden = false
            View8.isHidden = true
            View9.isHidden = true
        case 3:
            View1.isHidden = true
            View2.isHidden = true
            View3.isHidden = false
            View4.isHidden = true
            View5.isHidden = false
            View6.isHidden = true
            View7.isHidden = false
            View8.isHidden = true
            View9.isHidden = true
        case 4:
            View1.isHidden = false
            View2.isHidden = true
            View3.isHidden = false
            View4.isHidden = true
            View5.isHidden = true
            View6.isHidden = true
            View7.isHidden = false
            View8.isHidden = true
            View9.isHidden = false
        case 5:
            View1.isHidden = false
            View2.isHidden = true
            View3.isHidden = false
            View4.isHidden = true
            View5.isHidden = false
            View6.isHidden = true
            View7.isHidden = false
            View8.isHidden = true
            View9.isHidden = false
        case 6 :
            View1.isHidden = false
            View2.isHidden = false
            View3.isHidden = false
            View4.isHidden = true
            View5.isHidden = true
            View6.isHidden = true
            View7.isHidden = false
            View8.isHidden = false
            View9.isHidden = false
        default:
            View1.isHidden = true
            View2.isHidden = true
            View3.isHidden = true
            View4.isHidden = true
            View5.isHidden = true
            View6.isHidden = true
            View7.isHidden = true
            View8.isHidden = true
            View9.isHidden = true
            
        }
    }
    
    @IBAction func dieRoll(_ sender: Any) {
        let diceRoll = randomDiceRoll()
        print("The dice roll is", diceRoll)
       updateScores(roll: diceRoll)
        rearrangeSquares(roll: diceRoll)
    }
    
    
}
    

