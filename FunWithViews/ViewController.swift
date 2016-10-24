//
//  ViewController.swift
//  FunWithViews
//
//  Created by Andy Tan on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // dice
    @IBOutlet weak var dice1: UIView!
    @IBOutlet weak var dice2: UIView!
    @IBOutlet weak var dice3: UIView!
    @IBOutlet weak var dice4: UIView!
    @IBOutlet weak var dice5: UIView!
    @IBOutlet weak var dice6: UIView!
    @IBOutlet weak var dice7: UIView!
    
    // score
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
   
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    } // random generator
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dice1.isHidden = true
        dice2.isHidden = true
        dice3.isHidden = true
        dice4.isHidden = true
        dice5.isHidden = true
        dice6.isHidden = true
        dice7.isHidden = true
        
        label1.isHidden = true
        label2.isHidden = true
        label3.isHidden = true
        label4.isHidden = true
        label5.isHidden = true
        label6.isHidden = true
        
    } // override
    
    
    @IBAction func pressMe(_ sender: AnyObject) {
        
        var test: Int
        test = randomDiceRoll()
        print(test)
        
        dice1.isHidden = true
        dice2.isHidden = true
        dice3.isHidden = true
        dice4.isHidden = true
        dice5.isHidden = true
        dice6.isHidden = true
        dice7.isHidden = true
        
        switch (test)
        {
            case 1:
                dice7.isHidden = false
            
            case 2:
                dice3.isHidden = false
                dice4.isHidden = false
            
            case 3:
                dice3.isHidden = false
                dice4.isHidden = false
                dice7.isHidden = false
            
            case 4:
                dice1.isHidden = false
                dice3.isHidden = false
                dice4.isHidden = false
                dice6.isHidden = false
            
            case 5:
                dice1.isHidden = false
                dice3.isHidden = false
                dice4.isHidden = false
                dice6.isHidden = false
                dice7.isHidden = false
            
            case 6:
                dice1.isHidden = false
                dice2.isHidden = false
                dice3.isHidden = false
                dice4.isHidden = false
                dice5.isHidden = false
                dice6.isHidden = false
            
            default:
                dice1.isHidden = true
                dice2.isHidden = true
                dice3.isHidden = true
                dice4.isHidden = true
                dice5.isHidden = true
                dice6.isHidden = true
                dice7.isHidden = true
        } // switch
    
        if label1.isHidden {
            label1.isHidden = false
            label1.text = String(test)
        } else if label2.isHidden {
            label2.isHidden = false
            label2.text = String(test)
        } else if label3.isHidden {
            label3.isHidden = false
            label3.text = String(test)
        } else if label4.isHidden {
            label4.isHidden = false
            label4.text = String(test)
        } else if label5.isHidden {
            label5.isHidden = false
            label5.text = String(test)
        } else if label6.isHidden {
            label6.isHidden = false
            label6.text = String(test)
        } else {
            label1.isHidden = true
            label2.isHidden = true
            label3.isHidden = true
            label4.isHidden = true
            label5.isHidden = true
            label6.isHidden = true
            
            dice1.isHidden = true
            dice2.isHidden = true
            dice3.isHidden = true
            dice4.isHidden = true
            dice5.isHidden = true
            dice6.isHidden = true
            dice7.isHidden = true
        } // if
        
    } // pressMe
    
} // class
