//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var dieBlock: UIView!
    @IBOutlet weak var diceRoll:UILabel!
    var rollCount = 1
    @IBOutlet weak var topLeft: UIView!
    @IBOutlet weak var topRight: UIView!
    @IBOutlet weak var middleLeft: UIView!
    @IBOutlet weak var middleRight: UIView!
    @IBOutlet weak var bottomLeft: UIView!
    @IBOutlet weak var bottomMiddle: UIView!
    @IBOutlet weak var bottomRight: UIView!
    @IBOutlet weak var middleMiddle: UIView!
    
    @IBOutlet weak var roll1: UILabel!
    @IBOutlet weak var roll2: UILabel!
    @IBOutlet weak var roll3: UILabel!
    @IBOutlet weak var roll4: UILabel!
    @IBOutlet weak var roll5: UILabel!
    @IBOutlet weak var roll6: UILabel!
    @IBOutlet weak var resetWarning: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //hides die blocks at beginning
        topLeft.isHidden = true
        topMiddle.isHidden = true
        topRight.isHidden = true
        middleLeft.isHidden = true
        middleMiddle.isHidden = true
        middleRight.isHidden = true
        bottomLeft.isHidden = true
        bottomMiddle.isHidden = true
        bottomRight.isHidden = true
        resetWarning.isHidden = true
        
        
        //hides blocks that store users rolls
        roll1.isHidden = true
        roll2.isHidden = true
        roll3.isHidden = true
        roll4.isHidden = true
        roll5.isHidden = true
        roll6.isHidden = true
    }
    
    @IBOutlet weak var topMiddle: UIView!
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let roll = randomDiceRoll()
        //resets the die blocks each roll
        topLeft.isHidden = true
        topMiddle.isHidden = true
        topRight.isHidden = true
        middleLeft.isHidden = true
        middleMiddle.isHidden = true
        middleRight.isHidden = true
        bottomLeft.isHidden = true
        bottomMiddle.isHidden = true
        bottomRight.isHidden = true
        
        
        
        switch roll {
            
        case 1:
            middleMiddle.isHidden = false
        
        case 2:
        bottomLeft.isHidden = false
        
        topRight.isHidden = false
        
        case 3:
            bottomLeft.isHidden = false
            middleMiddle.isHidden = false
            topRight.isHidden = false
        case 4:
            topLeft.isHidden = false
            bottomLeft.isHidden = false
            topRight.isHidden = false
            bottomRight.isHidden = false
        case 5:
            topLeft.isHidden = false
            bottomLeft.isHidden = false
            middleMiddle.isHidden = false
            topRight.isHidden = false
            bottomRight.isHidden = false
        case 6:
            topLeft.isHidden = false
            bottomLeft.isHidden = false
            middleLeft.isHidden = false
            topRight.isHidden = false
            bottomRight.isHidden = false
            middleRight.isHidden = false
        
        default:
            topLeft.isHidden = false
            
        
        }
        switch rollCount{
        case 1:
            roll1.text = String(roll)
            roll1.isHidden = false
            
        case 2:
            roll2.text = String(roll)
            roll2.isHidden = false
            roll2.backgroundColor = UIColor.purple
        case 3:
            roll3.text = String(roll)
            roll3.isHidden = false
            roll3.backgroundColor = UIColor.green
        case 4:
            roll4.text = String(roll)
            roll4.isHidden = false
            roll4.backgroundColor = UIColor.orange
        case 5:
            roll5.text = String(roll)
            roll5.isHidden = false
            roll5.backgroundColor = UIColor.blue
        case 6:
            roll6.text = String(roll)
            roll6.isHidden = false
            roll6.backgroundColor = UIColor.yellow
            resetWarning.isHidden = false
          
        default:
            rollCount = 0
            roll1.isHidden = true
            roll2.isHidden = true
            roll3.isHidden = true
            roll4.isHidden = true
            roll5.isHidden = true
            roll6.isHidden = true
            
            topLeft.isHidden = true
            topMiddle.isHidden = true
            topRight.isHidden = true
            middleLeft.isHidden = true
            middleMiddle.isHidden = true
            middleRight.isHidden = true
            bottomLeft.isHidden = true
            bottomMiddle.isHidden = true
            bottomRight.isHidden = true
            resetWarning.isHidden = true
            
            
            
        }
        rollCount += 1
    
        roll1.text = String(roll)
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }



}
