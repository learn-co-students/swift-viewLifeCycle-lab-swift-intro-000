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
    
    @IBOutlet weak var View1: UIView!
    @IBOutlet weak var View2: UIView!
    @IBOutlet weak var View3: UIView!
    @IBOutlet weak var View4: UIView!
    @IBOutlet weak var View5: UIView!
    @IBOutlet weak var View6: UIView!
    @IBOutlet weak var View7: UIView!
    @IBOutlet weak var ViewResult1: UIView!
    @IBOutlet weak var ViewResult2: UIView!
    @IBOutlet weak var ViewResult3: UIView!
    @IBOutlet weak var ViewResult4: UIView!
    @IBOutlet weak var ViewResult5: UIView!
    @IBOutlet weak var ViewResult6: UIView!
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Label2: UILabel!
    @IBOutlet weak var Label3: UILabel!
    @IBOutlet weak var Label4: UILabel!
    @IBOutlet weak var Label5: UILabel!
    @IBOutlet weak var Label6: UILabel!
    
    var timesRolled = 0
    
    func cleanDye() {
        View1.isHidden = true
        View2.isHidden = true
        View3.isHidden = true
        View4.isHidden = true
        View5.isHidden = true
        View6.isHidden = true
        View7.isHidden = true
    }
    
    func cleanResults() {
        ViewResult1.isHidden = true
        ViewResult2.isHidden = true
        ViewResult3.isHidden = true
        ViewResult4.isHidden = true
        ViewResult5.isHidden = true
        ViewResult6.isHidden = true
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func showDye(_ roll: Int) {
        if roll % 2 != 0 {
            View7.isHidden = false
        }
        if roll == 6 {
            View5.isHidden = false
            View6.isHidden = false
        }
        if roll > 1 {
            View2.isHidden = false
            View3.isHidden = false
        }
        if roll > 3 {
            View1.isHidden = false
            View4.isHidden = false
        }
    }
    
    func showResult(_ roll: Int) {
        if timesRolled == 0 {
            ViewResult1.isHidden = false
            Label1.text = String(roll)
        } else if timesRolled == 1 {
            ViewResult2.isHidden = false
            Label2.text = String(roll)
        } else if timesRolled == 2 {
            ViewResult3.isHidden = false
            Label3.text = String(roll)
        } else if timesRolled == 3 {
            ViewResult4.isHidden = false
            Label4.text = String(roll)
        } else if timesRolled == 4 {
            ViewResult5.isHidden = false
            Label5.text = String(roll)
        } else if timesRolled == 5 {
            ViewResult6.isHidden = false
            Label6.text = String(roll)
        }
        timesRolled += 1
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        if timesRolled == 6 {
            timesRolled = 0
            cleanResults()
        }
        cleanDye()
        let roll = randomDiceRoll()
        print(roll)
        showDye(roll)
        showResult(roll)
    }

}
