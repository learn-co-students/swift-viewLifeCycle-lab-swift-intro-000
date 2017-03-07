//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Dice1: UIView!
    @IBOutlet weak var Dice2: UIView!
    @IBOutlet weak var Dice3: UIView!
    @IBOutlet weak var Dice4: UIView!
    @IBOutlet weak var Dice5: UIView!
    @IBOutlet weak var Dice6: UIView!
    @IBOutlet weak var Dice7: UIView!
    
    @IBOutlet weak var history1: UILabel!
    @IBOutlet weak var history2: UILabel!
    @IBOutlet weak var history3: UILabel!
    @IBOutlet weak var history4: UILabel!
    @IBOutlet weak var history5: UILabel!
    @IBOutlet weak var history6: UILabel!
    
    override func viewDidLoad() {
        
        Dice1.isHidden = true;
        Dice2.isHidden = true;
        Dice3.isHidden = true;
        Dice4.isHidden = true;
        Dice5.isHidden = true;
        Dice6.isHidden = true;
        Dice7.isHidden = true;
        
        history1.isHidden = true;
        history2.isHidden = true;
        history3.isHidden = true;
        history4.isHidden = true;
        history5.isHidden = true;
        history6.isHidden = true;
        
        super.viewDidLoad()
    }
    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        
        let roll:Int = randomDiceRoll()
        
        rearrangeDie(roll: roll);
        updateHistory(roll: roll);
        
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func updateHistory(roll: Int) {
        
        if (history1.isHidden) {
            history1.isHidden = false;
            history1.text = String(roll);
        }
        else if (history2.isHidden) {
            history2.isHidden = false;
            history2.text = String(roll);
        }
        else if (history3.isHidden) {
            history3.isHidden = false;
            history3.text = String(roll);
        }
        else if (history4.isHidden) {
            history4.isHidden = false;
            history4.text = String(roll);
        }
        else if (history5.isHidden) {
            history5.isHidden = false;
            history5.text = String(roll);
        }
        else if (history6.isHidden) {
            history6.isHidden = false;
            history6.text = String(roll);
        }
        else {
            history2.isHidden = true;
            history3.isHidden = true;
            history4.isHidden = true;
            history5.isHidden = true;
            history6.isHidden = true;
            
            history1.text = String(roll);
        }
    }
    
    func rearrangeDie(roll: Int) {
        
        Dice1.isHidden = true;
        Dice2.isHidden = true;
        Dice3.isHidden = true;
        Dice4.isHidden = true;
        Dice5.isHidden = true;
        Dice6.isHidden = true;
        Dice7.isHidden = true;
        
        switch roll {
        case 1:
            Dice4.isHidden = false;
            
            break
        case 2:
            Dice2.isHidden = false;
            Dice6.isHidden = false;
            
            break
        case 3:
            Dice2.isHidden = false;
            Dice4.isHidden = false;
            Dice6.isHidden = false;
            
            break
        case 4:
            Dice1.isHidden = false;
            Dice2.isHidden = false;
            Dice6.isHidden = false;
            Dice7.isHidden = false;
            
            break
        case 5:
            Dice1.isHidden = false;
            Dice2.isHidden = false;
            Dice4.isHidden = false;
            Dice6.isHidden = false;
            Dice7.isHidden = false;
            
            break
        case 6:
            Dice1.isHidden = false;
            Dice2.isHidden = false;
            Dice3.isHidden = false;
            Dice5.isHidden = false;
            Dice6.isHidden = false;
            Dice7.isHidden = false;
            
            break
        default:
            break
        }
    }

}
