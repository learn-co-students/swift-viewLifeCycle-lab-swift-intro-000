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
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
//        randomDiceRoll()
        print(randomDiceRoll())
    }

    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        var diceRoll = Int(arc4random_uniform(6) + 1)
        if diceRoll >= 7 {
            diceRoll -= 1
        }
        return diceRoll
    }
    
}
