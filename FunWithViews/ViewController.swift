//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var row1Col1: UIView!
    @IBOutlet weak var row1Col3: UIView!
    @IBOutlet weak var row2Col1: UIView!
    @IBOutlet weak var row2Col2: UIView!
    @IBOutlet weak var row2Col3: UIView!
    @IBOutlet weak var row3Col1: UIView!
    @IBOutlet weak var row3Col3: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var orangeLabel: UILabel!
    @IBOutlet weak var yellowLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var purpleLabel: UILabel!
    
    @IBOutlet weak var die: UIButton!
    var dieRollCount = 0;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        row1Col1.isHidden = true;
        row1Col3.isHidden = true;
        row2Col1.isHidden = true;
        row2Col2.isHidden = true;
        row2Col3.isHidden = true;
        row3Col1.isHidden = true;
        row3Col3.isHidden = true;
        
        redLabel.isHidden = true;
        orangeLabel.isHidden = true;
        yellowLabel.isHidden = true;
        greenLabel.isHidden = true;
        blueLabel.isHidden = true;
        purpleLabel.isHidden = true;
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        if (dieRollCount <= 6) {
            dieRollCount += 1;
        }
        
        let dieRoll = randomDiceRoll();
        updateDie(roll: dieRoll);
        updateScore(roll: dieRoll);
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    // update the dice pattern to match the random roll
    func updateDie(roll: Int) {
        switch roll {
        case 1:
            row2Col2.isHidden = false;
            row1Col1.isHidden = true;
            row1Col3.isHidden = true;
            row2Col1.isHidden = true;
            row2Col3.isHidden = true;
            row3Col1.isHidden = true;
            row3Col3.isHidden = true;
        case 2:
            row1Col1.isHidden = true;
            row1Col3.isHidden = false;
            row2Col1.isHidden = true;
            row2Col2.isHidden = true;
            row2Col3.isHidden = true;
            row3Col1.isHidden = false;
            row3Col3.isHidden = true;
        case 3:
            row1Col1.isHidden = true;
            row1Col3.isHidden = false;
            row2Col1.isHidden = true;
            row2Col2.isHidden = false;
            row2Col3.isHidden = true;
            row3Col1.isHidden = false;
            row3Col3.isHidden = true;
        case 4:
            row1Col1.isHidden = false;
            row1Col3.isHidden = false;
            row2Col1.isHidden = true;
            row2Col2.isHidden = true;
            row2Col3.isHidden = true;
            row3Col1.isHidden = false;
            row3Col3.isHidden = false;
        case 5:
            row1Col1.isHidden = false;
            row1Col3.isHidden = false;
            row2Col1.isHidden = true;
            row2Col2.isHidden = false;
            row2Col3.isHidden = true;
            row3Col1.isHidden = false;
            row3Col3.isHidden = false;
        case 6:
            row1Col1.isHidden = false;
            row1Col3.isHidden = false;
            row2Col1.isHidden = false;
            row2Col2.isHidden = true;
            row2Col3.isHidden = false;
            row3Col1.isHidden = false;
            row3Col3.isHidden = false;
        default:
            print("Error");
        }
    }
    
    // update the score label to match the random roll
    func updateScore(roll: Int) {
        switch dieRollCount {
        case 1:
            redLabel.isHidden = false;
            redLabel.text = ("\(roll)");
        case 2:
            orangeLabel.isHidden = false;
            orangeLabel.text = ("\(roll)");
        case 3:
            yellowLabel.isHidden = false;
            yellowLabel.text = ("\(roll)");
        case 4:
            greenLabel.isHidden = false;
            greenLabel.text = ("\(roll)");
        case 5:
            blueLabel.isHidden = false;
            blueLabel.text = ("\(roll)");
        case 6:
            purpleLabel.isHidden = false;
            purpleLabel.text = ("\(roll)");
            
            die.isEnabled = false;
            die.isHidden = true;
        default:
            print("Bad roll");
        }
    }
}
