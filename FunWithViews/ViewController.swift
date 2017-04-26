//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var View1: UIView!
    @IBOutlet weak var View2: UIView!
    @IBOutlet weak var View3: UIView!
    @IBOutlet weak var View4: UIView!
    @IBOutlet weak var View5: UIView!
    @IBOutlet weak var View6: UIView!
    @IBOutlet weak var View7: UIView!
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Label2: UILabel!
    @IBOutlet weak var Label3: UILabel!
    @IBOutlet weak var Label4: UILabel!
    @IBOutlet weak var Label5: UILabel!
    @IBOutlet weak var Label6: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        View1.isHidden = true
        View2.isHidden = true
        View3.isHidden = true
        View4.isHidden = true
        View5.isHidden = true
        View6.isHidden = true
        View7.isHidden = true
        Label1.isHidden = true
        Label2.isHidden = true
        Label3.isHidden = true
        Label4.isHidden = true
        Label5.isHidden = true
        Label6.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        print("Rolled die")
        
        switch randomDiceRoll() {
        case 1:
            View1.isHidden = true
            View2.isHidden = true
            View3.isHidden = true
            View4.isHidden = false
            View5.isHidden = true
            View6.isHidden = true
            View7.isHidden = true
            updateLabelWithRoll(roll: 1)
        case 2:
            View1.isHidden = true
            View2.isHidden = false
            View3.isHidden = true
            View4.isHidden = true
            View5.isHidden = true
            View6.isHidden = false
            View7.isHidden = true
            updateLabelWithRoll(roll: 2)
        case 3:
            View1.isHidden = true
            View2.isHidden = true
            View3.isHidden = false
            View4.isHidden = false
            View5.isHidden = false
            View6.isHidden = true
            View7.isHidden = true
            updateLabelWithRoll(roll: 3)
        case 4:
            View1.isHidden = false
            View2.isHidden = true
            View3.isHidden = false
            View4.isHidden = true
            View5.isHidden = false
            View6.isHidden = true
            View7.isHidden = false
            updateLabelWithRoll(roll: 4)
        case 5:
            View1.isHidden = false
            View2.isHidden = true
            View3.isHidden = false
            View4.isHidden = false
            View5.isHidden = false
            View6.isHidden = true
            View7.isHidden = false
            updateLabelWithRoll(roll: 5)
        case 6:
            View1.isHidden = false
            View2.isHidden = false
            View3.isHidden = false
            View4.isHidden = true
            View5.isHidden = false
            View6.isHidden = false
            View7.isHidden = false
            updateLabelWithRoll(roll: 6)
        default:
            View1.isHidden = true
            View2.isHidden = true
            View3.isHidden = true
            View4.isHidden = true
            View5.isHidden = true
            View6.isHidden = true
            View7.isHidden = true
        }
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func updateLabelWithRoll(roll: Int) {
        let diceScore = String(roll)
        print(diceScore)
        if Label1.isHidden {
            Label1.text = diceScore
            Label1.isHidden = false
        } else if Label2.isHidden {
            Label2.text = diceScore
            Label2.isHidden = false
        } else if Label3.isHidden {
            Label3.text = diceScore
            Label3.isHidden = false
        } else if Label4.isHidden {
            Label4.text = diceScore
            Label4.isHidden = false
        } else if Label5.isHidden {
            Label5.text = diceScore
            Label5.isHidden = false
        } else if Label6.isHidden {
            Label6.text = diceScore
            Label6.isHidden = false }
    }

    
}

