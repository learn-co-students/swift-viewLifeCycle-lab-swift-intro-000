//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 
    
    @IBOutlet weak var box1: UIView!
    @IBOutlet weak var box2: UIView!
    @IBOutlet weak var box3: UIView!
    @IBOutlet weak var box4: UIView!
    @IBOutlet weak var box5: UIView!
    @IBOutlet weak var box6: UIView!
    @IBOutlet weak var box7: UIView!
    @IBOutlet weak var red: UIView!
    @IBOutlet weak var orange: UIView!
    @IBOutlet weak var yellow: UIView!
    @IBOutlet weak var green: UIView!
    @IBOutlet weak var blue: UIView!
    @IBOutlet weak var purple: UIView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        box1.isHidden = true
        box2.isHidden = true
        box3.isHidden = true
        box4.isHidden = true
        box5.isHidden = true
        box6.isHidden = true
        box7.isHidden = true
        red.isHidden = true
        orange.isHidden = true
        yellow.isHidden = true
        green.isHidden = true
        blue.isHidden = true
        purple.isHidden = true
        
    }
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        let roll = randomDiceRoll()
        updateLabelWithRoll(roll)
        rearrangeDie(roll)
        
    }
    func rearrangeDie(_ roll: Int){

        if(roll == 1)
        {
            box4.isHidden = false
            box1.isHidden = true
            box2.isHidden = true
            box3.isHidden = true
            box5.isHidden = true
            box6.isHidden = true
        }
        else if(roll == 2)
        {
            box1.isHidden = false
            box7.isHidden = false
            box2.isHidden = true
            box3.isHidden = true
            box5.isHidden = true
            box6.isHidden = true
            box4.isHidden = true
        }
        else if(roll == 3)
        {
            box1.isHidden = false
            box7.isHidden = false
            box4.isHidden = false
            box2.isHidden = true
            box3.isHidden = true
            box5.isHidden = true
            box6.isHidden = true
        }
        else if(roll == 4)
        {
            box1.isHidden = false
            box3.isHidden = false
            box5.isHidden = false
            box7.isHidden = false
            box2.isHidden = true
            box6.isHidden = true
            box4.isHidden = true

        }
        else if(roll == 5)
        {
            box1.isHidden = false
            box3.isHidden = false
            box4.isHidden = false
            box5.isHidden = false
            box7.isHidden = false
            box2.isHidden = true
            box6.isHidden = true
        }
        else if(roll == 6)
        {
            box1.isHidden = false
            box2.isHidden = false
            box3.isHidden = false
            box5.isHidden = false
            box6.isHidden = false
            box7.isHidden = false
            box4.isHidden = true
        }
    }
    
    func updateLabelWithRoll(_ roll: Int) {
        
        let diceScore = String(roll)
        
        if red.isHidden {
            label1.text = diceScore
            red.isHidden = false
        } else if orange.isHidden {
            label2.text = diceScore
            orange.isHidden = false
        } else if yellow.isHidden {
            label3.text = diceScore
            yellow.isHidden = false
        }
        else if green.isHidden {
            label4.text = diceScore
            green.isHidden = false
        }
        else if blue.isHidden {
            label5.text = diceScore
            blue.isHidden = false
        }
        else if purple.isHidden {
            label6.text = diceScore
            purple.isHidden = false
        }
        
    }



    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
  
    
    
}
