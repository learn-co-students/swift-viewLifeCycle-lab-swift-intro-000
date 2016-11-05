//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    
    
    @IBOutlet weak var Button1: UIView!
    @IBOutlet weak var Button2: UIView!
    @IBOutlet weak var Button3: UIView!
    @IBOutlet weak var Button4: UIView!
    @IBOutlet weak var Button5: UIView!
    @IBOutlet weak var Button6: UIView!
    @IBOutlet weak var Button7: UIView!
    @IBOutlet weak var RedLabel: UILabel!
    @IBOutlet weak var orangeLabel: UILabel!
    @IBOutlet weak var yellowLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var PurpleLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for view in self.view.subviews {
            if view is UILabel {
                view.isHidden = true
            }
        }
        Button1.isHidden = true
        Button2.isHidden = true
        Button3.isHidden = true
        Button4.isHidden = true
        Button5.isHidden = true
        Button6.isHidden = true
        Button7.isHidden = true
    }
    
    
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let same = randomDiceRoll()
        
        updateLabelWithRoll(roll: same)
        revealButton(roll: same)
        
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if RedLabel.isHidden {
            RedLabel.text = diceScore
            RedLabel.isHidden = false
        } else if orangeLabel.isHidden {
            orangeLabel.text = diceScore
            orangeLabel.isHidden = false
        } else if yellowLabel.isHidden {
            yellowLabel.text = diceScore
            yellowLabel.isHidden = false
        } else if greenLabel.isHidden {
            greenLabel.text = diceScore
            greenLabel.isHidden = false
        } else if blueLabel.isHidden {
            blueLabel.text = diceScore
            blueLabel.isHidden = false
        } else if PurpleLabel.isHidden {
            PurpleLabel.text = diceScore
            PurpleLabel.isHidden = false
        } else {
            resetLabel()
            RedLabel.text = diceScore
        }
        
    }
    
    func revealButton(roll: Int) {
        Button1.isHidden = true
        Button2.isHidden = true
        Button3.isHidden = true
        Button4.isHidden = true
        Button5.isHidden = true
        Button6.isHidden = true
        Button7.isHidden = true
        if roll == 1 {
            Button1.isHidden = false
        } else if roll == 2 {
            Button1.isHidden = false
            Button7.isHidden = false
        } else if roll == 3{
            Button1.isHidden = false
            Button4.isHidden = false
            Button7.isHidden = false
        }  else if roll == 4 {
            Button1.isHidden = false
            Button3.isHidden = false
            Button5.isHidden = false
            Button7.isHidden = false
        }  else if roll == 5 {
            Button1.isHidden = false
            Button2.isHidden = false
            Button5.isHidden = false
            Button6.isHidden = false
            Button7.isHidden = false
        } else if roll == 6 {
            Button1.isHidden = false
            Button2.isHidden = false
            Button3.isHidden = false
            Button5.isHidden = false
            Button6.isHidden = false
            Button7.isHidden = false
        } else if roll == 7 {
            Button1.isHidden = false
            Button2.isHidden = false
            Button3.isHidden = false
            Button4.isHidden = false
            Button5.isHidden = false
            Button6.isHidden = false
            Button7.isHidden = false
        }
    }
    
    func resetLabel() {
//            RedLabel.isHidden = true
             orangeLabel.isHidden = true
            yellowLabel.isHidden = true
            greenLabel.isHidden = true
            blueLabel.isHidden = true
            PurpleLabel.isHidden = true
    }
}


