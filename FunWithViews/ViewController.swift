//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var position1: UIView!
    @IBOutlet weak var position2: UIView!
    @IBOutlet weak var position3: UIView!
    @IBOutlet weak var position4: UIView!
    @IBOutlet weak var position5: UIView!
    @IBOutlet weak var position6: UIView!
    @IBOutlet weak var position7: UIView!
    @IBOutlet weak var box1: UILabel!
    @IBOutlet weak var box2: UILabel!
    @IBOutlet weak var box3: UILabel!
    @IBOutlet weak var box4: UILabel!
    @IBOutlet weak var box5: UILabel!
    @IBOutlet weak var box6: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        position1.isHidden = true
        position2.isHidden = true
        position3.isHidden = true
        position4.isHidden = true
        position5.isHidden = true
        position6.isHidden = true
        position7.isHidden = true
        box1.isHidden = true
        box2.isHidden = true
        box3.isHidden = true
        box4.isHidden = true
        box5.isHidden = true
        box6.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let diceRoll: Int = randomDiceRoll()
        switch diceRoll {
        case 1:
            position4.isHidden = false
            position1.isHidden = true
            position2.isHidden = true
            position3.isHidden = true
            position5.isHidden = true
            position6.isHidden = true
            position7.isHidden = true
            fillBox(roll: diceRoll)
        case 2:
            position3.isHidden = true
            position5.isHidden = true
            position1.isHidden = false
            position2.isHidden = true
            position4.isHidden = true
            position6.isHidden = true
            position7.isHidden = false
            fillBox(roll: diceRoll)
            
        case 3:
            position1.isHidden = false
            position4.isHidden = false
            position7.isHidden = false
            position2.isHidden = true
            position3.isHidden = true
            position5.isHidden = true
            position6.isHidden = true
            fillBox(roll: diceRoll)
        case 4:
            position1.isHidden = false
            position2.isHidden = false
            position6.isHidden = false
            position7.isHidden = false
            position3.isHidden = true
            position4.isHidden = true
            position5.isHidden = true
            fillBox(roll: diceRoll)
        case 5:
            position3.isHidden = true
            position5.isHidden = true
            position1.isHidden = false
            position2.isHidden = false
            position4.isHidden = false
            position6.isHidden = false
            position7.isHidden = false
            fillBox(roll: diceRoll)
        case 6:
            position1.isHidden = false
            position2.isHidden = false
            position3.isHidden = false
            position4.isHidden = true
            position5.isHidden = false
            position6.isHidden = false
            position7.isHidden = false
            fillBox(roll: diceRoll)
        default:
            position1.isHidden = true
            position2.isHidden = true
            position3.isHidden = true
            position4.isHidden = true
            position5.isHidden = true
            position6.isHidden = true
            position7.isHidden = true
        }
        
    }
    
    //Fill the box
    func fillBox(roll: Int) {
        if box1.isHidden {
            box1.isHidden = false
            box1.text = String(roll)
        } else if box2.isHidden {
            box2.isHidden = false
            box2.text = String(roll)
        } else if box3.isHidden{
            box3.isHidden = false
            box3.text = String(roll)
        } else if box4.isHidden {
            box4.isHidden = false
            box4.text = String(roll)
        } else if box5.isHidden {
            box5.isHidden = false
            box5.text = String(roll)
        } else if box6.isHidden {
            box6.isHidden = false
            box6.text = String(roll)
        } else {
            box1.isHidden = true
            box1.text = String(roll)
            box1.isHidden = false
            box2.isHidden = true
            box3.isHidden = true
            box4.isHidden = true
            box5.isHidden = true
            box6.isHidden = true
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
