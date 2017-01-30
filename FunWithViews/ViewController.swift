//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!
  
    
    @IBOutlet weak var dice1: UILabel!
    @IBOutlet weak var dice2: UILabel!
    @IBOutlet weak var dice3: UILabel!
    @IBOutlet weak var dice4: UILabel!
    @IBOutlet weak var dice5: UILabel!
    @IBOutlet weak var dice6: UILabel!
    
    @IBOutlet weak var diceLabel: UIButton!
    
    @IBAction func diceRolled(_ sender: Any) {
        hideViews()
       updateLabelWithRoll(roll: randomDiceRoll())
        
      
        
    }
    
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        
        if dice1.isHidden {
            dice1.text = diceScore
            dice1.isHidden = false
        } else if dice2.isHidden {
            dice2.text = diceScore
            dice2.isHidden = false
        } else if dice3.isHidden {
            dice3.text = diceScore
            dice3.isHidden = false
        } else if dice4.isHidden {
            dice4.text = diceScore
            dice4.isHidden = false
        } else if dice5.isHidden {
            dice5.text = diceScore
            dice5.isHidden = false
        } else if dice6.isHidden {
            dice6.text = diceScore
            dice6.isHidden = false
        } else {
            hideViews()
            hideDice()
            
            
            
        }
        
    
        
        switch roll {
        case 1:
            
            view1.isHidden = false
            
        case 2 :
            
            view1.isHidden = false
            view3.isHidden = false
        case 3 :
            view1.isHidden = false
            view3.isHidden = false
            view5.isHidden = false
        case 4:
            view1.isHidden = false
            view3.isHidden = false
            view2.isHidden = false
            view4.isHidden = false
        case 5:
            view1.isHidden = false
            view3.isHidden = false
            view2.isHidden = false
            view4.isHidden = false
            view5.isHidden = false
        case 6:
            view1.isHidden = false
            view3.isHidden = false
            view2.isHidden = false
            view4.isHidden = false
            view5.isHidden = false
            view6.isHidden = false
        default:
            hideViews()
            hideDice()
            
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideViews()
        hideDice()
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        
        return Int(arc4random_uniform(6) + 1)
        
    }
    
    func hideViews() {
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        view7.isHidden = true
    }
    
    func hideDice() {
        dice1.isHidden = true
        dice2.isHidden = true
        dice3.isHidden = true
        dice4.isHidden = true
        dice5.isHidden = true
        dice6.isHidden = true
    }
    func renameDice() {
        
        dice1.text = "R"
        dice2.text = "E"
        dice3.text = "S"
        dice4.text = "T"
        dice5.text = "A"
        dice6.text = "R"
    }

}
