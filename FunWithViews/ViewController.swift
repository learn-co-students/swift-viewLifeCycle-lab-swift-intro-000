//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var blackSquer1: UIView!
    @IBOutlet weak var blackSquer2: UIView!
    @IBOutlet weak var blackSquer3: UIView!
    @IBOutlet weak var blackSquer4: UIView!
    @IBOutlet weak var blackSquer5: UIView!
    @IBOutlet weak var blackSquer6: UIView!
    @IBOutlet weak var blackSquer7: UIView!
    
    @IBOutlet weak var result1: UILabel!
    @IBOutlet weak var result2: UILabel!
    @IBOutlet weak var result3: UILabel!
    @IBOutlet weak var result4: UILabel!
    @IBOutlet weak var result5: UILabel!
    @IBOutlet weak var result6: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        blackSquer1.isHidden = true
        blackSquer2.isHidden = true
        blackSquer3.isHidden = true
        blackSquer4.isHidden = true
        blackSquer5.isHidden = true
        blackSquer6.isHidden = true
        blackSquer7.isHidden = true
        
        result1.isHidden = true
        result2.isHidden = true
        result3.isHidden = true
        result4.isHidden = true
        result5.isHidden = true
        result6.isHidden = true
    }
    
    @IBAction func dirButtonAction(_ sender: AnyObject) {
        print("butten press")
        
        func updateLabelWithRoll(roll: Int) {
            let diceScore = String(roll)
            print(diceScore)
            if result1.isHidden {
                result1.text = diceScore
                result1.isHidden = false
                rearrangeDie(roll: roll)
            }else if result2.isHidden {
                result2.text = diceScore
                result2.isHidden = false
                rearrangeDie(roll: roll)
            } else if result3.isHidden {
                result3.text = diceScore
                result3.isHidden = false
                rearrangeDie(roll: roll)
            }else if result4.isHidden {
                result4.text = diceScore
                result4.isHidden = false
                rearrangeDie(roll: roll)
            }else if result5.isHidden {
                result5.text = diceScore
                result5.isHidden = false
                rearrangeDie(roll: roll)
            }else if result6.isHidden{
                result6.text = diceScore
                result6.isHidden = false
                rearrangeDie(roll: roll)
            } else{
                viewDidLoad()
            }
        }
        func rearrangeDie(roll: Int){
            
            if roll == 1{
                blackSquer1.isHidden = true
                blackSquer2.isHidden = true
                blackSquer3.isHidden = true
                blackSquer4.isHidden = false
                blackSquer5.isHidden = true
                blackSquer6.isHidden = true
                blackSquer7.isHidden = true
            }else if roll == 2{
                blackSquer1.isHidden = false
                blackSquer2.isHidden = true
                blackSquer3.isHidden = true
                blackSquer4.isHidden = true
                blackSquer5.isHidden = true
                blackSquer6.isHidden = true
                blackSquer7.isHidden = false
            }else if roll == 3{
                blackSquer1.isHidden = false
                blackSquer2.isHidden = true
                blackSquer3.isHidden = true
                blackSquer4.isHidden = false
                blackSquer5.isHidden = true
                blackSquer6.isHidden = true
                blackSquer7.isHidden = false
            }else if roll == 4{
                blackSquer1.isHidden = false
                blackSquer2.isHidden = true
                blackSquer3.isHidden = false
                blackSquer4.isHidden = true
                blackSquer5.isHidden = false
                blackSquer6.isHidden = true
                blackSquer7.isHidden = false
            }else if roll == 5{
                blackSquer1.isHidden = false
                blackSquer2.isHidden = true
                blackSquer3.isHidden = false
                blackSquer4.isHidden = false
                blackSquer5.isHidden = false
                blackSquer6.isHidden = true
                blackSquer7.isHidden = false
            }else if roll == 6{
                blackSquer1.isHidden = false
                blackSquer2.isHidden = false
                blackSquer3.isHidden = false
                blackSquer4.isHidden = true
                blackSquer5.isHidden = false
                blackSquer6.isHidden = false
                blackSquer7.isHidden = false
            }
            
        }
        let x = randomDiceRoll()
        updateLabelWithRoll(roll: x)
    }
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        print("button pres2")
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
