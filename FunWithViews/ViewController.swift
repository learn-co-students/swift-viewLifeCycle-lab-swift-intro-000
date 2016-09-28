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
    
    @IBOutlet weak var topOfFarLeft: UIView!
    @IBOutlet weak var midFarLeft: UIView!
    @IBOutlet weak var bottomOfFarLeft: UIView!
    
    @IBOutlet weak var topOfDeadMiddle: UIView!
    @IBOutlet weak var deadMiddle: UIView!
    @IBOutlet weak var bottomOfDeadMiddle: UIView!
    
    @IBOutlet weak var topOfFarRight: UIView!
    @IBOutlet weak var midFarRight: UIView!
    @IBOutlet weak var bottomOfFarRight: UIView!
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let valueRolled = randomDiceRoll()
        print(randomDiceRoll())
        print(valueRolled)
    }
    
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    
}
