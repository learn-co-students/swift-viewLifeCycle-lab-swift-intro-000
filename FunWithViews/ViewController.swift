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
        clearDieSquare()
        clearScoreSquare()
        super.viewDidLoad()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        let dieRoll: Int = randomDiceRoll()
        
        if scoreSquare6.isHidden == false {
            clearDieSquare()
            clearScoreSquare()
        }
        
        showDie(roll: dieRoll)
        
        updateLabelWithRoll(roll: dieRoll)
    }
    
    func clearDieSquare(){
       
        dieSquare1.isHidden = true
        dieSquare2.isHidden = true
        dieSquare3.isHidden = true
        dieSquare4.isHidden = true
        dieSquare5.isHidden = true
        dieSquare6.isHidden = true
        dieSquare7.isHidden = true
    }
    
    func clearScoreSquare(){
        
        scoreSquare1.isHidden = true
        scoreSquare2.isHidden = true
        scoreSquare3.isHidden = true
        scoreSquare4.isHidden = true
        scoreSquare5.isHidden = true
        scoreSquare6.isHidden = true
    }
    
    func updateLabelWithRoll(roll:Int){
        
        let diceScore = String(roll)
        
        if scoreSquare1.isHidden {
            scoreSquare1.text = diceScore
            scoreSquare1.isHidden = false
        } else if scoreSquare2.isHidden {
            scoreSquare2.text = diceScore
            scoreSquare2.isHidden = false
        } else if scoreSquare3.isHidden {
            scoreSquare3.text = diceScore
            scoreSquare3.isHidden = false
        } else if scoreSquare4.isHidden {
            scoreSquare4.text = diceScore
            scoreSquare4.isHidden = false
        } else if scoreSquare5.isHidden{
            scoreSquare5.text = diceScore
            scoreSquare5.isHidden = false
        } else if scoreSquare6.isHidden {
            scoreSquare6.text = diceScore
            scoreSquare6.isHidden = false
        }
    }
    
    @IBOutlet weak var dieSquare1: UIView!
    @IBOutlet weak var dieSquare2: UIView!
    @IBOutlet weak var dieSquare3: UIView!
    @IBOutlet weak var dieSquare4: UIView!
    @IBOutlet weak var dieSquare5: UIView!
    @IBOutlet weak var dieSquare6: UIView!
    @IBOutlet weak var dieSquare7: UIView!
    
    @IBOutlet weak var scoreSquare1: UILabel!
    @IBOutlet weak var scoreSquare2: UILabel!
    @IBOutlet weak var scoreSquare3: UILabel!
    @IBOutlet weak var scoreSquare4: UILabel!
    @IBOutlet weak var scoreSquare5: UILabel!
    @IBOutlet weak var scoreSquare6: UILabel!
    
    func showDie(roll: Int){
        
        clearDieSquare()
        
        switch roll{
        case 1:
            dieSquare4.isHidden = false
        case 2:
            dieSquare1.isHidden = false
            dieSquare7.isHidden = false
        case 3:
            dieSquare2.isHidden = false
            dieSquare4.isHidden = false
            dieSquare6.isHidden = false
        case 4:
            dieSquare1.isHidden = false
            dieSquare2.isHidden = false
            dieSquare6.isHidden = false
            dieSquare7.isHidden = false
        case 5:
            dieSquare1.isHidden = false
            dieSquare2.isHidden = false
            dieSquare4.isHidden = false
            dieSquare6.isHidden = false
            dieSquare7.isHidden = false
        case 6:
            dieSquare1.isHidden = false
            dieSquare2.isHidden = false
            dieSquare3.isHidden = false
            dieSquare5.isHidden = false
            dieSquare6.isHidden = false
            dieSquare7.isHidden = false
        default:
            dieSquare1.isHidden = true
            }
        }

    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
