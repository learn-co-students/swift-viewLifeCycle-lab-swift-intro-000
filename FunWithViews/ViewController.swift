//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var rolls = 0
    
    // the die score and their labels
    @IBOutlet weak var Die1: UIView!
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Die2: UIView!
    @IBOutlet weak var Label2: UILabel!
    @IBOutlet weak var Die3: UIView!
    @IBOutlet weak var Label3: UILabel!
    @IBOutlet weak var Die4: UIView!
    @IBOutlet weak var Label4: UILabel!
    @IBOutlet weak var Die5: UIView!
    @IBOutlet weak var Label5: UILabel!
    @IBOutlet weak var Die6: UIView!
    @IBOutlet weak var Label6: UILabel!
    
    // the die representation
    @IBOutlet weak var UpperLeft: UIView!
    @IBOutlet weak var MiddleLeft: UIView!
    @IBOutlet weak var BottomLeft: UIView!
    @IBOutlet weak var Middle: UIView!
    @IBOutlet weak var UpperRight: UIView!
    @IBOutlet weak var MiddleRight: UIView!
    @IBOutlet weak var BottomRight: UIView!
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        // need to connect this to the roll
        print("the die was called")
        rolls = rolls + 1
        let roll = randomDiceRoll()
        displaytheScore(roll: roll, rolls: rolls)
        displayTheRoll(roll: roll)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initial board score
        Die1.isHidden = true
        Label1.isHidden = true
        Die2.isHidden = true
        Label2.isHidden = true
        Die3.isHidden = true
        Label3.isHidden = true
        Die4.isHidden = true
        Label4.isHidden = true
        Die5.isHidden = true
        Label5.isHidden = true
        Die6.isHidden = true
        Label6.isHidden = true
        
        // initial roll = none
        UpperLeft.isHidden = true
        MiddleLeft.isHidden = true
        BottomLeft.isHidden = true
        Middle.isHidden = true
        UpperRight.isHidden = true
        MiddleRight.isHidden = true
        BottomRight.isHidden = true
    }
    
//    @IBAction func dieButtonTapped(_ sender: AnyObject) {
//        // need to connect this to the roll
//        print("the die was called")
//        rolls = rolls + 1
//        let roll = randomDiceRoll()
//        displaytheScore(roll: roll, rolls: rolls)
//        displayTheRoll(roll: roll)
//
//    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func displayTheRoll(roll: Int){
        // changes the display
        if roll == 1{
            Middle.isHidden = false
            UpperLeft.isHidden = true
            MiddleLeft.isHidden = true
            BottomLeft.isHidden = true
            UpperRight.isHidden = true
            MiddleRight.isHidden = true
            BottomRight.isHidden = true
        }
        else if roll == 2{
            Middle.isHidden = true
            UpperLeft.isHidden = false
            MiddleLeft.isHidden = true
            BottomLeft.isHidden = true
            UpperRight.isHidden = true
            MiddleRight.isHidden = true
            BottomRight.isHidden = false
        }
        else if roll == 3{
            Middle.isHidden = false
            UpperLeft.isHidden = false
            MiddleLeft.isHidden = true
            BottomLeft.isHidden = true
            UpperRight.isHidden = true
            MiddleRight.isHidden = true
            BottomRight.isHidden = false
        }
        else if roll == 4{
            Middle.isHidden = true
            UpperLeft.isHidden = false
            MiddleLeft.isHidden = true
            BottomLeft.isHidden = false
            UpperRight.isHidden = false
            MiddleRight.isHidden = true
            BottomRight.isHidden = false
        }
        else if roll == 5{
            Middle.isHidden = false
            UpperLeft.isHidden = false
            MiddleLeft.isHidden = true
            BottomLeft.isHidden = false
            UpperRight.isHidden = false
            MiddleRight.isHidden = true
            BottomRight.isHidden = false
        }
        else{
            Middle.isHidden = true
            UpperLeft.isHidden = false
            MiddleLeft.isHidden = false
            BottomLeft.isHidden = false
            UpperRight.isHidden = false
            MiddleRight.isHidden = false
            BottomRight.isHidden = false
        }
    }
    
    // function to make a new box appear and change the label
    func displaytheScore(roll: Int, rolls: Int){
        if rolls == 1{
            Die1.isHidden = true
            Label1.text = String(roll)
            Label1.isHidden = true
        }
        else if rolls == 2{
            Die2.isHidden = true
            Label2.text = String(roll)
            Label2.isHidden = true
        }
        else if rolls == 3{
            Die3.isHidden = true
            Label3.text = String(roll)
            Label3.isHidden = true
        }
        else if rolls == 4{
            Die4.isHidden = true
            Label4.text = String(roll)
            Label4.isHidden = true
        }
        else if rolls == 5{
            Die5.isHidden = true
            Label5.text = String(roll)
            Label5.isHidden = true
        }
        else if rolls == 6{
            Die6.isHidden = true
            Label6.text = String(roll)
            Label6.isHidden = true
        }
        else{
            Die6.isHidden = true
        }

}
}
