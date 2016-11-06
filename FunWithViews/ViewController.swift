//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Views
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!
    
    // Labels
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view1.isHidden = true
        view2.isHidden = true
        view3.isHidden = true
        view4.isHidden = true
        view5.isHidden = true
        view6.isHidden = true
        view7.isHidden = true
        
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let roll = randomDiceRoll()
        resetLabels()
        updateLabelWithRoll(roll)
        rearrangeDie(roll)
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    //Update labels with previous rolls
    
    func updateLabelWithRoll(_ roll: Int) {
        let rolls = String(roll)
        
        if  label1.text == "0" {
            label1.text = rolls
            label1.isHidden = false
        } else if label2.text == "0" {
            label2.text = rolls
            label2.isHidden = false
        } else if label3.text == "0" {
            label3.text = rolls
            label3.isHidden = false
        } else if label4.text == "0" {
            label4.text = rolls
            label4.isHidden = false
        } else if label5.text == "0" {
            label5.text = rolls
            label5.isHidden = false
        } else if label6.text == "0" {
            label6.text = rolls
            label6.isHidden = false
        }
    }
    
    //Show the approriate views according to the diceroll number
    func rearrangeDie(_ roll: Int) {
        
        if roll == 1 {
            view1.isHidden = true
            view2.isHidden = true
            view3.isHidden = true
            view4.isHidden = false
            view5.isHidden = true
            view6.isHidden = true
            view7.isHidden = true
        } else if roll == 2 {
            view1.isHidden = true
            view2.isHidden = true
            view3.isHidden = true
            view4.isHidden = false
            view5.isHidden = true
            view6.isHidden = true
            view7.isHidden = false
        } else if roll == 3 {
            view1.isHidden = false
            view2.isHidden = true
            view3.isHidden = true
            view4.isHidden = false
            view5.isHidden = true
            view6.isHidden = true
            view7.isHidden = false
        } else if roll == 4 {
            view1.isHidden = false
            view2.isHidden = true
            view3.isHidden = false
            view4.isHidden = true
            view5.isHidden = false
            view6.isHidden = true
            view7.isHidden = false
        } else if roll == 5 {
            view1.isHidden = false
            view2.isHidden = true
            view3.isHidden = false
            view4.isHidden = false
            view5.isHidden = false
            view6.isHidden = true
            view7.isHidden = false
        } else if roll == 6 {
            view1.isHidden = false
            view2.isHidden = false
            view3.isHidden = false
            view4.isHidden = true
            view5.isHidden = false
            view6.isHidden = false
            view7.isHidden = false
        }
    }
    
    func resetLabels() {
        if label1.text != "0", label2.text != "0", label3.text != "0", label4.text != "0", label5.text != "0", label6.text != "0" {
            label1.text = "0"
            label2.text = "0"
            label3.text = "0"
            label4.text = "0"
            label5.text = "0"
            label6.text = "0"
        }
    }

}
