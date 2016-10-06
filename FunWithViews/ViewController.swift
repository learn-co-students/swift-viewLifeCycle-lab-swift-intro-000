//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Black dots outlet
    @IBOutlet weak var dot1: UIView!
    @IBOutlet weak var dot2: UIView!
    @IBOutlet weak var dot3: UIView!
    @IBOutlet weak var dot4: UIView!
    @IBOutlet weak var dot5: UIView!
    @IBOutlet weak var dot6: UIView!
    @IBOutlet weak var dot7: UIView!
    
    //Label view and text outlet
    @IBOutlet weak var roll1: UIView!
    @IBOutlet weak var roll2: UIView!
    @IBOutlet weak var roll3: UIView!
    @IBOutlet weak var roll4: UIView!
    @IBOutlet weak var roll5: UIView!
    @IBOutlet weak var rollLabel1: UILabel!
    @IBOutlet weak var rollLabel2: UILabel!
    @IBOutlet weak var rollLabel3: UILabel!
    @IBOutlet weak var rollLabel4: UILabel!
    @IBOutlet weak var rollLabel5: UILabel!
    
    var count = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideDots()
        hideRolls()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        var result: Int
        result = randomDiceRoll()
        count += 1
        
        if (count == 1) {
            hideRolls()
            getResult(result)
            roll1.isHidden = false
            rollLabel1.text = String(result)
        }
        else if (count == 2) {
            getResult(result)
            roll2.isHidden = false
            rollLabel2.text = String(result)
        }
        else if (count == 3) {
            getResult(result)
            roll3.isHidden = false
            rollLabel3.text = String(result)
        }
        else if (count == 4) {
            getResult(result)
            roll4.isHidden = false
            rollLabel4.text = String(result)
        }
        else if (count == 5) {
            getResult(result)
            roll5.isHidden = false
            rollLabel5.text = String(result)
            count = 0
        }
        
    }
    
    //hide all rolls view
    func hideRolls() {
        roll1.isHidden = true
        roll2.isHidden = true
        roll3.isHidden = true
        roll4.isHidden = true
        roll5.isHidden = true
    }
    
    //hide all dots
    func hideDots() {
        dot1.isHidden = true
        dot2.isHidden = true
        dot3.isHidden = true
        dot4.isHidden = true
        dot5.isHidden = true
        dot6.isHidden = true
        dot7.isHidden = true
    }
    
    //Show dot base on result
    func getResult(_ result: Int) {
       
        if (result == 1) {
            hideDots()
            dot4.isHidden = false
        }
        else if (result == 2) {
            hideDots()
            dot1.isHidden = false
            dot7.isHidden = false
        }
        else if (result == 3) {
            hideDots()
            dot1.isHidden = false
            dot4.isHidden = false
            dot7.isHidden = false
        }
        else if (result == 4) {
            hideDots()
            dot1.isHidden = false
            dot2.isHidden = false
            dot6.isHidden = false
            dot7.isHidden = false
        }
        else if (result == 5) {
            hideDots()
            dot1.isHidden = false
            dot2.isHidden = false
            dot4.isHidden = false
            dot6.isHidden = false
            dot7.isHidden = false
        }
        else if (result == 6){
            hideDots()
            dot1.isHidden = false
            dot2.isHidden = false
            dot3.isHidden = false
            dot5.isHidden = false
            dot6.isHidden = false
            dot7.isHidden = false
        }

    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
