//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Dots for dice roll
    @IBOutlet weak var boxOne: UIView!
    @IBOutlet weak var boxTwo: UIView!
    @IBOutlet weak var boxThree: UIView!
    @IBOutlet weak var boxFour: UIView!
    @IBOutlet weak var boxFive: UIView!
    @IBOutlet weak var boxSix: UIView!
    @IBOutlet weak var boxSeven: UIView!
    
    //Roll result indicators
    @IBOutlet weak var green: UILabel!
    @IBOutlet weak var yellow: UILabel!
    @IBOutlet weak var red: UILabel!
    @IBOutlet weak var pink: UILabel!
    @IBOutlet weak var purple: UILabel!
    @IBOutlet weak var blue: UILabel!

    @IBAction func rollDice(_ sender: AnyObject) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        boxOne.isHidden = true
        boxTwo.isHidden = true
        boxThree.isHidden = true
        boxFour.isHidden = true
        boxFive.isHidden = true
        boxSix.isHidden = true
        boxSeven.isHidden = true
        
        green.isHidden = true
        blue.isHidden = true
        red.isHidden = true
        yellow.isHidden = true
        pink.isHidden = true
        purple.isHidden = true
        
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        randomDiceRoll()
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
