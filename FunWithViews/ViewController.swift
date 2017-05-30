//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var box1: UIView!
    @IBOutlet weak var box2: UIView!
    @IBOutlet weak var box3: UIView!
    @IBOutlet weak var box4: UIView!
    @IBOutlet weak var box5: UIView!
    @IBOutlet weak var box6: UIView!
    @IBOutlet weak var box7: UIView!
    @IBOutlet weak var colorBox1: UILabel!
    @IBOutlet weak var colorBox2: UILabel!
    @IBOutlet weak var colorBox3: UILabel!
    @IBOutlet weak var colorBox4: UILabel!
    @IBOutlet weak var colorBox5: UILabel!
    @IBOutlet weak var colorBox6: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        box1.isHidden = true
        box2.isHidden = true
        box3.isHidden = true
        box4.isHidden = true
        box5.isHidden = true
        box6.isHidden = true
        box7.isHidden = true
        colorBox1.isHidden = true
        colorBox2.isHidden = true
        colorBox3.isHidden = true
        colorBox4.isHidden = true
        colorBox5.isHidden = true
        colorBox6.isHidden = true
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        var randomNumber = randomDiceRoll()
        print("The random number is \(randomNumber).")
        blackBoxAppear(numberCast: randomNumber)
        updateLabelWithRoll(numberCast: randomNumber)
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    // Takes the number of the rolled die and makes the approp. box appear
    func blackBoxAppear(numberCast: Int) {
        print("\(numberCast) boxes should appear.")
        switch numberCast {
        case 1:
            box4.isHidden = false
            box1.isHidden = true
            box2.isHidden = true
            box3.isHidden = true
            box5.isHidden = true
            box6.isHidden = true
            box7.isHidden = true
        case 2:
            box1.isHidden = false
            box7.isHidden = false
            box2.isHidden = true
            box3.isHidden = true
            box4.isHidden = true
            box5.isHidden = true
            box6.isHidden = true
        case 3:
            box3.isHidden = false
            box4.isHidden = false
            box5.isHidden = false
            box1.isHidden = true
            box2.isHidden = true
            box6.isHidden = true
            box7.isHidden = true
        case 4:
            box1.isHidden = false
            box3.isHidden = false
            box5.isHidden = false
            box7.isHidden = false
            box2.isHidden = true
            box4.isHidden = true
            box6.isHidden = true
        case 5:
            box1.isHidden = false
            box3.isHidden = false
            box4.isHidden = false
            box5.isHidden = false
            box7.isHidden = false
            box2.isHidden = true
            box6.isHidden = true
        case 6:
            box1.isHidden = false
            box2.isHidden = false
            box3.isHidden = false
            box5.isHidden = false
            box6.isHidden = false
            box7.isHidden = false
            box4.isHidden = true
        default:
            break
        }
    }
    
    func updateLabelWithRoll(numberCast: Int) {

        let diceScore = String(numberCast)
        
        if colorBox1.isHidden {
            colorBox1.text = diceScore
            colorBox1.isHidden = false
        } else if colorBox2.isHidden {
            colorBox2.text = diceScore
            colorBox2.isHidden = false
        } else if colorBox3.isHidden {
            colorBox3.text = diceScore
            colorBox3.isHidden = false
        } else if colorBox4.isHidden {
            colorBox4.text = diceScore
            colorBox4.isHidden = false
        } else if colorBox5.isHidden {
            colorBox5.text = diceScore
            colorBox5.isHidden = false
        } else if colorBox6.isHidden {
            colorBox6.text = diceScore
            colorBox6.isHidden = false
        } else if 1 == 1 {
            viewDidLoad()
        }
    }

}
