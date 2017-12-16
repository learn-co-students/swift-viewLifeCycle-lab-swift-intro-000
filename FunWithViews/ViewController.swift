//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var square1: UIView!
    @IBOutlet weak var square2: UIView!
    @IBOutlet weak var square3: UIView!
    @IBOutlet weak var square4: UIView!
    @IBOutlet weak var square5: UIView!
    @IBOutlet weak var square6: UIView!
    @IBOutlet weak var square7: UIView!
    
    @IBOutlet weak var history1: UILabel!
    @IBOutlet weak var history2: UILabel!
    @IBOutlet weak var history3: UILabel!
    @IBOutlet weak var history4: UILabel!
    @IBOutlet weak var history5: UILabel!
    @IBOutlet weak var history6: UILabel!
    
    var rollCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resetDice()
        
        resetRollHistory()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        if rollCount == 6 {
            rollCount = 0
            resetRollHistory()
            resetDice()

        } else {
            rollCount += 1
            
            let randomRoll = randomDiceRoll();
            print("current roll ->", randomRoll, "on #", rollCount)
            updateLabelWithRoll(roll: randomRoll)
            
            switch randomRoll {
            case 1:
                setDiceOne();
            case 2:
                setDiceTwo();
            case 3:
                setDiceThree();
            case 4:
                setDiceFour();
            case 5:
                setDiceFive();
            case 6:
                setDiceSix();
            default: break;
                
            }
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if history1.isHidden {
            history1.text = diceScore
            history1.isHidden = false
        } else if history2.isHidden {
            history2.text = diceScore
            history2.isHidden = false
        } else if history3.isHidden {
            history3.text = diceScore
            history3.isHidden = false
        } else if history4.isHidden {
            history4.text = diceScore
            history4.isHidden = false
        } else if history5.isHidden {
            history5.text = diceScore
            history5.isHidden = false
        } else if history6.isHidden {
            history6.text = diceScore
            history6.isHidden = false
        }
    }
    
    func resetDice() -> Void {
        square1.isHidden = true
        square2.isHidden = true
        square3.isHidden = true
        square4.isHidden = true
        square5.isHidden = true
        square6.isHidden = true
        square7.isHidden = true
    }
    
    func resetRollHistory() -> Void {
        
        history1.isHidden = true
        history2.isHidden = true
        history3.isHidden = true
        history4.isHidden = true
        history5.isHidden = true
        history6.isHidden = true
    }
    
    func setDiceOne() -> Void {
        square1.isHidden = true;
        square2.isHidden = true;
        square3.isHidden = true;
        square4.isHidden = false;
        square5.isHidden = true;
        square6.isHidden = true;
        square7.isHidden = true;
    }
    
    func setDiceTwo() -> Void {
        square1.isHidden = false;
        square2.isHidden = true;
        square3.isHidden = true;
        square4.isHidden = true;
        square5.isHidden = true;
        square6.isHidden = true;
        square7.isHidden = false;
    }
    
    func setDiceThree() -> Void {
        square1.isHidden = false;
        square2.isHidden = true;
        square3.isHidden = true;
        square4.isHidden = false;
        square5.isHidden = true;
        square6.isHidden = true;
        square7.isHidden = false;
    }

    func setDiceFour() -> Void {
        square1.isHidden = false;
        square2.isHidden = false;
        square3.isHidden = true;
        square4.isHidden = true;
        square5.isHidden = true;
        square6.isHidden = false;
        square7.isHidden = false;
    }
    
    func setDiceFive() -> Void {
        square1.isHidden = false;
        square2.isHidden = false;
        square3.isHidden = true;
        square4.isHidden = false;
        square5.isHidden = true;
        square6.isHidden = false;
        square7.isHidden = false;
    }
    
    func setDiceSix() -> Void {
        square1.isHidden = false;
        square2.isHidden = false;
        square3.isHidden = false;
        square4.isHidden = true;
        square5.isHidden = false;
        square6.isHidden = false;
        square7.isHidden = false;
    }

}
