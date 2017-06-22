//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dice1: UIView!
    @IBOutlet weak var dice2: UIView!
    @IBOutlet weak var dice3: UIView!
    @IBOutlet weak var dice4: UIView!
    @IBOutlet weak var dice5: UIView!
    @IBOutlet weak var dice6: UIView!
    @IBOutlet weak var dice7: UIView!
    
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    
    
    
    @IBAction func diceButton(_ sender: Any) {
        dice4.isHidden = false
        dice2.isHidden = false
    }
    
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
        
    }
    
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
        
//        switch randomDiceRoll() {
//        case 1:
//            dice4.isHidden = false
//            dice1.isHidden = true
//            dice2.isHidden = true
//            dice3.isHidden = true
//            dice5.isHidden = true
//            dice6.isHidden = true
//            dice7.isHidden = true
//        case 2:
//            dice1.isHidden = false
//            dice7.isHidden = false
//            dice2.isHidden = true
//            dice3.isHidden = true
//            dice4.isHidden = true
//            dice5.isHidden = true
//            dice6.isHidden = true
//        case 3:
//            dice1.isHidden = false
//            dice4.isHidden = false
//            dice7.isHidden = false
//            dice2.isHidden = true
//            dice3.isHidden = true
//            dice5.isHidden = true
//            dice6.isHidden = true
//        case 4:
//            dice1.isHidden = false
//            dice3.isHidden = false
//            dice5.isHidden = false
//            dice7.isHidden = false
//            dice2.isHidden = true
//            dice4.isHidden = true
//            dice6.isHidden = true
//        case 5:
//            dice1.isHidden = false
//            dice3.isHidden = false
//            dice5.isHidden = false
//            dice7.isHidden = false
//            dice4.isHidden = false
//            dice2.isHidden = true
//            dice6.isHidden = true
//        case 6:
//            dice1.isHidden = false
//            dice2.isHidden = false
//            dice3.isHidden = false
//            dice5.isHidden = false
//            dice6.isHidden = false
//            dice7.isHidden = false
//            dice4.isHidden = true
//        default:
//            dice2.isHidden = false
//        }
    
   

}
