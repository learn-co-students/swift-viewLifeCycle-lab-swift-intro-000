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
    @IBOutlet weak var view8: UIView!
    @IBOutlet weak var view9: UIView!
    @IBOutlet weak var previous1: UILabel!
    @IBOutlet weak var previous2: UILabel!
    @IBOutlet weak var previous3: UILabel!
    @IBOutlet weak var previous4: UILabel!
    @IBOutlet weak var previous5: UILabel!
    var currentValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearRoll()
    }
    
    @IBAction func rollDice(_ sender: Any) {
        if (currentValue != 0)
        {
            addToPrevious(number: currentValue)
        }
        currentValue = randomDiceRoll()
        clearRoll()
        displayRoll(number: currentValue)
    }
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
//        return 2
    }
    
    func displayRoll(number: Int) {
        switch number {
        case 1:
            view5.isHidden = false
        case 2:
            view1.isHidden = false
            view9.isHidden = false
        case 3:
            view1.isHidden = false
            view5.isHidden = false
            view9.isHidden = false
        case 4:
            view1.isHidden = false
            view3.isHidden = false
            view7.isHidden = false
            view9.isHidden = false
        case 5:
            view1.isHidden = false
            view3.isHidden = false
            view5.isHidden = false
            view7.isHidden = false
            view9.isHidden = false
        case 6:
            view1.isHidden = false
            view3.isHidden = false
            view4.isHidden = false
            view6.isHidden = false
            view7.isHidden = false
            view9.isHidden = false
        default:
            view1.isHidden=true
        }
    }
    
    func clearRoll() {
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        view7.isHidden = true
        view8.isHidden = true
        view9.isHidden = true
    }
    
    func addToPrevious(number: Int) {
        previous5.text = previous4.text
        previous4.text = previous3.text
        previous3.text = previous2.text
        previous2.text = previous1.text
        previous1.text = String(currentValue)
    }

}
