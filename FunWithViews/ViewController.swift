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
        labelOne.isHidden = true
        labelTwo.isHidden = true
        labelThree.isHidden = true
        labelFour.isHidden = true
        labelFive.isHidden = true
        labelSix.isHidden = true
        //???there's gotta be a way to generate this code
        box1.isHidden = true
        box2.isHidden = true
        box3.isHidden = true
        box4.isHidden = true
        box5.isHidden = true
        box6.isHidden = true
        box7.isHidden = true
        
        c1.isHidden = true
        c2.isHidden = true
        c3.isHidden = true
        c4.isHidden = true
        c5.isHidden = true
        c6.isHidden = true
        super.viewDidLoad()
    }
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    
    @IBOutlet weak var box1: UIView!
    @IBOutlet weak var box2: UIView!
    @IBOutlet weak var box3: UIView!
    @IBOutlet weak var box4: UIView!
    @IBOutlet weak var box5: UIView!
    @IBOutlet weak var box6: UIView!
    @IBOutlet weak var box7: UIView!
    
    //colored boxes
    @IBOutlet weak var c1: UIView!
    
    @IBOutlet weak var c2: UIView!
    @IBOutlet weak var c3: UIView!
    @IBOutlet weak var c4: UIView!
    @IBOutlet weak var c5: UIView!
    @IBOutlet weak var c6: UIView!
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        var rolldie = randomDiceRoll()
//        print(rolldie)
        showRoll(rolldie)
        showDie(rolldie)
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func hideBoxes(){
        box1.isHidden = true
        box2.isHidden = true
        box3.isHidden = true
        box4.isHidden = true
        box5.isHidden = true
        box6.isHidden = true
        box7.isHidden = true
    }
    
    func resetRolls() {
        c1.isHidden = true
        c2.isHidden = true
        c3.isHidden = true
        c4.isHidden = true
        c5.isHidden = true
        c6.isHidden = true
        
        labelOne.isHidden = true
        labelTwo.isHidden = true
        labelThree.isHidden = true
        labelFour.isHidden = true
        labelFive.isHidden = true
        labelSix.isHidden = true
    }
    
    //show roll in black squares
    func showDie(_ roll: Int){
        hideBoxes()
        if roll == 1 {
            box4.isHidden = false
        } else if roll == 2 {
            box1.isHidden = false
            box7.isHidden = false
        } else if roll == 3 {
            box4.isHidden = false
            box3.isHidden = false
            box5.isHidden = false
        } else if roll == 4 {
            box1.isHidden = false
            box3.isHidden = false
            box5.isHidden = false
            box7.isHidden = false
        }   else if roll == 5 {
            box1.isHidden = false
            box3.isHidden = false
            box5.isHidden = false
            box7.isHidden = false
            box4.isHidden = false
        } else if roll == 6 {
            box1.isHidden = false
            box3.isHidden = false
            box5.isHidden = false
            box7.isHidden = false
            box2.isHidden = false
            box6.isHidden = false
        }
    }
    
    //show the roll number
    func showRoll (_ roll: Int){
        let diceScore = String(roll)
        print(diceScore)
        //if can't see a label, change the first one and show the score
        if labelOne.isHidden {
            c1.isHidden = false
            labelOne.text = diceScore
            labelOne.isHidden = false
        } else if labelTwo.isHidden {
            c2.isHidden = false
            labelTwo.text = diceScore
            labelTwo.isHidden = false
        } else if labelThree.isHidden {
            c3.isHidden = false
            labelThree.text = diceScore
            labelThree.isHidden = false
        } else if labelFour.isHidden {
            c4.isHidden = false
            labelFour.text = diceScore
            labelFour.isHidden = false
        } else if labelFive.isHidden {
            c5.isHidden = false
            labelFive.text = diceScore
            labelFive.isHidden = false
        } else if labelSix.isHidden {
            c6.isHidden = false
            labelSix.text = diceScore
            labelSix.isHidden = false
        } else {
            resetRolls()
            c1.isHidden = false
            labelOne.text = diceScore
            labelOne.isHidden = false
        }
        
    }
    
}
