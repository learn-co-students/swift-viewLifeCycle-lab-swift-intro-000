//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var blackBox1: UIView!
    @IBOutlet weak var blackBox2: UIView!
    @IBOutlet weak var blackBox3: UIView!
    @IBOutlet weak var blackBox4: UIView!
    @IBOutlet weak var blackBox5: UIView!
    @IBOutlet weak var blackBox6: UIView!
    @IBOutlet weak var blackBox7: UIView!
    
    @IBOutlet weak var redBox: UIView!
    @IBOutlet weak var orangeBox: UIView!
    @IBOutlet weak var yellowBox: UIView!
    @IBOutlet weak var greenBox: UIView!
    @IBOutlet weak var blueBox: UIView!
    @IBOutlet weak var purpleBox: UIView!
    
    @IBOutlet weak var redBoxLabel: UILabel!
    @IBOutlet weak var yellowBoxLabel: UILabel!
    @IBOutlet weak var orangeBoxLabel: UILabel!
    @IBOutlet weak var greenBoxLabel: UILabel!
    @IBOutlet weak var blueBoxLabel: UILabel!
    @IBOutlet weak var purpleBoxLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideBlackBoxes()
        hideColoredBoxes()
    }
    
    
    
    func updateScore(roll: Int) {
        
        if redBox.isHidden == true {
            redBox.isHidden = false
            redBoxLabel.text = "\(roll)"
        } else if orangeBox.isHidden == true {
            orangeBox.isHidden = false
            orangeBoxLabel.text = "\(roll)"
        } else if yellowBox.isHidden == true {
            yellowBox.isHidden = false
            yellowBoxLabel.text = "\(roll)"
        } else if greenBox.isHidden == true {
            greenBox.isHidden = false
            greenBoxLabel.text = "\(roll)"
        } else if blueBox.isHidden == true {
            blueBox.isHidden = false
            blueBoxLabel.text = "\(roll)"
        } else if purpleBox.isHidden == true {
            purpleBox.isHidden = false
            purpleBoxLabel.text = "\(roll)"
        } else {
            hideColoredBoxes()
            hideBlackBoxes()
        }
        tt
    }
    
    func rearrangeDie(roll: Int) {
        
        hideBlackBoxes()
        
        switch roll {
        case 1:
            blackBox4.isHidden = false
            
        case 2:
           blackBox1.isHidden = false
           blackBox7.isHidden = false
            
        case 3:
           blackBox1.isHidden = false
           blackBox4.isHidden = false
           blackBox7.isHidden = false

        case 4:
           blackBox1.isHidden = false
           blackBox3.isHidden = false
           blackBox5.isHidden = false
           blackBox7.isHidden = false
 
        case 5:
           blackBox1.isHidden = false
           blackBox3.isHidden = false
           blackBox5.isHidden = false
           blackBox7.isHidden = false
           blackBox4.isHidden = false
            
        case 6:
           blackBox1.isHidden = false
           blackBox2.isHidden = false
           blackBox3.isHidden = false
           blackBox5.isHidden = false
           blackBox7.isHidden = false
           blackBox6.isHidden = false

        default:
            hideBlackBoxes()
        }
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        
        let randomNumber = randomDiceRoll()
        
        rearrangeDie(roll: randomNumber)
        updateScore(roll: randomNumber)
        
    
        
    }
    
    
    
    
    func hideBlackBoxes() {
        
        blackBox1.isHidden = true
        blackBox2.isHidden = true
        blackBox3.isHidden = true
        blackBox4.isHidden = true
        blackBox5.isHidden = true
        blackBox6.isHidden = true
        blackBox7.isHidden = true
        
    }
    
    func hideColoredBoxes() {
        
        redBox.isHidden = true
        orangeBox.isHidden = true
        yellowBox.isHidden = true
        greenBox.isHidden = true
        blueBox.isHidden = true
        purpleBox.isHidden = true

    }
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
